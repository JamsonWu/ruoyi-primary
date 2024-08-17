<template>
  <div class="app-container">
    <el-form
      :model="queryParams"
      ref="queryForm"
      :inline="true"
      v-show="showSearch"
      label-width="68px"
    >
      <el-form-item label="单词" prop="word">
        <el-input
          v-model="queryParams.word"
          placeholder="请输入单词"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item label="发音" prop="pronounce">
        <el-input
          v-model="queryParams.pronounce"
          placeholder="请输入发音"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item label="中文" prop="chinese">
        <el-input
          v-model="queryParams.chinese"
          placeholder="请输入中文"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item label="单词分类" prop="wordType">
        <el-select
          v-model="queryParams.wordType"
          placeholder="请选择单词分类"
          clearable
          style="width: 240px"
        >
          <el-option
            v-for="dict in app_english_wordtype"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="序号" prop="sortNo">
        <el-input
          v-model="queryParams.sortNo"
          placeholder="请输入序号"
          clearable
          @keyup.enter="handleQuery"
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
          v-hasPermi="['app:pronounce:add']"
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
          v-hasPermi="['app:pronounce:edit']"
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
          v-hasPermi="['app:pronounce:remove']"
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
          v-hasPermi="['app:pronounce:export']"
          >导出</el-button
        >
      </el-col>
      <right-toolbar
        v-model:showSearch="showSearch"
        @queryTable="getList"
      ></right-toolbar>
    </el-row>

    <el-table
      v-loading="loading"
      :data="pronounceList"
      @selection-change="handleSelectionChange"
    >
      <el-table-column type="selection" width="55" align="center" />
      <!-- <el-table-column label="" align="center" prop="id" /> -->
      <el-table-column label="单词" align="center" prop="word" />
      <el-table-column label="发音" align="center" prop="pronounce" />
      <el-table-column label="中文" align="center" prop="chinese" />
      <el-table-column label="单词分类" align="center" prop="wordType">
        <template #default="scope">
          <dict-tag
            :options="app_english_wordtype"
            :value="scope.row.wordType"
          />
        </template>
      </el-table-column>
      <!-- <el-table-column label="序号" align="center" prop="sortNo" />
      <el-table-column
        label="操作"
        align="center"
        class-name="small-padding fixed-width"
      >
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['app:pronounce:edit']"
            >修改</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['app:pronounce:remove']"
            >删除</el-button
          >
        </template>
      </el-table-column> -->
    </el-table>

    <pagination
      v-show="total > 0"
      :total="total"
      v-model:page="queryParams.pageNum"
      v-model:limit="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改单词发音对照对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" :close-on-click-modal="false" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="单词" prop="word">
          <el-input
            v-if="form.id"
            v-model="form.word"
            placeholder="请输入单词"
          />
          <el-input
            v-else
            v-model="form.word"
            placeholder="单词格式：单词 /音标/ 中文;多个单词要换行;一次可导入多个单词"
            type="textarea"
            :rows="10"
          />
        </el-form-item>
        <el-form-item label="发音" prop="pronounce">
          <el-input v-model="form.pronounce" placeholder="请输入发音" />
        </el-form-item>
        <el-form-item label="中文" prop="chinese">
          <el-input v-model="form.chinese" placeholder="请输入中文" />
        </el-form-item>
        <el-form-item label="单词分类" prop="wordType">
          <el-select v-model="form.wordType" placeholder="请选择单词分类">
            <el-option
              v-for="dict in app_english_wordtype"
              :key="dict.value"
              :label="dict.label"
              :value="parseInt(dict.value)"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="序号" prop="sortNo">
          <el-input v-model="form.sortNo" placeholder="请输入序号" />
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
  listPronounce,
  getPronounce,
  delPronounce,
  addPronounce,
  updatePronounce,
} from "@/api/app/pronounce";
import { getDicts } from "@/api/system/dict/data";
export default {
  name: "Pronounce",
  dicts: ["app_english_wordtype"],
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
      // 单词发音对照表格数据
      pronounceList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        word: null,
        pronounce: null,
        chinese: null,
        wordType: null,
        sortNo: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        word: [{ required: true, message: "单词不能为空", trigger: "blur" }],
        pronounce: [
          { required: true, message: "发音不能为空", trigger: "blur" },
        ],
        chinese: [{ required: true, message: "中文不能为空", trigger: "blur" }],
      },
      app_english_wordtype: [],
    };
  },
  created() {
    this.getList();

    getDicts("app_english_wordtype").then((resp) => {
      this.app_english_wordtype = resp.data.map((p) => ({
        label: p.dictLabel,
        value: p.dictValue,
        elTagType: p.listClass,
        elTagClass: p.cssClass,
      }));
    });
  },
  methods: {
    /** 查询单词发音对照列表 */
    getList() {
      this.loading = true;
      listPronounce(this.queryParams).then((response) => {
        this.pronounceList = response.rows;
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
        word: null,
        pronounce: null,
        chinese: null,
        wordType: null,
        sortNo: null,
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
      this.title = "添加单词发音对照";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids;
      getPronounce(id).then((response) => {
        this.form = response.data;
        this.open = true;
        this.title = "修改单词发音对照";
      });
    },
    /** 提交按钮 */
    submitForm() {
      const regWord = /^([^/]*)(\/[^/]*\/)([^/]*)$/;
      const regSplit = /[\n]{1,2}/; //可能出现1个或2个的换行符
      const words = this.form.word.split(regSplit);
      let wordType = "";
      let sortNo = 1;
      const wordListObj = {};
      if (!this.form.id) {
        // 新增处理
        for (let word of words) {
          if (!regWord.test(word)) {
            // 说明是类别
            const wordTypeObj = this.app_english_wordtype.find(
              (p) => p.label == word
            );
            if (wordTypeObj) {
              wordType = wordTypeObj.value;
            }
          } else {
            const wordArr = word.match(regWord);
            if (wordArr.length == 4) {
              const word = wordArr[1];
              const pronounce = wordArr[2];
              const chinese = wordArr[3].replace(/ /g, "");
              if (!this.form.wordType) {
                this.form.wordType = wordType;
              }
              if (!this.form.chinese) {
                this.form.chinese = chinese;
              }
              if (!this.form.pronounce) {
                this.form.pronounce = pronounce;
              }
              wordListObj[word] = {
                word: word,
                pronounce: pronounce,
                chinese: chinese,
                wordType: wordType,
                sortNo: sortNo++,
              };
            }
          }
        }
      }

      this.$refs["form"].validate((valid) => {
        if (valid) {
          if (this.form.id != null) {
            updatePronounce(this.form).then((response) => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            Object.keys(wordListObj).forEach(async (p) => {
              const obj = wordListObj[p];
              await addPronounce(obj).then((response) => {});
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
        .confirm('是否确认删除单词发音对照编号为"' + ids + '"的数据项？')
        .then(function () {
          return delPronounce(ids);
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
        "app/pronounce/export",
        {
          ...this.queryParams,
        },
        `pronounce_${new Date().getTime()}.xlsx`
      );
    },
  },
};
</script>
<style>
@media screen and (max-width: 800px) {
  .mb8 .el-col {
    padding-bottom: 5px !important;
  }
}
</style>
