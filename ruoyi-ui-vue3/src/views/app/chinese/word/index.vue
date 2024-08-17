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
          style="width: 240px"
        >
          <el-option
            v-for="item in app_primary_grade"
            :key="item.value"
            :label="item.label"
            :value="item.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="学期" prop="term">
        <el-select
          v-model="queryParams.term"
          placeholder="请选择学期"
          style="width: 240px"
        >
          <el-option
            v-for="item in app_term"
            :key="item.value"
            :label="item.label"
            :value="item.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="单元" prop="unit">
        <el-select
          v-model="queryParams.unit"
          placeholder="请选择单元"
          style="width: 240px"
        >
          <el-option
            v-for="item in app_lesson_unit"
            :key="item.value"
            :label="item.label"
            :value="item.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="第几课" prop="lessonNo">
        <el-select
          v-model="queryParams.lessonNo"
          placeholder="请选择第几课"
          style="width: 240px"
        >
          <el-option
            v-for="item in app_lesson"
            :key="item.value"
            :label="item.label"
            :value="item.value"
          />
        </el-select>
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
      <el-form-item label="词语" prop="word">
        <el-input
          v-model="queryParams.word"
          placeholder="请输入词语"
          clearable
          @keyup.enter="handleQuery"
          style="width: 240px"
        />
      </el-form-item>
      <el-form-item label="词语分类" prop="wordType">
        <el-select
          v-model="queryParams.wordType"
          placeholder="请输入词语分类"
          style="width: 240px"
        >
          <el-option
            v-for="item in app_chinese_wordtype"
            :key="item.value"
            :label="item.label"
            :value="item.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search" @click="handleQuery"
          >搜索</el-button
        >
        <el-button icon="refresh" @click="resetQuery">重置</el-button>
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
          v-hasPermi="['app:chinese:add']"
          >新增</el-button
        >
      </el-col>
      <!-- <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['app:chinese:edit']"
          >修改</el-button
        >
      </el-col>
     -->
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['app:chinese:remove']"
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
          v-hasPermi="['app:chinese:export']"
          >导出</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleListen"
          >家听</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <!-- <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handlePrint"
          >打印</el-button
        > -->

        <el-dropdown>
          <el-button type="primary">
            打印<el-icon class="el-icon--right"><arrow-down /></el-icon>
          </el-button>
          <template #dropdown>
            <el-dropdown-menu>
              <el-dropdown-item @click="handlePrint(2)"
                >词语表</el-dropdown-item
              >
              <el-dropdown-item @click="handlePrint(1)"
                >看拼音写字表</el-dropdown-item
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
      :data="chineseList"
      @selection-change="handleSelectionChange"
    >
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="年级.学期.单元" align="center" prop="grade">
        <template #default="scope">
          <!-- <dict-tag :options="app_primary_grade" :value="scope.row.grade" />
          <dict-tag :options="app_term" :value="scope.row.term" /> -->
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
      </el-table-column>
      <el-table-column label="第几课" align="center" prop="lessonNo">
        <template #default="scope">
          <dict-tag :options="app_lesson" :value="scope.row.lessonNo" />
        </template>
      </el-table-column> -->
      <el-table-column label="词语" align="center" prop="word" />
      <el-table-column label="拼音" align="center" prop="pinyin" />
      <el-table-column label="词语类型" align="center" prop="wordType">
        <template #default="scope">
          <dict-tag
            :options="app_chinese_wordtype"
            :value="scope.row.wordType"
          />
        </template>
      </el-table-column>
      <!-- <el-table-column label="排序" align="center" prop="wordSort" /> -->
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
            @click="handleDivide(scope.row)"
            v-hasPermi="['app:chinese:edit']"
            v-if="scope.row.wordType==1&&scope.row.word.length > 3"
            >拆分</el-button
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

    <!-- 添加或修改语文词语对话框 -->
    <el-dialog
      :title="title"
      v-model="open"
      width="500px"
      :close-on-click-modal="false"
      append-to-body
    >
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="年级" prop="grade">
          <!-- <el-input v-model="form.grade" placeholder="请输入年级" /> -->
          <el-select
            v-model="form.grade"
            placeholder="Select"
            style="width: 240px"
          >
            <el-option
              v-for="item in app_primary_grade"
              :key="item.value"
              :label="item.label"
              :value="item.value"
            />
          </el-select>
        </el-form-item>
        <el-form-item label="学期" prop="term">
          <!-- <el-input v-model="form.term" placeholder="请输入学期" /> -->
          <el-select
            v-model="form.term"
            placeholder="Select"
            style="width: 240px"
          >
            <el-option
              v-for="item in app_term"
              :key="item.value"
              :label="item.label"
              :value="item.value"
            />
          </el-select>
        </el-form-item>
        <el-form-item label="单元" prop="unit">
          <el-select
            v-model="form.unit"
            placeholder="Select"
            style="width: 240px"
          >
            <el-option
              v-for="item in app_lesson_unit"
              :key="item.value"
              :label="item.label"
              :value="item.value"
            />
          </el-select>
        </el-form-item>
        <el-form-item label="第几课" prop="lessonNo">
          <el-select
            v-model="form.lessonNo"
            placeholder="Select"
            style="width: 240px"
          >
            <el-option
              v-for="item in app_lesson"
              :key="item.value"
              :label="item.label"
              :value="item.value"
            />
          </el-select>
        </el-form-item>
        <el-form-item label="词语分类" prop="wordType">
          <el-select
            v-model="form.wordType"
            placeholder="Select"
            style="width: 240px"
          >
            <el-option
              v-for="item in app_chinese_wordtype"
              :key="item.value"
              :label="item.label"
              :value="item.value"
            />
          </el-select>
        </el-form-item>
        <el-form-item label="词语" prop="word">
          <el-input v-model="form.word" type="textarea" :rows="10" />
        </el-form-item>
        <!-- <el-form-item label="拼音" prop="pinyin">
          <el-input v-model="form.pinyin" placeholder="请输入拼音" />
        </el-form-item>
        <el-form-item label="排序" prop="wordSort">
          <el-input v-model="form.wordSort" placeholder="请输入排序" />
        </el-form-item> -->
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
  listChinese,
  getChinese,
  delChinese,
  addChinese,
  updateChinese,
  divideChinese,
} from "@/api/app/chinese";
import AppBase from "../../app";
import { ElLoading } from "element-plus";
export default {
  name: "Chinese",
  mixins: [AppBase],
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
      // 语文词语表格数据
      chineseList: [],
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
        unit: null,
        word: null,
        pinyin: null,
        lessonNo: null,
        wordType: null,
        orderByColumn: "grade,term,unit,lesson_no",
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        grade: [{ required: true, message: "年级不能为空", trigger: "blur" }],
        term: [{ required: true, message: "学期不能为空", trigger: "blur" }],
        unit: [{ required: true, message: "单元不能为空", trigger: "blur" }],
        word: [{ required: true, message: "词语不能为空", trigger: "blur" }],
      },
      app_primary_grade: [],
      app_term: [],
      app_lesson_unit: [],
      app_lesson: [],
      app_chinese_wordtype: [],
      gradeTermArr: [
        {
          name: "二年级上册",
          grade: 2,
          term: 1,
        },
        {
          name: "二年级下册",
          grade: 2,
          term: 2,
        },
        {
          name: "三年级上册",
          grade: 3,
          term: 1,
        },
        {
          name: "三年级下册",
          grade: 3,
          term: 2,
        },
        {
          name: "四年级上册",
          grade: 4,
          term: 1,
        },
        {
          name: "四年级下册",
          grade: 4,
          term: 2,
        },
        {
          name: "五年级上册",
          grade: 5,
          term: 1,
        },
        {
          name: "五年级下册",
          grade: 5,
          term: 2,
        },
        {
          name: "六年级上册",
          grade: 6,
          term: 1,
        },
        {
          name: "六年级下册",
          grade: 6,
          term: 2,
        },
      ],
    };
  },
  created() {
    this.getList();
    this.getDictData([
      "app_primary_grade",
      "app_term",
      "app_lesson_unit",
      "app_lesson",
      "app_chinese_wordtype",
    ]);
  },
  methods: {
    /** 查询语文词语列表 */
    getList(fn) {
      this.loading = true;
      listChinese(this.queryParams).then((response) => {
        this.chineseList = response.rows;
        this.total = response.total;
        this.loading = false;
        fn && fn();
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
        word: null,
        pinyin: null,
        wordType: null,
        wordSort: null,
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
      console.log("handleAdd");
      this.reset();
      this.open = true;
      this.title = "添加语文词语";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids;
      getChinese(id).then((response) => {
        this.form = response.data;
        this.open = true;
        this.title = "修改语文词语";
      });
    },
    handleDivide(row) {
      const wordOne = row.word.substring(0, 2);
      const wordTwo = row.word.substring(2);
      divideChinese({
        id: row.id,
        wordOne: wordOne,
        wordTwo: wordTwo,
        wordOnePinyin: this.getPinyin(wordOne),
        wordTwoPinyin: this.getPinyin(wordTwo),
      }).then((response) => {
        this.$modal.msgSuccess("拆分成功");
        this.open = false;
        this.getList();
      });
    },
    /** 提交按钮 */
    submitForm() {
      console.log("save");

      this.$refs["form"].validate(async (valid) => {
        if (valid) {
          const regWord = /([\d]+)([\u4e00-\u9fa5]+)/;
          let wordStr = this.form.word.replace(/\([^()]*\)/g, "");
          wordStr = wordStr.replace(/\t|\t\n|\n|识字|课文/g, " ");
          debugger
          const wordArr = wordStr.split(" ");

          if (this.form.id != null) {
            updateChinese(this.form).then((response) => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            let grade = 1,
              term = 1,
              lessonNo = 1,
              sortNo = 1;
            wordArr.forEach(async (p) => {
              const gradeTerm = this.gradeTermArr.find((t) => t.name == p);
              if (gradeTerm) {
                grade = gradeTerm.grade;
                term = gradeTerm.term;
              } else if (p.trim() != "") {
                let word = p.trim();
                if (regWord.test(word)) {
                  const tmpArr = word.match(regWord);
                  if (tmpArr.length == 3) {
                    lessonNo = tmpArr[1];
                    word = tmpArr[2];
                  }
                }
                else {
                  lessonNo = this.form.lessonNo
                }
                const obj = {
                  grade: grade,
                  term: term,
                  unit: this.form.unit,
                  word: word,
                  pinyin: this.getPinyin(word),
                  wordType: this.form.wordType,
                  lessonNo: lessonNo,
                  wordSort: sortNo++,
                };
                await addChinese(obj).then((response) => {
                  console.log("save ok");
                });
              }
            });
            this.$modal.msgSuccess("保存成功");
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
        .confirm('是否确认删除语文词语编号为"' + ids + '"的数据项？')
        .then(function () {
          return delChinese(ids);
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
        "app/chinese/export",
        {
          ...this.queryParams,
        },
        `语文词语表_${this.parseTime(new Date(),"{y}{m}{d}{h}{i}{s}")}.xlxs`
      );
    },
    async handleListen() {
      const pageSize = this.queryParams.pageSize;
      this.queryParams.pageSize = 400;
      this.getList(async () => {
        this.queryParams.pageSize = pageSize;
        this.isListening = true;
        // 创建异步任务函数
        const taskFunc = (word, timeout) => {
          return new Promise((resolve, reject) => {
            try {
              setTimeout(() => {
                window.responsiveVoice.speak(word, "Chinese Male", {
                  onend: () => {
                    resolve("ok");
                  },
                });
              }, timeout);
            } catch {
              reject("error");
            }
          });
        };

        for (let p of this.chineseList) {
          for (let t of [3, 5, 10]) {
            if (this.isExit) {
              break;
            }
            await taskFunc(p.word, 1000 * t);
          }
        }
        this.isListening = false;
      });
    },
    handlePrint(printType) {
      let printTypeName = "";
      if (printType == 2) {
        printTypeName = "语文词语表"
      }
      else if (printType == 1) {
        printTypeName = "语文看拼音写字表"
      }

      const queryParams = { ...this.queryParams, pageNum: 1, pageSize: 100000 };
      // 导出PDF,用于书写
      this.download(
        "app/chinese/pdf",
        {
          ...queryParams,
          printType: printType,
        },
        `${printTypeName}_${this.parseTime(new Date(),"{y}{m}{d}{h}{i}{s}")}.pdf`
      );
    },
    stopListening(callback, loadingInstance) {
      if (!this.isListening) {
        loadingInstance && loadingInstance.close();
        callback();
      } else {
        setTimeout(() => {
          this.stopListening(callback, loadingInstance);
        }, 1000);
      }
    },
  },
  beforeRouteLeave(to, from, next) {
    // 通知要退出了
    this.isExit = true;
    if (this.isListening) {
      const loadingInstance = ElLoading.service({
        fullscreen: false,
        text: "正在退出，请稍候。。。",
      });
      this.stopListening(next, loadingInstance);
    } else {
      next(); // 继续导航
    }
  },
};
</script>
<style>
@media screen and (max-width: 800px) {
  .mb8 .el-col {
    padding-bottom: 5px !important;
  }
}

@media (max-width: 768px) {
  .pagination-container .el-pagination > .el-pagination__sizes {
    display: block !important;
  }
}
</style>
