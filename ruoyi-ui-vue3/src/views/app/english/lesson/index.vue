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
      <el-form-item label="数据分类" prop="dataType">
        <el-select
          v-model="queryParams.dataType"
          placeholder="请选择数据分类"
          clearable
          style="width: 240px"
        >
          <el-option
            v-for="dict in app_english_lesson_datatype"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
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
          v-hasPermi="['app:lesson:add']"
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
          v-hasPermi="['app:lesson:edit']"
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
          v-hasPermi="['app:lesson:remove']"
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
          v-hasPermi="['app:lesson:export']"
          >导出</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <el-dropdown>
          <el-button type="primary">
            家听<el-icon class="el-icon--right"><arrow-down /></el-icon>
          </el-button>
          <template #dropdown>
            <el-dropdown-menu>
              <el-dropdown-item @click="handleListen(false)"
                >家听中文</el-dropdown-item
              >
              <el-dropdown-item @click="handleListen(true)"
                >家听音标</el-dropdown-item
              >
            </el-dropdown-menu>
          </template>
        </el-dropdown>
      </el-col>
      <el-col :span="1.5">
        <el-dropdown>
          <el-button type="primary">
            打印<el-icon class="el-icon--right"><arrow-down /></el-icon>
          </el-button>
          <template #dropdown>
            <el-dropdown-menu>
              <el-dropdown-item @click="handlePrint(false)"
                >单词短语中文</el-dropdown-item
              >
              <el-dropdown-item @click="handlePrint(true)"
                >单词短语音标</el-dropdown-item
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
      :data="lessonList"
      @selection-change="handleSelectionChange"
    >
      <el-table-column type="selection" width="55" align="center" />
      <!-- <el-table-column label="${comment}" align="center" prop="id" /> -->
      <el-table-column label="年级.学期.单元" align="center" prop="grade">
        <template #default="scope">
          {{ gradeTermUnitLessonFormat(scope.row) }}
          <!-- <dict-tag :options="app_primary_grade" :value="scope.row.grade" /> -->
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
      <el-table-column label="单词" align="center" prop="word" />
      <el-table-column label="发音" align="center" prop="pronounce" />
      <el-table-column label="中文" align="center" prop="chinese" />
      <el-table-column label="数据分类" align="center" prop="dataType">
        <template #default="scope">
          <dict-tag
            :options="app_english_lesson_datatype"
            :value="scope.row.dataType"
          />
        </template>
      </el-table-column>
      <!-- <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['app:lesson:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['app:lesson:remove']"
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

    <!-- 添加或修改小学英语单词词组对话框 -->
    <el-dialog
      :title="title"
      v-model="open"
      width="500px"
      :close-on-click-modal="false"
      append-to-body
    >
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
        <el-form-item label="数据分类" prop="dataType">
          <el-select v-model="form.dataType" placeholder="请选择数据分类">
            <el-option
              v-for="dict in app_english_lesson_datatype"
              :key="dict.value"
              :label="dict.label"
              :value="parseInt(dict.value)"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="单词" prop="word">
          <!-- <el-input v-model="form.word" placeholder="请输入单词" /> -->
          <el-input
            v-model="form.word"
            placeholder="批量输入格式：单词 /音标/ 中文,多个单词要换行;或者单词|中文;或者短语|中文;或者句子|中文"
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

        <!-- <el-form-item label="序号" prop="sortNo">
          <el-input v-model="form.sortNo" placeholder="请输入序号" />
        </el-form-item> -->
      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm">确 定</el-button>
          <el-button @click="cancel">取 消</el-button>
        </div>
      </template>
    </el-dialog>

    <el-dialog v-model="printVisible" title="提示" width="500">
      <span>请确认是否要打印单词音标？</span>
      <template #footer>
        <div class="dialog-footer">
          <el-button @click="doPrint(false)">否</el-button>
          <el-button type="primary" @click="doPrint(true)"> 是 </el-button>
        </div>
      </template>
    </el-dialog>
  </div>
</template>

<script>
import {
  listLesson,
  getLesson,
  delLesson,
  addLesson,
  updateLesson,
} from "@/api/app/lesson";

import AppBase from "../../app";
import { ElLoading } from "element-plus";

export default {
  name: "Lesson",
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
      // 小学英语单词词组表格数据
      lessonList: [],
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
        pronounce: null,
        chinese: null,
        dataType: null,
        orderByColumn: "grade,term,unit,data_type,sort_no",
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        grade: [{ required: true, message: "年级不能为空", trigger: "change" }],
        term: [{ required: true, message: "学期不能为空", trigger: "change" }],
        unit: [{ required: true, message: "单元不能为空", trigger: "change" }],
        word: [{ required: true, message: "单词不能为空", trigger: "blur" }],
        // chinese: [{ required: true, message: "中文不能为空", trigger: "blur" }],
        dataType: [
          { required: true, message: "数据分类不能为空", trigger: "change" },
        ],
      },
      app_lesson_unit: [],
      app_primary_grade: [],
      app_term: [],
      app_english_lesson_datatype: [],
      printVisible: false,
      isChinese: "中文",
    };
  },
  created() {
    this.getList();
    this.getDictData([
      "app_lesson_unit",
      "app_primary_grade",
      "app_term",
      "app_english_lesson_datatype",
    ]);
  },
  methods: {
    /** 查询小学英语单词词组列表 */
    getList(fn) {
      this.loading = true;
      listLesson(this.queryParams).then((response) => {
        this.lessonList = response.rows;
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
        pronounce: null,
        chinese: null,
        dataType: null,
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
      this.title = "添加小学英语单词词组";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids;
      getLesson(id).then((response) => {
        this.form = response.data;
        this.open = true;
        this.title = "修改小学英语单词词组";
      });
    },
    /** 提交按钮 */
    submitForm() {
      // 单词格式1：英文 音标 中文 ;
      // 单词格式2：英文 中文  音标
      // 音标格式1：/xxx/
      // 音标格式2：[xxx]
      // 输入行：Unit d 代表第几单元
      // 输入行只存在：单词 + 中文的代表是短语，自动识别为短语类型
      // 单词 + /音标/ + 中文 正则
      const regWord = /^([^/]*)(\/[^/]*\/)([^/]*)$/;
      // 单词 + [音标] + 中文 正则
      const regWord2 = /^([^\[]*)(\[[^\]]*\])([^\]]*)$/;
      // 单词 + 中文  + [音标] 正则
      // const regWord3 = /^(\w+)\s+(\p{Script=Han}+)\s+\[([^\]]+)\]$/u;
      const regWord3 =
        /^([a-z A-Z \s]+)\s+([\u4e00-\u9fa5（），]+|.*[\u4e00-\u9fa5（），]+)\s+\[([^\]]+)\]$/u;

      // 短语 + 中文正则
      // const regWord3 = /^(\w+)\s+(\p{Script=Han}+)\s+\[([^\]]+)\]$/u;
      const regPhrase =
        /^([a-z A-Z \s ’\?='？\.\/]+)([\u4e00-\u9fa5（），\?]+|.*[\u4e00-\u9fa5（），\?？]+)$/u;

      // 正则分离第几单元
      const regUnit = /(^unit)\s(\d+)/i;
      const regSplit = /[\n]{1,2}/; //可能出现1个或2个的换行符
      const words = this.form.word.split(regSplit);
      let wordType = "";
      let sortNo = 1;
      // 当前单元
      let curUnit = null;

      const wordListObj = {};
      if (!this.form.id) {
        // 新增处理
        for (let word of words) {
          word = word ? word.trim() : word;
          const tmpWordArr = word.split("|");
          if (!word.trim()) {
            // 忽略空行
          } else if (tmpWordArr.length == 2) {
            // 用|分隔2行的，即为短语
            const aWord = tmpWordArr[0];
            const aChinese = tmpWordArr[1];
            wordListObj[aWord] = {
              word: aWord,
              chinese: aChinese,
            };
          } else if (regUnit.test(word)) {
            // 表示当前行为单元
            const unitArr = word.match(regUnit);
            if (unitArr.length > 2) {
              curUnit = unitArr[2];
            }
          } else {
            let realWord,
              pronounce,
              chinese,
              dataType = 1;

            if (regWord.test(word)) {
              // 单词 + /音标/ + 中文 正则
              const wordArr = word.match(regWord);
              if (wordArr.length == 4) {
                realWord = wordArr[1];
                pronounce = wordArr[2];
                chinese = wordArr[3].replace(/ /g, "");
              }
            } else if (regWord3.test(word)) {
              // 单词 + 中文  + [音标] 正则
              const wordArr = word.match(regWord3);
              if (wordArr.length == 4) {
                realWord = wordArr[1];
                pronounce = "/" + wordArr[3] + "/";
                chinese = wordArr[2].replace(/ /g, "");
              }
            } else if (regWord2.test(word)) {
              // 单词 + [音标] + 中文 正则
              const wordArr = word.match(regWord2);
              if (wordArr.length == 4) {
                realWord = wordArr[1];
                pronounce = wordArr[2];
                chinese = wordArr[3].replace(/ /g, "");
              }
            } else if (regPhrase.test(word)) {
              dataType = 2;
              // 短语 + 中文
              const wordArr = word.match(regPhrase);
              if (wordArr.length == 3) {
                realWord = wordArr[1];
                pronounce = "";
                chinese = wordArr[2].replace(/ /g, "");
              }
            }
            if (realWord && chinese) {
              if (!this.form.wordType) {
                this.form.wordType = wordType;
              }
              if (!this.form.chinese) {
                this.form.chinese = chinese;
              }
              if (!this.form.pronounce) {
                this.form.pronounce = pronounce;
              }
              wordListObj[realWord] = {
                word: realWord,
                pronounce: pronounce,
                chinese: chinese,
                dataType: dataType,
                sortNo: sortNo++,
                unit: curUnit,
              };
            }
          }
        }
      }

      if (curUnit) {
        this.form.unit = curUnit;
      }

      this.$refs["form"].validate((valid) => {
        if (valid) {
          if (this.form.id != null) {
            updateLesson(this.form).then((response) => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            Object.keys(wordListObj).forEach(async (p) => {
              const obj = wordListObj[p];
              obj.grade = this.form.grade;
              obj.unit = obj.unit ? obj.unit : this.form.unit;
              obj.term = this.form.term;
              await addLesson(obj).then((response) => {});
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
        .confirm('是否确认删除小学英语单词词组编号为"' + ids + '"的数据项？')
        .then(function () {
          return delLesson(ids);
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
        "app/lesson/export",
        {
          ...this.queryParams,
        },
        `英语单词短语_${this.parseTime(new Date(), "{y}{m}{d}{h}{i}{s}")}.xlsx`
      );
    },
    async handleListen(isPronounce) {
      const pageSize = this.queryParams.pageSize;
      this.queryParams.pageSize = 400;
      this.getList(async () => {
        this.queryParams.pageSize = pageSize;
        // 创建异步任务函数
        const taskFunc = (word, timeout) => {
          return new Promise((resolve, reject) => {
            try {
              setTimeout(() => {
                window.responsiveVoice.speak(
                  word,
                  isPronounce ? "UK English Female" : "Chinese Female",
                  {
                    onend: () => {
                      resolve("ok");
                    },
                  }
                );
              }, timeout);
            } catch {
              reject("error");
            }
          });
        };
        this.isListening = true;
        for (let p of this.lessonList) {
          for (let t of [3, 5, 10]) {
            if (this.isExit) {
              break;
            }
            await taskFunc(isPronounce ? p.word : p.chinese, 1000 * t);
          }
        }
        this.isListening = false;
      });
    },
    handlePrint(isPrintPronounce) {
      let printTypeName = "";
      if (isPrintPronounce) {
        printTypeName = "单词短语音标"
      }
      else  {
        printTypeName = "单词短语中文"
      }

      const queryParams = { ...this.queryParams, pageNum: 1, pageSize: 100000 };
      // 导出PDF,用于书写
      this.download(
        "app/lesson/pdf",
        {
          ...queryParams,
          isPrintPronounce: isPrintPronounce,
        },
        `${printTypeName}_${this.parseTime(new Date(), "{y}{m}{d}{h}{i}{s}")}.pdf`
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
