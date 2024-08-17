<template>
  <div class="app-container">
    <el-form
      :model="queryParams"
      ref="queryForm"
      :inline="true"
      v-show="showSearch"
      label-width="68px"
    >
      <el-form-item label="系统ID" prop="sysId">
        <el-input
          v-model="queryParams.sysId"
          placeholder="请输入系统ID"
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
      <el-form-item label="标题" prop="title">
        <el-input
          v-model="queryParams.title"
          placeholder="请输入标题"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item label="诗词分类" prop="categoryId">
        <el-select
          v-model="queryParams.categoryId"
          placeholder="请选择诗词分类"
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
      <el-form-item label="内容" prop="jsonData">
        <el-input
          v-model="queryParams.jsonData"
          placeholder="请输入内容"
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
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['app:poetryjson:add']"
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
          v-hasPermi="['app:poetryjson:edit']"
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
          v-hasPermi="['app:poetryjson:remove']"
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
          v-hasPermi="['app:poetryjson:export']"
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
      :data="poetryjsonList"
      @selection-change="handleSelectionChange"
    >
      <el-table-column type="selection" width="55" align="center" />
      <!-- <el-table-column label="${comment}" align="center" prop="id" /> -->
      <el-table-column label="年级" align="center" prop="grade">
        <template #default="scope">
          <!-- <dict-tag :options="app_primary_grade" :value="scope.row.grade" /> -->
          {{ gradeTermUnitLessonFormat(scope.row) }}
        </template>
      </el-table-column>
      <!-- <el-table-column label="学期" align="center" prop="term">
        <template #default="scope">
          <dict-tag :options="app_term" :value="scope.row.term" />
        </template>
      </el-table-column>
      <el-table-column label="单元" align="center" prop="unit">
        <template #default="scope">
          <dict-tag :options="app_lesson_unit" :value="scope.row.unit" />
        </template>
      </el-table-column> -->
      <el-table-column label="标题" align="center" prop="title" />
      <el-table-column label="诗词分类" align="center" prop="categoryId">
        <template #default="scope">
          <dict-tag
            :options="app_chinese_poetry_category"
            :value="scope.row.categoryId"
          />
        </template>
      </el-table-column>
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
            v-hasPermi="['app:poetryjson:edit']"
            >修改</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['app:poetryjson:remove']"
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

    <!-- 添加或修改提供JSON完整数据,预留换JSON库对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="系统ID" prop="sysId">
          <el-input v-model="form.sysId" placeholder="请输入系统Id" />
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
        <el-form-item label="标题" prop="title">
          <el-input v-model="form.title" placeholder="请输入标题" />
        </el-form-item>
        <el-form-item label="诗词分类" prop="categoryId">
          <el-select v-model="form.categoryId" placeholder="请选择诗词分类">
            <el-option
              v-for="dict in app_chinese_poetry_category"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="默写" prop="mustWrite">
          <el-switch v-model="mustWrite2" class="drawer-switch" />
        </el-form-item>
        <el-form-item label="json数据" prop="jsonData">
          <el-input
            v-model="form.jsonData"
            placeholder="请输入json格式完整数据"
            type="textarea"
            :rows="10"
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
  listPoetryjson,
  getPoetryjson,
  delPoetryjson,
  addPoetryjson,
  updatePoetryjson,
} from "@/api/app/poetryjson";

import { pinyin } from "pinyin-pro";
import AppBase from "../../app";
export default {
  mixins: [AppBase],
  name: "Poetryjson",
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
      // 提供JSON完整数据,预留换JSON库表格数据
      poetryjsonList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      mustWrite: null,
      mustWrite2: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 50,
        grade: null,
        term: null,
        unit: null,
        title: null,
        categoryId: null,
        jsonData: null,
        sysId: null,
        orderByColumn: "sysId",
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        sysId: [
          { required: true, message: "系统Id不能为空", trigger: "change" },
        ],
        grade: [{ required: true, message: "年级不能为空", trigger: "change" }],
        term: [{ required: true, message: "学期不能为空", trigger: "change" }],
        title: [{ required: true, message: "标题不能为空", trigger: "blur" }],
        categoryId: [
          { required: true, message: "诗词分类不能为空", trigger: "change" },
        ],
        jsonData: [
          {
            required: true,
            message: "json格式完整数据不能为空",
            trigger: "blur",
          },
        ],
      },
      app_chinese_poetry_category: [],
      app_primary_grade: [],
      app_term: [],
      app_lesson_unit: [],
      mustWriteOptions: [
        {
          value: "",
          label: "全部",
        },
        {
          value: "1",
          label: "是",
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
      "app_lesson_unit",
    ]);
  },
  methods: {
    /** 查询提供JSON完整数据,预留换JSON库列表 */
    getList() {
      this.loading = true;
      listPoetryjson(this.queryParams).then((response) => {
        this.poetryjsonList = response.rows;
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
        title: null,
        categoryId: null,
        jsonData: null,
        sysId: null,
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
      this.title = "添加JSON完整数据";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      this.mustWrite2 = row.mustWrite == 1;
      const id = row.id || this.ids;
      getPoetryjson(id).then((response) => {
        this.form = response.data;
        this.open = true;
        this.title = "修改JSON完整数据";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.form.mustWrite = this.mustWrite2 ? 1 : 0;
      const jsonData = JSON.parse(this.form.jsonData);
      if (jsonData.sysId * 1 !== this.form.sysId * 1) {
        this.$modal.msgSuccess("系统Id与JSON数据中配置的不同！");
        return;
      }
      if (!jsonData.content || jsonData.content.length == 0) {
        this.$modal.msgSuccess("JSON数据content字段不能为空！");
        return;
      }
      if (!jsonData.title) {
        this.$modal.msgSuccess("JSON数据标题字段不能为空！");
        return;
      }
      jsonData.mustWrite = this.form.mustWrite;
      jsonData.titlePinyin = this.getPinyin(jsonData.title);
      const content = jsonData.content;
      for (let k = 0, n = content.length; k < n; k++) {
        if (!content[k].sentense) {
          this.$modal.msgSuccess("句子不能为空！");
          break;
        }
        if (!content[k].mean) {
          // this.$modal.msgSuccess("译文不能为空");
          // break;
        }
        if (jsonData.withoutPinyin) {
        } else {
          content[k].pinyin = this.getPinyin(content[k].sentense);
        }
      }

      this.form.jsonData = JSON.stringify(jsonData);

      this.$refs["form"].validate((valid) => {
        if (valid) {
          if (this.form.id != null) {
            updatePoetryjson(this.form).then((response) => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addPoetryjson(this.form).then((response) => {
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
        .confirm(
          '是否确认删除提供JSON完整数据,预留换JSON库编号为"' +
            ids +
            '"的数据项？'
        )
        .then(function () {
          return delPoetryjson(ids);
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
        "app/poetryjson/export",
        {
          ...this.queryParams,
        },
        `poetryjson_${new Date().getTime()}.xlsx`
      );
    },
  },
};
</script>
