import { getDicts } from "@/api/system/dict/data";
import { pinyin, customPinyin } from 'pinyin-pro';
import MultiPinyinDict from './multiPinyinDict';
customPinyin(MultiPinyinDict);
export default {
  methods: {
    getPinyin(word){
       return pinyin(word)
    },
    getDictData(dictTypeArr) {
      const dictTypeDataOjb = this.useDict(dictTypeArr);
      dictTypeArr.forEach((p) => {
        this[p] = dictTypeDataOjb[p];
      });
    },
    useDict(args) {
      const res = ref({});
      return (() => {
        args.forEach((dictType, index) => {
          res.value[dictType] = [];
          getDicts(dictType).then((resp) => {
            res.value[dictType] = resp.data.map((p) => ({
              label: p.dictLabel,
              value: p.dictValue,
              elTagType: p.listClass,
              elTagClass: p.cssClass,
            }));
          });
        });
        return toRefs(res.value);
      })();
    },
    getGradeAndTermName(row) {
      if (!row) {
        return ""
      }
      const CHINESE_NUMBERS = [
        "一",
        "二",
        "三",
        "四",
        "五",
        "六",
        "七",
        "八",
        "九",
      ];
      const CHINESE_TERM = ["上", "下"]
      return CHINESE_NUMBERS[row.grade - 1]+ CHINESE_TERM[row.term - 1] 
    },
     
    gradeTermUnitLessonFormat(row) {
      const CHINESE_NUMBERS = [
        "一",
        "二",
        "三",
        "四",
        "五",
        "六",
        "七",
        "八",
        "九",
      ];
      const CHINESE_TERM = ["上", "下"];
      if (row) {
        let unit = "";
        let lesson = "";
        if (row.unit) {
          unit = row.unit + "单元";
        }
        if (row.lessonNo) {
          lesson = row.lessonNo + "课";
        }
        return (
          CHINESE_NUMBERS[row.grade - 1] +
          CHINESE_TERM[row.term - 1] +
          unit +
          lesson
        );
      }
    }
  },
};
