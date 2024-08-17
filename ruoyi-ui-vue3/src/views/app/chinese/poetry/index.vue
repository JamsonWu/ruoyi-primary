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
      <el-form-item label="类别" prop="categoryId">
        <el-select
          v-model="queryParams.categoryId"
          placeholder="请选择类别"
          clearable
          style="width: 240px"
        >
          <el-option
            v-for="dict in app_chinese_poetry_category"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="标题" prop="title">
        <el-input
          v-model="queryParams.title"
          placeholder="请输入标题"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item label="内容" prop="content">
        <el-input
          v-model="queryParams.content"
          placeholder="请输入内容"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item label="朝代" prop="dynasty">
        <el-input
          v-model="queryParams.dynasty"
          placeholder="请输入朝代"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item label="作者" prop="author">
        <el-input
          v-model="queryParams.author"
          placeholder="请输入作者"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item label="拼音" prop="pinyin">
        <el-input
          v-model="queryParams.pinyin"
          placeholder="请输入拼音"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>

      <!-- <el-form-item label="背景" prop="background">
        <el-input
          v-model="queryParams.background"
          placeholder="请输入背景"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item> -->
      <el-form-item label="表达情感" prop="emotion">
        <el-input
          v-model="queryParams.emotion"
          placeholder="请输入表达情感"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item label="查询字" prop="wordSearch">
        <el-input
          v-model="queryParams.wordSearch"
          placeholder="请输入查询字"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>

      <el-form-item label="默写" prop="mustWrite">
        <el-select
          v-model="queryParams.mustWrite"
          placeholder="请选择"
          clearable
          style="width: 240px"
        >
          <el-option
            v-for="item in mustWriteOptions"
            :key="item.value"
            :label="item.label"
            :value="item.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="重点句" prop="isVip">
        <el-select
          v-model="queryParams.isVip"
          placeholder="请选择"
          clearable
          style="width: 240px"
        >
          <el-option
            v-for="item in mustWriteOptions"
            :key="item.value"
            :label="item.label"
            :value="item.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="search" size="mini" @click="handleQuery"
          >搜索</el-button
        >
        <el-button icon="refresh" size="mini" @click="resetQuery"
          >重置</el-button
        >
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <!-- <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['app:poetry:add']"
          >新增</el-button
        >
      </el-col> -->
      <!-- <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['app:poetry:edit']"
          >修改</el-button
        >
      </el-col> -->
      <!-- <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['app:poetry:remove']"
          >删除</el-button
        >
      </el-col> -->
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['app:poetry:export']"
          >导出</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <!-- <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handlePrint"
          v-hasPermi="['app:poetry:export']"
          >打印</el-button
        > -->
        <el-dropdown>
          <el-button type="primary">
            打印<el-icon class="el-icon--right"><arrow-down /></el-icon>
          </el-button>
          <template #dropdown>
            <el-dropdown-menu>
              <el-dropdown-item @click="handlePrint(1)"
                >默写材料</el-dropdown-item
              >
              <el-dropdown-item @click="handlePrint(2)"
                >练习材料</el-dropdown-item
              >
              <el-dropdown-item @click="handlePrint(3)"
                >复习材料</el-dropdown-item
              >
              <el-dropdown-item @click="handlePrint(4)"
                >诗词文言文积累填空(单)</el-dropdown-item
              >
              <el-dropdown-item @click="handlePrint(5)"
                >诗词文言文积累填空(双)</el-dropdown-item
              >
            </el-dropdown-menu>
          </template>
        </el-dropdown>
      </el-col>
      <!-- <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleAddPinyin"
          v-hasPermi="['app:poetry:export']"
          >加拼音</el-button
        >
      </el-col> -->
      <right-toolbar
        v-model:showSearch="showSearch"
        @queryTable="getList"
      ></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="poetryList">
      <!-- <el-table-column type="selection" width="55" align="center" /> -->
      <!-- <el-table-column label="${comment}" align="center" prop="id" /> -->
      <!-- <el-table-column label="年级" align="center" prop="grade">
        <template #default="scope">
          <dict-tag :options="app_primary_grade" :value="scope.row.grade"/>
        </template>
      </el-table-column>
      <el-table-column label="学期" align="center" prop="term">
        <template #default="scope">
          <dict-tag :options="app_term" :value="scope.row.term"/>
        </template>
      </el-table-column> -->
      <!-- <el-table-column label="类别" align="center" prop="categoryId">
        <template #default="scope">
          <dict-tag
            :options="app_chinese_poetry_category"
            :value="scope.row.categoryId"
          />
        </template>
      </el-table-column> -->
      <el-table-column label="年级.学期.单元" align="center" prop="grade">
        <template #default="scope">
          {{ getGradeAndTermName(scope.row) }} <br />
          {{ scope.row && scope.row.unit ? "第"+scope.row.unit + "单元" : "" }}
        </template>
      </el-table-column>
      <el-table-column label="标题" align="center" prop="title" />
      <!-- <el-table-column label="朝代" align="center" prop="dynasty" /> -->
      <el-table-column label="作者" align="center" prop="author">
        <template #default="scope">
          {{ scope.row.dynasty }} <br />
          {{ scope.row.author }}
        </template>
      </el-table-column>
      <el-table-column label="内容" align="center" prop="content" width="200" />
    
      <el-table-column label="注释" align="center" prop="comment" width="250" />
      <el-table-column
        label="译文"
        align="center"
        prop="translation"
        width="250"
      />
      <!-- <el-table-column label="分类1" align="center" prop="category1" /> -->
      <!--<el-table-column label="分类2" align="center" prop="category2" /> -->
      <!-- <el-table-column label="背景" align="center" prop="background" /> -->
      <!-- <el-table-column label="表达情感" align="center" prop="emotion" /> -->
      <!-- <el-table-column label="提问" align="center" prop="question" /> -->
      <el-table-column label="拼音" align="center" prop="pinyin" width="150" />
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
            v-hasPermi="['app:poetry:edit']"
            >设置</el-button>
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

    <!-- 添加或修改诗与词对话框 -->
    <el-dialog
      :title="title"
      v-model="open"
      width="500px"
      :close-on-click-modal="false"
      append-to-body
    >
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="年级" prop="grade">
          <el-select v-model="form.grade" placeholder="请选择年级" disabled>
            <el-option
              v-for="dict in app_primary_grade"
              :key="dict.value"
              :label="dict.label"
              :value="parseInt(dict.value)"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="学期" prop="term">
          <el-select v-model="form.term" placeholder="请选择学期" disabled>
            <el-option
              v-for="dict in app_term"
              :key="dict.value"
              :label="dict.label"
              :value="parseInt(dict.value)"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="标题" prop="title">
          <el-input v-model="form.title" placeholder="请输入标题" disabled />
        </el-form-item>
        <el-form-item label="作者" prop="author">
          <el-input v-model="form.author" placeholder="请输入作者" disabled />
        </el-form-item>
        <el-form-item label="内容">
          <el-input
            v-model="form.content"
            type="textarea"
            placeholder="请输入内容"
            :rows="3"
            disabled
          />
        </el-form-item>
        <el-form-item label="是重点句" prop="isVip" v-if="form.childId > 0">
          <el-switch v-model="form.isVip" class="drawer-switch" />
        </el-form-item>
        <el-form-item label="查询字" prop="wordSearch" v-if="form.childId > 0">
          <el-input v-model="form.wordSearch" placeholder="请输入查询字" />
        </el-form-item>
        <el-form-item label="整首默写" prop="isVip" v-if="!form.childId">
          <el-switch v-model="form.mustWrite" class="drawer-switch" />
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
  listPoetry,
  getPoetry,
  delPoetry,
  addPoetry,
  updatePoetry,
} from "@/api/app/poetry";
import { pinyin } from "pinyin-pro";
import AppBase from "../../app";
export default {
  mixins: [AppBase],
  name: "Poetry",
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
      // 诗与词表格数据
      poetryList: [],
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
        categoryId: null,
        title: null,
        dynasty: null,
        author: null,
        content: null,
        pinyin: null,
        comment: null,
        translation: null,
        wordSearch: null,
        isVip: null,
        background: null,
        emotion: null,
        question: null,
        mustWrite: null,
        orderByColumn: "sysId",
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {},
      app_chinese_poetry_category: [],
      app_primary_grade: [],
      app_term: [],
      mustWrite: null,
      mustWriteOptions: [
        {
          value: "",
          label: "全部",
        },
        {
          value: "1",
          label: "是",
        },
        {
          value: "0",
          label: "否",
        },
      ],
    };
  },
  created() {
    this.getList();
    this.getDictData([
      "app_primary_grade",
      "app_term",
      "app_chinese_poetry_category",
    ]);
  },
  methods: {
    handleAddPinyin() {
      this.queryParams.pageSize = 100;
      listPoetry(this.queryParams).then((response) => {
        this.poetryList = response.rows;
        this.poetryList.forEach(async (p) => {
          p.pinyin = pinyin(p.content);
          await updatePoetry(p).then((response) => {});
        });
        this.total = response.total;
        this.loading = false;
      });
    },
    /** 查询诗与词列表 */
    getList() {
      this.loading = true;
      // this.queryParams.mustWrite = this.mustWrite ? 1 : 0;
      listPoetry(this.queryParams).then((response) => {
        this.poetryList = response.rows;
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
        categoryId: null,
        title: null,
        dynasty: null,
        author: null,
        content: null,
        pinyin: null,
        comment: null,
        translation: null,
        wordSearch: null,
        isVip: null,
        background: null,
        emotion: null,
        question: null,
        childId: null,
        mustWrite: null,
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
      this.title = "添加诗与词";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids;
      this.form = JSON.parse(JSON.stringify(row));
      this.form.mustWrite = this.form.mustWrite == 1 ? true : false;
      this.form.isVip = this.form.isVip == 1 ? true : false;
      this.open = true;
      this.title = "修改设置";
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate((valid) => {
        if (valid) {
          if (this.form.id != null) {
            const form = { ...this.form };
            form.isVip = this.form.isVip ? 1 : 0;
            form.mustWrite = this.form.mustWrite ? 1 : 0;
            updatePoetry(form).then((response) => {
              this.$modal.msgSuccess("设置成功");
              this.open = false;
              this.getList();
            });
          } else {
            addPoetry(this.form).then((response) => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal
        .confirm('是否确认删除诗与词编号为"' + ids + '"的数据项？')
        .then(function () {
          return delPoetry(ids);
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
        "app/poetry/export",
        {
          ...this.queryParams,
        },
        `poetry_${new Date().getTime()}.xlsx`
      );
    },
    handlePrint(printType) {
      let printTypeName = "";
      if (printType == 1) {
        printTypeName = "语文默写材料"
      }
      else if (printType == 2) {
        printTypeName = "语文练习材料"
      }
      else if (printType == 3) {
        printTypeName = "语文复习材料"
      }
      else if (printType in [4,5]) {
        printTypeName = "语文填空题"
      }
      this.printType = printType;
      const queryParams = { ...this.queryParams, pageNum: 1, pageSize: 100000 };
      // 导出PDF,用于书写
      this.download(
        "app/poetry/pdf",
        {
          ...queryParams,
          mustWrite: printType == 1 ? 1 : null,
          printType: printType,
        },
        `${printTypeName}_${this.parseTime(new Date(), "{y}{m}{d}{h}{i}{s}")}.pdf`
      );
    },
  },
};
</script>
