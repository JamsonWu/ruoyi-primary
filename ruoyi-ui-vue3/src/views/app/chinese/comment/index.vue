<template>
  <div class="app-container">
    <el-form
      :model="queryParams"
      ref="queryForm"
      :inline="true"
      v-show="showSearch"
      label-width="68px"
    >
      <el-form-item label="年级" prop="grade">
        <el-select
          v-model="queryParams.grade"
          placeholder="请选择年级"
          clearable
          style="width: 240px"
        >
          <el-option
            v-for="dict in app_primary_grade"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="学期" prop="term">
        <el-select
          v-model="queryParams.term"
          placeholder="请选择学期"
          clearable
          style="width: 240px"
        >
          <el-option
            v-for="dict in app_term"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="词语" prop="word">
        <el-input
          v-model="queryParams.word"
          placeholder="请输入词语"
          clearable
          @keyup.enter.native="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item label="拼音" prop="pinyin">
        <el-input
          v-model="queryParams.pinyin"
          placeholder="请输入拼音"
          clearable
          @keyup.enter.native="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item label="注释" prop="comment">
        <el-input
          v-model="queryParams.comment"
          placeholder="请输入注释"
          clearable
          @keyup.enter.native="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item>
        <el-button
          type="primary"
          icon="search"
          size="mini"
          @click="handleQuery"
          >搜索</el-button
        >
        <el-button icon="refresh" size="mini" @click="resetQuery"
          >重置</el-button
        >
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['app:comment:add']"
          >新增</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['app:comment:edit']"
          >修改</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['app:comment:remove']"
          >删除</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['app:comment:export']"
          >导出</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <el-dropdown>
          <el-button type="primary">
            打印<el-icon class="el-icon--right"><arrow-down /></el-icon>
          </el-button>
          <template #dropdown>
            <el-dropdown-menu>
              <el-dropdown-item @click="handlePrint(1)"
                >词语注释表</el-dropdown-item
              >
              <el-dropdown-item @click="handlePrint(2)"
                >看注释写词语</el-dropdown-item
              >
            </el-dropdown-menu>
          </template>
        </el-dropdown>
      </el-col>
      <right-toolbar
        v-model:showSearch="showSearch"
        @queryTable="getList"
      ></right-toolbar>
    </el-row>

    <el-table
      v-loading="loading"
      :data="commentList"
      @selection-change="handleSelectionChange"
    >
      <el-table-column type="selection" width="55" align="center" />
      <!-- <el-table-column label="${comment}" align="center" prop="id" /> -->
      <el-table-column label="年级" align="center" prop="grade">
        <template #default="scope">
          <!-- <dict-tag :options="app_primary_grade" :value="scope.row.grade" /> -->
          {{gradeTermUnitLessonFormat(scope.row)}}
        </template>
      </el-table-column>
      <!-- <el-table-column label="学期" align="center" prop="term">
        <template #default="scope">
          <dict-tag :options="app_term" :value="scope.row.term" />
        </template>
      </el-table-column> -->
      <el-table-column label="词语" align="center" prop="word" />
      <el-table-column label="拼音" align="center" prop="pinyin" />
      <el-table-column label="注释" align="center" prop="comment" />
      <el-table-column
        label="操作"
        align="center"
        class-name="small-padding fixed-width"
      >
        <template #default="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['app:comment:edit']"
            >修改</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['app:comment:remove']"
            >删除</el-button
          >
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total > 0"
      :total="total"
      v-model:page="queryParams.pageNum"
      v-model:limit="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改词语解释对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" :close-on-click-modal="false" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="年级" prop="grade">
          <el-select v-model="form.grade" placeholder="请选择年级">
            <el-option
              v-for="dict in app_primary_grade"
              :key="dict.value"
              :label="dict.label"
              :value="parseInt(dict.value)"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="学期" prop="term">
          <el-select v-model="form.term" placeholder="请选择学期">
            <el-option
              v-for="dict in app_term"
              :key="dict.value"
              :label="dict.label"
              :value="parseInt(dict.value)"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="词语" prop="word">
          <!-- <el-input v-model="form.word" placeholder="请输入词语" /> -->
          <el-input v-model="form.word" type="textarea" :rows="10" />
        </el-form-item>
        <el-form-item label="拼音" prop="pinyin">
          <el-input v-model="form.pinyin" placeholder="请输入拼音" />
        </el-form-item>
        <el-form-item label="注释" prop="comment">
          <el-input v-model="form.comment" placeholder="请输入注释" />
        </el-form-item>
      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm">确 定</el-button>
          <el-button @click="cancel">取 消</el-button>
        </div>
      </template>
    </el-dialog>
  </div>
</template>

<script>
import {
  listComment,
  getComment,
  delComment,
  addComment,
  updateComment,
} from "@/api/app/comment";
import { pinyin } from "pinyin-pro";
import AppBase from "../../app";
export default {
  mixins: [AppBase],
  name: "Comment",
  dicts: ["app_primary_grade", "app_term"],
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 词语解释表格数据
      commentList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 50,
        grade: null,
        term: null,
        word: null,
        pinyin: null,
        comment: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {},
      app_primary_grade: [],
      app_term: [],
    };
  },
  created() {
    this.getList();
    this.getDictData(["app_primary_grade", "app_term"]);
  },
  methods: {
    /** 查询词语解释列表 */
    getList() {
      this.loading = true;
      listComment(this.queryParams).then((response) => {
        this.commentList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        id: null,
        grade: null,
        term: null,
        word: null,
        pinyin: null,
        comment: null,
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map((item) => item.id);
      this.single = selection.length !== 1;
      this.multiple = !selection.length;
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加词语解释";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids;
      getComment(id).then((response) => {
        this.form = response.data;
        this.open = true;
        this.title = "修改词语解释";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate((valid) => {
        if (valid) {
          if (this.form.id != null) {
            updateComment(this.form).then((response) => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            const data = this.form.word.trim().split(/\n|\n\n/);
            data.forEach(async (p) => {
              const tmp = p ? p.trim() : null;
              if (tmp) {
                const obj = tmp.replace("\n", "");
                const splitChar = tmp.indexOf('：') > 0 ?"：":":";
                const tmpArr = obj.split(splitChar);
                if ((tmpArr.length = 2)) {
                  const word = tmpArr[0].trim();
                  const comment = tmpArr[1].trim();
                  const py = pinyin(word);
                  await addComment({
                    grade: this.form.grade,
                    term: this.form.term,
                    word: word,
                    pinyin: py,
                    comment: comment,
                  }).then((response) => {});
                }
              }
            });

            this.$modal.msgSuccess("新增成功");
            this.open = false;
            this.getList();
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal
        .confirm('是否确认删除词语解释编号为"' + ids + '"的数据项？')
        .then(function () {
          return delComment(ids);
        })
        .then(() => {
          this.getList();
          this.$modal.msgSuccess("删除成功");
        })
        .catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download(
        "app/comment/export",
        {
          ...this.queryParams,
        },
        `comment_${new Date().getTime()}.xlsx`
      );
    },
    handlePrint(printType) {
      let printTypeName = "";
      if (printType == 1) {
        printTypeName = "词语注释表"
      }
      else if (printType == 2) {
        printTypeName = "看注释写词语"
      }
 
      const queryParams = { ...this.queryParams, pageNum: 1, pageSize: 100000 };
      // 导出PDF,用于书写
      this.download(
        "app/comment/pdf",
        {
          ...queryParams,
          printType: printType,
        },
        `${printTypeName}_${this.parseTime(new Date(), "{y}{m}{d}{h}{i}{s}")}.pdf`
      );
    },
  },
};
</script>
