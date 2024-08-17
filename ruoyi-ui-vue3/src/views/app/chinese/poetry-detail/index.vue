<template>
  <div class="app-container">
    <el-form
      :model="queryParams"
      ref="queryForm"
      size="small"
      :inline="true"
      v-show="showSearch"
      label-width="68px"
    >
      <el-form-item label="题目" prop="name">
        <el-input
          v-model="queryParams.name"
          placeholder="请输入题目"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
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
      <el-form-item label="单元" prop="unit">
        <el-select
          v-model="queryParams.unit"
          placeholder="请选择单元"
          clearable
          style="width: 240px"
        >
          <el-option
            v-for="dict in app_lesson_unit"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
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
      <el-form-item label="朝代" prop="dynasty">
        <el-input
          v-model="queryParams.dynasty"
          placeholder="请输入朝代"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item label="句子" prop="sentense">
        <el-input
          v-model="queryParams.sentense"
          placeholder="请输入句子"
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
      <el-form-item label="含义" prop="mean">
        <el-input
          v-model="queryParams.mean"
          placeholder="请输入含义"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item label="字词" prop="word">
        <el-input
          v-model="queryParams.word"
          placeholder="请输入字词"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item label="字词注释" prop="wordMean">
        <el-input
          v-model="queryParams.wordMean"
          placeholder="请输入字词注释"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item label="道理" prop="truth">
        <el-input
          v-model="queryParams.truth"
          placeholder="请输入道理"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item label="重点句" prop="isVip">
        <el-input
          v-model="queryParams.isVip"
          placeholder="请输入重点句"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item label="内容分类" prop="categoryId">
        <el-select
          v-model="queryParams.categoryId"
          placeholder="请选择内容分类"
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
      <el-form-item label="子类" prop="childCategoryId">
        <el-input
          v-model="queryParams.childCategoryId"
          placeholder="请输入子类"
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
          v-hasPermi="['app:detail:add']"
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
          v-hasPermi="['app:detail:edit']"
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
          v-hasPermi="['app:detail:remove']"
          >删除</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleImport"
          v-hasPermi="['app:detail:add']"
          >导入</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['app:detail:export']"
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
      :data="detailList"
      @selection-change="handleSelectionChange"
    >
      <el-table-column type="selection" width="55" align="center" />
      <!-- <el-table-column label="${comment}" align="center" prop="id" /> -->
      <el-table-column label="题目" align="center" prop="name" />
      <el-table-column
        label="题目字词含义"
        align="center"
        prop="titleWordMean"
      />
      <el-table-column label="年级" align="center" prop="grade">
        <template #default="scope">
          <dict-tag :options="app_primary_grade" :value="scope.row.grade" />
        </template>
      </el-table-column>
      <!-- <el-table-column label="学期" align="center" prop="term">
        <template #default="scope">
          <dict-tag :options="app_term" :value="scope.row.term" />
        </template>
      </el-table-column> -->
      <!-- <el-table-column label="单元" align="center" prop="unit">
        <template #default="scope">
          <dict-tag :options="app_lesson_unit" :value="scope.row.unit" />
        </template>
      </el-table-column> -->
      <el-table-column label="作者" align="center" prop="author" />
      <el-table-column label="朝代" align="center" prop="dynasty" />
      <el-table-column
        label="句子"
        align="center"
        prop="sentense"
        width="150px"
      />
      <!-- <el-table-column label="拼音" align="center" prop="pinyin" />
      <el-table-column label="含义" align="center" prop="mean" /> -->
      <!-- <el-table-column label="字词" align="center" prop="word" /> -->
      <el-table-column
        label="字词注释"
        align="center"
        prop="wordMean"
        width="320px"
      />
      <!-- <el-table-column label="道理" align="center" prop="truth" /> -->
      <el-table-column label="内容分类" align="center" prop="categoryId">
        <template #default="scope">
          <dict-tag
            :options="app_chinese_poetry_category"
            :value="scope.row.categoryId"
          />
        </template>
      </el-table-column>
      <!-- <el-table-column label="子类" align="center" prop="childCategoryId" /> -->
      <!-- <el-table-column
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
            v-hasPermi="['app:detail:edit']"
            >修改</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['app:detail:remove']"
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

    <!-- 添加或修改诗词明细对话框 -->
    <el-dialog
      :title="title"
      v-model="open"
      width="500px"
      :close-on-click-modal="false"
      append-to-body
    >
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="题目" prop="name">
          <el-input v-model="form.name" placeholder="请输入题目" />
        </el-form-item>
        <el-form-item label="题目字词" prop="titleWord">
          <el-input v-model="form.titleWord" placeholder="请输入题目字词" />
        </el-form-item>
        <el-form-item label="题目字词含义" prop="titleWordMean">
          <el-input
            v-model="form.titleWordMean"
            placeholder="请输入题目字词含义"
          />
        </el-form-item>
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
        <el-form-item label="单元" prop="unit">
          <el-select v-model="form.unit" placeholder="请选择单元">
            <el-option
              v-for="dict in app_lesson_unit"
              :key="dict.value"
              :label="dict.label"
              :value="parseInt(dict.value)"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="导入内容" v-if="isImport">
          <el-input
            v-model="importJson"
            placeholder="请输入导入内容"
            type="textarea"
            :rows="10"
          />
        </el-form-item>

        <el-form-item label="作者" prop="author">
          <el-input v-model="form.author" placeholder="请输入作者" />
        </el-form-item>
        <el-form-item label="朝代" prop="dynasty">
          <el-input v-model="form.dynasty" placeholder="请输入朝代" />
        </el-form-item>
        <el-form-item label="句子" prop="sentense">
          <el-input
            v-model="form.sentense"
            placeholder="请输入句子"
            type="textarea"
            :rows="3"
          />
        </el-form-item>
        <el-form-item label="拼音" prop="pinyin">
          <el-input
            v-model="form.pinyin"
            placeholder="请输入拼音"
            type="textarea"
            :rows="3"
          />
        </el-form-item>
        <el-form-item label="含义" prop="mean">
          <el-input
            v-model="form.mean"
            placeholder="请输入含义"
            type="textarea"
            :rows="3"
          />
        </el-form-item>
        <el-form-item label="字词" prop="word">
          <el-input
            v-model="form.word"
            placeholder="请输入字词"
            type="textarea"
            :rows="5"
          />
        </el-form-item>
        <el-form-item label="拼音字词" prop="pinyinWord">
          <el-input v-model="form.pinyinWord" placeholder="请输入拼音字词" />
        </el-form-item>
        <el-form-item label="字词注释" prop="wordMean">
          <el-input
            v-model="form.wordMean"
            placeholder="请输入字词注释"
            type="textarea"
            :rows="5"
          />
        </el-form-item>
        <el-form-item label="道理" prop="truth">
          <el-input
            v-model="form.truth"
            placeholder="请输入道理"
            type="textarea"
            :rows="5"
          />
        </el-form-item>
        <el-form-item label="内部序号" prop="innerSortNo">
          <el-input
            v-model="form.innerSortNo"
            placeholder="请输入内部序号"
            type="number"
          />
        </el-form-item>
        <el-form-item label="问题" prop="question">
          <el-input
            v-model="form.question"
            placeholder="请输入问题"
            type="textarea"
            :rows="10"
          />
        </el-form-item>
        <el-form-item label="重点句" prop="isVip">
          <el-switch
            v-model="form.isVip"
            active-value="0"
            inactive-value="1"
          ></el-switch>
        </el-form-item>
        <el-form-item label="内容分类" prop="categoryId">
          <el-select v-model="form.categoryId" placeholder="请选择内容分类">
            <el-option
              v-for="dict in app_chinese_poetry_category"
              :key="dict.value"
              :label="dict.label"
              :value="parseInt(dict.value)"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="子类" prop="childCategoryId">
          <el-input v-model="form.childCategoryId" placeholder="请输入子类" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import {
  listDetail,
  getDetail,
  delDetail,
  addDetail,
  updateDetail,
} from "@/api/app/detail";
import { pinyin } from "pinyin-pro";
import AppBase from "../../app";
export default {
  mixins: [AppBase],
  name: "Detail",
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
      // 诗词明细表格数据
      detailList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        name: null,
        grade: null,
        term: null,
        unit: null,
        author: null,
        dynasty: null,
        sentense: null,
        pinyin: null,
        mean: null,
        word: null,
        wordMean: null,
        truth: null,
        isVip: null,
        categoryId: null,
        childCategoryId: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {},
      app_chinese_poetry_category: [],
      app_primary_grade: [],
      app_term: [],
      app_lesson_unit: [],
      isImport: false,
      importJson: "",
    };
  },
  created() {
    this.getList();
    this.getDictData([
      "app_primary_grade",
      "app_term",
      "app_chinese_poetry_category",
      "app_lesson_unit",
    ]);
  },
  methods: {
    /** 查询诗词明细列表 */
    getList() {
      this.loading = true;
      listDetail(this.queryParams).then((response) => {
        this.detailList = response.rows;
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
        name: null,
        grade: null,
        term: null,
        unit: null,
        author: null,
        dynasty: null,
        sentense: null,
        pinyin: null,
        mean: null,
        word: null,
        wordMean: null,
        truth: null,
        question: null,
        isVip: null,
        innerSortNo: null,
        categoryId: null,
        childCategoryId: null,
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
      this.title = "添加诗词明细";
    },
    handleImport() {
      this.isImport = true;
      this.reset();
      this.open = true;
      this.title = "批量导入";
    },

    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids;
      getDetail(id).then((response) => {
        this.form = response.data;
        this.open = true;
        this.title = "修改诗词明细";
      });
    },
    doImport() {
      const data = JSON.parse(this.importJson);
      debugger;
      data.content.forEach(async (p) => {
        const form = {
          // 公共部分
          name: data.name,
          grade: this.form.grade,
          term: this.form.term,
          unit: this.form.unit,
          author: data.author,
          dynasty: data.dynasty,
          titleWord: data.titleWord,
          titleWordMean:data.titleWordMean,
          titlePinyinWord:data.titlepinyinWord,
          // 明细部分
          sentense: p.sentense,
          pinyin: pinyin(p.sentense),
          mean: p.mean,
          word: p.word,
          wordMean: p.wordMean,
          pinyinWord: p.pinyinWord,
          truth: p.truth,
          question: p.question,
          isVip: p.isVip,
          innerSortNo: p.innerSortNo,
          categoryId: p.categoryId,
          childCategoryId: null,
        };
        debugger
        await addDetail(form).then((response) => {});
      });

      this.$modal.msgSuccess("导入成功");
      this.open = false;
      this.getList();
    },
    /** 提交按钮 */
    submitForm() {
      if (this.isImport) {
        this.doImport();
        return;
      }
      this.$refs["form"].validate((valid) => {
        if (valid) {
          if (this.form.id != null) {
            updateDetail(this.form).then((response) => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addDetail(this.form).then((response) => {
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
        .confirm('是否确认删除诗词明细编号为"' + ids + '"的数据项？')
        .then(function () {
          return delDetail(ids);
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
        "app/detail/export",
        {
          ...this.queryParams,
        },
        `detail_${new Date().getTime()}.xlsx`
      );
    },
  },
};
</script>
