<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="年级" prop="grade">
        <el-select v-model="queryParams.grade" placeholder="请选择年级" clearable>
          <el-option
            v-for="dict in dict.type.app_primary_grade"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="学期" prop="term">
        <el-select v-model="queryParams.term" placeholder="请选择学期" clearable>
          <el-option
            v-for="dict in dict.type.app_term"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="单元" prop="unit">
        <el-select v-model="queryParams.unit" placeholder="请选择单元" clearable>
          <el-option
            v-for="dict in dict.type.app_lesson_unit"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="错误次数" prop="errorTimes">
        <el-input
          v-model="queryParams.errorTimes"
          placeholder="请输入错误次数"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="最后答错日期">
        <el-date-picker
          v-model="daterangeLastErrorDate"
          style="width: 240px"
          value-format="yyyy-MM-dd"
          type="daterange"
          range-separator="-"
          start-placeholder="开始日期"
          end-placeholder="结束日期"
        ></el-date-picker>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
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
          v-hasPermi="['maths:questiondetail:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['maths:questiondetail:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['maths:questiondetail:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['maths:questiondetail:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="questiondetailList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="序号" align="center" prop="id" />
      <el-table-column label="年级" align="center" prop="grade">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.app_primary_grade" :value="scope.row.grade"/>
        </template>
      </el-table-column>
      <el-table-column label="学期" align="center" prop="term">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.app_term" :value="scope.row.term"/>
        </template>
      </el-table-column>
      <el-table-column label="单元" align="center" prop="unit">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.app_lesson_unit" :value="scope.row.unit"/>
        </template>
      </el-table-column>
      <el-table-column label="问题类别" align="center" prop="questionType">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.sys_maths_question" :value="scope.row.questionType ? scope.row.questionType.split(',') : []"/>
        </template>
      </el-table-column>
      <el-table-column label="问题" align="center" prop="question" />
      <el-table-column label="答案" align="center" prop="answer" />
      <el-table-column label="错误次数" align="center" prop="errorTimes" />
      <el-table-column label="最后答错日期" align="center" prop="lastErrorDate" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.lastErrorDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['maths:questiondetail:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['maths:questiondetail:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    
    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改数学错题明细对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="年级" prop="grade">
          <el-select v-model="form.grade" placeholder="请选择年级">
            <el-option
              v-for="dict in dict.type.app_primary_grade"
              :key="dict.value"
              :label="dict.label"
              :value="parseInt(dict.value)"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="学期" prop="term">
          <el-select v-model="form.term" placeholder="请选择学期">
            <el-option
              v-for="dict in dict.type.app_term"
              :key="dict.value"
              :label="dict.label"
              :value="parseInt(dict.value)"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="单元" prop="unit">
          <el-select v-model="form.unit" placeholder="请选择单元">
            <el-option
              v-for="dict in dict.type.app_lesson_unit"
              :key="dict.value"
              :label="dict.label"
              :value="parseInt(dict.value)"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="问题类别" prop="questionType">
          <el-checkbox-group v-model="form.questionType">
            <el-checkbox
              v-for="dict in dict.type.sys_maths_question"
              :key="dict.value"
              :label="dict.value">
              {{dict.label}}
            </el-checkbox>
          </el-checkbox-group>
        </el-form-item>
        <el-form-item label="问题" prop="question">
          <el-input v-model="form.question" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="答案" prop="answer">
          <el-input v-model="form.answer" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="错误次数" prop="errorTimes">
          <el-input v-model="form.errorTimes" placeholder="请输入错误次数" />
        </el-form-item>
        <el-form-item label="最后答错日期" prop="lastErrorDate">
          <el-date-picker clearable
            v-model="form.lastErrorDate"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择最后答错日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="用户ID" prop="userId">
          <el-input v-model="form.userId" placeholder="请输入用户ID" />
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
import { listQuestiondetail, getQuestiondetail, delQuestiondetail, addQuestiondetail, updateQuestiondetail } from "@/api/app/maths/questiondetail";

export default {
  name: "Questiondetail",
  dicts: ['sys_maths_question', 'app_lesson_unit', 'app_primary_grade', 'app_term'],
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
      // 数学错题明细表格数据
      questiondetailList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 用户ID时间范围
      daterangeLastErrorDate: [],
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        grade: null,
        term: null,
        unit: null,
        questionType: null,
        question: null,
        errorTimes: null,
        lastErrorDate: null,
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
        question: [
          { required: true, message: "问题不能为空", trigger: "blur" }
        ],
        userId: [
          { required: true, message: "用户ID不能为空", trigger: "blur" }
        ]
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询数学错题明细列表 */
    getList() {
      this.loading = true;
      this.queryParams.params = {};
      if (null != this.daterangeLastErrorDate && '' != this.daterangeLastErrorDate) {
        this.queryParams.params["beginLastErrorDate"] = this.daterangeLastErrorDate[0];
        this.queryParams.params["endLastErrorDate"] = this.daterangeLastErrorDate[1];
      }
      listQuestiondetail(this.queryParams).then(response => {
        this.questiondetailList = response.rows;
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
        questionType: [],
        question: null,
        answer: null,
        errorTimes: null,
        lastErrorDate: null,
        userId: null
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
      this.daterangeLastErrorDate = [];
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加数学错题明细";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getQuestiondetail(id).then(response => {
        this.form = response.data;
        this.form.questionType = this.form.questionType.split(",");
        this.open = true;
        this.title = "修改数学错题明细";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          this.form.questionType = this.form.questionType.join(",");
          if (this.form.id != null) {
            updateQuestiondetail(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addQuestiondetail(this.form).then(response => {
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
      this.$modal.confirm('是否确认删除数学错题明细编号为"' + ids + '"的数据项？').then(function() {
        return delQuestiondetail(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('maths/questiondetail/export', {
        ...this.queryParams
      }, `questiondetail_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
