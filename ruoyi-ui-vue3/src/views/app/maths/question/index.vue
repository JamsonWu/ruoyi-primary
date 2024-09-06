<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="年级" prop="grade">
        <el-select v-model="queryParams.grade" placeholder="请选择年级" clearable style="width: 240px">
          <el-option v-for="dict in app_primary_grade" :key="dict.value" :label="dict.label" :value="dict.value" />
        </el-select>
      </el-form-item>
      <el-form-item label="学期" prop="term">
        <el-select v-model="queryParams.term" placeholder="请选择学期" clearable style="width: 240px">
          <el-option v-for="dict in app_term" :key="dict.value" :label="dict.label" :value="dict.value" />
        </el-select>
      </el-form-item>
      <el-form-item label="单元" prop="unit">
        <el-select v-model="queryParams.unit" placeholder="请选择单元" clearable style="width: 240px">
          <el-option v-for="dict in app_lesson_unit" :key="dict.value" :label="dict.label" :value="dict.value" />
        </el-select>
      </el-form-item>
      <el-form-item label="问题类别" prop="questionType">
        <el-select v-model="queryParams.questionType" placeholder="请选择问题类别" clearable style="width: 240px">
          <el-option v-for="dict in sys_maths_question" :key="dict.value" :label="dict.label" :value="dict.value" />
        </el-select>
      </el-form-item>
      <el-form-item label="提交日期">
        <el-date-picker v-model="daterangeQuestionDate" value-format="YYYY-MM-DD" type="daterange" range-separator="-"
          start-placeholder="开始日期" end-placeholder="结束日期" style="width: 240px"></el-date-picker>
      </el-form-item>
      <el-form-item label="问题" prop="quetion">
        <el-input v-model="queryParams.quetion" placeholder="请输入问题" clearable @keyup.enter.native="handleQuery"
          style="width: 240px" />
      </el-form-item>
      <el-form-item label="错解次数" prop="errorTimes">
        <el-input v-model="queryParams.errorTimes" placeholder="请输入错解次数" clearable @keyup.enter.native="handleQuery"
          style="width: 240px" />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button type="primary" plain icon="el-icon-plus" size="mini" @click="handleAdd"
          v-hasPermi="['maths:question:add']">新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="success" plain icon="el-icon-edit" size="mini" :disabled="single" @click="handleUpdate"
          v-hasPermi="['maths:question:edit']">修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="danger" plain icon="el-icon-delete" size="mini" :disabled="multiple" @click="handleDelete"
          v-hasPermi="['maths:question:remove']">删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="warning" plain icon="el-icon-download" size="mini" @click="handleExport"
          v-hasPermi="['maths:question:export']">导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="questionList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="年级.学期.单元" align="center" prop="chapterId">
        <template #default="scope">
          {{ getGradeAndTermName(scope.row) }} <br />
          <dict-tag :options="app_lesson_unit" :value="scope.row.unit" />
        </template>
      </el-table-column>
      <el-table-column label="问题类别" align="center" prop="questionType">
        <template #default="scope">
          <dict-tag :options="sys_maths_question" :value="scope.row.questionType" />
        </template>
      </el-table-column>
      <el-table-column label="提交日期" align="center" prop="questionDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.questionDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="问题" align="center" prop="quetion" />
      <el-table-column label="错解" align="center" prop="errorAnswer" />
      <el-table-column label="正解" align="center" prop="answer" />
      <el-table-column label="错解次数" align="center" prop="errorTimes" />

      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button size="mini" type="text" icon="el-icon-edit" @click="handleUpdate(scope.row)"
            v-hasPermi="['maths:question:edit']">修改</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination v-show="total > 0" :total="total" v-model:page="queryParams.pageNum"
      v-model:limit="queryParams.pageSize" @pagination="getList" />

    <!-- 添加或修改数学错题主对话框 -->
    <el-dialog :title="title" v-model="open" width="660px" append-to-body :close-on-click-modal="false">
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-row :gutter="5">
          <el-col :span="8">
            <el-form-item label="年级" prop="grade">
              <el-select v-model="form.grade" placeholder="请选择年级">
                <el-option v-for="dict in app_primary_grade" :key="dict.value" :label="dict.label"
                  :value="parseInt(dict.value)"></el-option>
              </el-select>
            </el-form-item>
          </el-col>

          <el-col :span="8">
            <el-form-item label="学期" prop="term">
              <el-select v-model="form.term" placeholder="请选择学期">
                <el-option v-for="dict in app_term" :key="dict.value" :label="dict.label"
                  :value="parseInt(dict.value)"></el-option>
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="单元" prop="unit">
              <el-select v-model="form.unit" placeholder="请选择单元">
                <el-option v-for="dict in app_lesson_unit" :key="dict.value" :label="dict.label"
                  :value="parseInt(dict.value)"></el-option>
              </el-select>
            </el-form-item>
          </el-col>
        </el-row>
        <el-form-item label="问题类别" prop="questionType">
          <el-select v-model="form.questionType" placeholder="请选择问题类别">
            <el-option v-for="dict in sys_maths_question" :key="dict.value" :label="dict.label"
              :value="parseInt(dict.value)"></el-option>
          </el-select>
        </el-form-item>

        <el-form-item label="问题" prop="quetion">
          <el-input v-model="form.quetion" type="textarea" placeholder="请输入问题" :rows="5" />
        </el-form-item>

        <el-form-item label="错解" prop="errorAnswer">
          <el-input v-model="form.errorAnswer" type="textarea" placeholder="请输入内容" :rows="6" />
        </el-form-item>

        <el-form-item label="正确" prop="answer">
          <el-input v-model="form.answer" type="textarea" placeholder="请输入内容" :rows="6" />
        </el-form-item>

        <el-form-item label="拍照解答">
          <question-img :answerImgUrl="currentAnswerImgUrl" :onAnswerImgUrl="handleAnswerImgUrl" />
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
import { listQuestion, getQuestion, delQuestion, addQuestion, updateQuestion } from "@/api/app/maths/question";

