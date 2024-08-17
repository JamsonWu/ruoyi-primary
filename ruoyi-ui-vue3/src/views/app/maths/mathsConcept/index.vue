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
          @change="handleGradeAndTermChange($event, 3)"
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
          @change="handleGradeAndTermChange($event, 4)"
        >
          <el-option
            v-for="dict in app_term"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="章节" prop="chapterId">
        <el-select
          v-model="queryParams.chapterId"
          placeholder="请选择章节"
          clearable
          style="width: 240px"
        >
          <el-option
            v-for="dict in app_maths_chapterbyQuery"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="小节" prop="sectionTitle">
        <el-input
          v-model="queryParams.sectionTitle"
          placeholder="请输入小节"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item label="概念" prop="concept">
        <el-input
          v-model="queryParams.concept"
          placeholder="请输入概念"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item label="表达式" prop="expression">
        <el-input
          v-model="queryParams.expression"
          placeholder="请输入表达式"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item label="示例" prop="sample">
        <el-input
          v-model="queryParams.sample"
          placeholder="请输入示例"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item label="难度星" prop="diffStar">
        <el-input
          v-model="queryParams.diffStar"
          placeholder="请输入难度星"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
          type="number"
        />
      </el-form-item>
      <el-form-item>
        <el-button
          type="primary"
          icon="el-icon-search"
          size="mini"
          @click="handleQuery"
          >搜索</el-button
        >
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery"
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
          v-hasPermi="['app:mathsConcept:add']"
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
          v-hasPermi="['app:mathsConcept:edit']"
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
          v-hasPermi="['app:mathsConcept:remove']"
          >删除</el-button
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
                >数学概念</el-dropdown-item
              >
              <el-dropdown-item @click="handlePrint(2)"
                >数学练习题</el-dropdown-item
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
      :data="mathsConceptList"
      @selection-change="handleSelectionChange"
    >
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="年级.学期.章节" align="center" prop="chapterId">
        <template #default="scope">
          {{ getGradeAndTermName(scope.row) }} <br />
          <dict-tag :options="app_maths_chapter" :value="scope.row.chapterId" />
          《{{ scope.row.sectionTitle }}》
        </template>
      </el-table-column>

      <!-- <el-table-column label="章节" align="center" prop="chapter" /> -->
      <el-table-column
        label="概念"
        align="center"
        prop="concept"
        width="300px"
      />
      <el-table-column label="表达式" align="center" prop="expression" />
      <el-table-column
        label="示例"
        align="center"
        prop="sample"
        width="300px"
      />
      <!-- <el-table-column label="答案" align="center" prop="answer" /> -->
      <!-- <el-table-column label="难度星" align="center" prop="diffStar" /> -->
      <!-- <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['app:mathsConcept:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['app:mathsConcept:remove']"
          >删除</el-button>
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

    <!-- 添加或修改数学概念对话框 -->
    <el-dialog
      :title="title"
      v-model="open"
      width="500px"
      :close-on-click-modal="false"
      append-to-body
    >
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="年级" prop="grade">
          <el-select
            v-model="form.grade"
            placeholder="请选择年级"
            @change="handleGradeAndTermChange($event, 1)"
          >
            <el-option
              v-for="dict in app_primary_grade"
              :key="dict.value"
              :label="dict.label"
              :value="parseInt(dict.value)"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="学期" prop="term">
          <el-select
            v-model="form.term"
            placeholder="请选择学期"
            @change="handleGradeAndTermChange($event, 2)"
          >
            <el-option
              v-for="dict in app_term"
              :key="dict.value"
              :label="dict.label"
              :value="parseInt(dict.value)"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="章节" prop="chapterId">
          <el-select v-model="form.chapterId" placeholder="请选择章节">
            <el-option
              v-for="dict in app_maths_chapterbyAdd"
              :key="dict.value"
              :label="dict.label"
              :value="parseInt(dict.value)"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="小节" prop="sectionTitle">
          <el-input v-model="form.sectionTitle" placeholder="请输入小节" />
        </el-form-item>
        <el-form-item label="概念" prop="concept">
          <el-input
            v-model="form.concept"
            placeholder="请输入概念"
            type="textarea"
            :rows="10"
          />
        </el-form-item>
        <el-form-item label="表达式" prop="expression">
          <el-input
            v-model="form.expression"
            placeholder="请输入表达式"
            type="textarea"
            :rows="5"
          />
        </el-form-item>
        <el-form-item label="示例" prop="sample">
          <el-input
            v-model="form.sample"
            placeholder="请输入示例"
            type="textarea"
            :rows="10"
          />
        </el-form-item>
        <el-form-item label="答案" prop="answer">
          <el-input
            v-model="form.answer"
            placeholder="请输入答案"
            type="textarea"
            :rows="5"
          />
        </el-form-item>
        <el-form-item label="难度星" prop="diffStar">
          <el-input
            v-model="form.diffStar"
            placeholder="请输入难度星"
            type="number"
          />
        </el-form-item>
        <el-form-item label="备注" prop="remark">
          <el-input
            v-model="form.remark"
            placeholder="请输入备注"
            type="textarea"
            :rows="2"
          />
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
  listMathsConcept,
  getMathsConcept,
  delMathsConcept,
  addMathsConcept,
  updateMathsConcept,
} from "@/api/app/mathsConcept";
import AppBase from "../../app";
export default {
  mixins: [AppBase],
  name: "MathsConcept",
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
      // 数学概念表格数据
      mathsConceptList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        grade: null,
        term: null,
        chapterId: null,
        sectionTitle: null,
        concept: null,
        expression: null,
        sample: null,
        answer: null,
        diffStar: null,
        chapterId: null,
        orderByColumn: "chapterId,sortNo",
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {},
      app_primary_grade: [],
      app_term: [],
      app_maths_chapter: [],
      // 新增时章节
      app_maths_chapterbyAdd: [],
      // 查询时章节
      app_maths_chapterbyQuery: [],
    };
  },
  created() {
    this.getList();
    this.getDictData(["app_primary_grade", "app_term", "app_maths_chapter"]);
  },
  methods: {
    /** 查询数学概念列表 */
    getList() {
      this.loading = true;
      listMathsConcept(this.queryParams).then((response) => {
        this.mathsConceptList = response.rows;
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
        grade: this.form.grade,
        term: this.form.term,
        chapterId: this.form.chapterId,
        sectionTitle: null,
        concept: null,
        expression: null,
        sample: null,
        answer: null,
        diffStar: null,
        createBy: null,
        createTime: null,
        updateBy: null,
        updateTime: null,
        remark: null,
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
      this.title = "添加数学概念";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids;
      getMathsConcept(id).then((response) => {
        this.form = response.data;
        this.open = true;
        this.title = "修改数学概念";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate((valid) => {
        if (valid) {
          if (this.form.id != null) {
            updateMathsConcept(this.form).then((response) => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addMathsConcept(this.form).then((response) => {
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
        .confirm('是否确认删除数学概念编号为"' + ids + '"的数据项？')
        .then(function () {
          return delMathsConcept(ids);
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
        "app/mathsConcept/export",
        {
          ...this.queryParams,
        },
        `mathsConcept_${new Date().getTime()}.xlsx`
      );
    },
    handlePrint(printType) {
      let printTypeName = "";
      if (printType == 1) {
        printTypeName = "数学概念"
      }
      else if (printType == 2) {
        printTypeName = "数学练习题"
      }
      // 导出PDF,用于书写
      this.download(
        "app/mathsConcept/pdf",
        {
          ...this.queryParams,
          printType: printType,
        },
        `${printTypeName}_${this.parseTime(new Date(), "{y}{m}{d}{h}{i}{s}")}.pdf`
      );
    },
    handleGradeAndTermChange(e, gt) {
      let grade = 0,
        term = 0;
      if (gt == 1) {
        // 新增修改:年级
        this.addGrade = e;
        grade = e;
        term = this.addTerm;
      } else if (gt == 2) {
        // 新增 : 学期
        this.addTerm = e;
        term = e;
        grade = this.addGrade;
      } else if (gt == 3) {
        // 查询:年级
        this.queryGrade = e;
        grade = e;
        term = this.queryTerm;
      } else if (gt == 4) {
        // 查询: 学期
        this.queryTerm = e;
        term = e;
        grade = this.queryGrade;
      }

      if (gt <= 2) {
        this.app_maths_chapterbyAdd = this.app_maths_chapter.filter((p) =>
          p.value.startsWith(grade + "" + term)
        );
      } else {
        this.app_maths_chapterbyQuery = this.app_maths_chapter.filter((p) =>
          p.value.startsWith(grade + "" + term)
        );
      }
    },
  },
};
</script>