import AppBase from "../../app";
import QuestionImg from "./questionImg";
export default {
  mixins: [AppBase],
  name: "Question",
  components: {
    QuestionImg
  },
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
      // 数学错题主表格数据
      questionList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 用户ID时间范围
      daterangeQuestionDate: [],
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        grade: null,
        term: null,
        unit: null,
        questionType: null,
        questionDate: null,
        quetion: null,
        errorAnswer: null,
        answer: null,
        errorTimes: null,
        sortNo: null,
        userId: null,
        answerImgUrl: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        grade: [
          { required: true, message: "年级不能为空", trigger: "change" }
        ],
        term: [
          { required: true, message: "学期不能为空", trigger: "change" }
        ],
        unit: [
          { required: true, message: "单元不能为空", trigger: "change" }
        ],
        questionType: [
          { required: true, message: "问题类别不能为空", trigger: "blur" }
        ],
        questionDate: [
          { required: true, message: "提交日期不能为空", trigger: "blur" }
        ],
        quetion: [
          { required: true, message: "问题不能为空", trigger: "blur" }
        ],
        userId: [
          { required: true, message: "用户ID不能为空", trigger: "blur" }
        ]
      },
      app_primary_grade: [],
      app_term: [],
      app_lesson_unit: [],
      sys_maths_question: []
    };
  },
  computed:{
     currentAnswerImgUrl(){
       var tmpStr = this.form.answerImgUrl ? import.meta.env.VITE_APP_BASE_API + this.form.answerImgUrl :""
       console.log("currentAnswerImgUrl", tmpStr);
       
       return tmpStr
     }
  },
  created() {
    this.getList();
    this.getDictData(["app_primary_grade", "app_term", "app_lesson_unit", "sys_maths_question"]);
  },
  methods: {
    /** 查询数学错题主列表 */
    getList() {
      this.loading = true;
      this.queryParams.params = {};
      if (null != this.daterangeQuestionDate && '' != this.daterangeQuestionDate) {
        this.queryParams.params["beginQuestionDate"] = this.daterangeQuestionDate[0];
        this.queryParams.params["endQuestionDate"] = this.daterangeQuestionDate[1];
      }
      listQuestion(this.queryParams).then(response => {
        this.questionList = response.rows;
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
        unit: null,
        questionType: null,
        questionDate: null,
        quetion: null,
        errorAnswer: null,
        answer: null,
        errorTimes: null,
        sortNo: null,
        userId: null,
        answerImgUrl: null
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
      this.daterangeQuestionDate = [];
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length !== 1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加数学错题";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getQuestion(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改数学错题主";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateQuestion(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addQuestion(this.form).then(response => {
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
      this.$modal.confirm('是否确认删除数学错题主编号为"' + ids + '"的数据项？').then(function () {
        return delQuestion(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => { });
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('maths/question/export', {
        ...this.queryParams
      }, `question_${new Date().getTime()}.xlsx`)
    },
    handleAnswerImgUrl(url){
     this.form.answerImgUrl = url
    }
  }
};
</script>
<style lang="css" scoped>
/* ::v-deep .el-col-6 {
     max-width: none;
     flex: none;

   } */
</style>