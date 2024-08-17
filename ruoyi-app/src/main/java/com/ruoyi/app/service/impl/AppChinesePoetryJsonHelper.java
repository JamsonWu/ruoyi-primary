package com.ruoyi.app.service.impl;

import com.ruoyi.common.core.text.Convert;
import com.ruoyi.common.utils.StringUtils;

public class AppChinesePoetryJsonHelper {
    protected String processData(String data, String categoryId){
        if (StringUtils.isNull(data) || StringUtils.isEmpty(data)) {
            return  StringUtils.EMPTY;
        }

        String res =data.replace("（","(")
                .replace("）", ")")
                .replace("：",":")
                .replace("。。","。")
                .replace("；",";");

        if (Convert.toInt(categoryId) <= 3) {
            char lastChar = res.charAt(res.length() - 1);
            // 如果字符串末尾不是句号、问号或感叹号，则添加句号
            if (lastChar != '。' && lastChar != '？' && lastChar != '?' && lastChar != '!' && lastChar != '！') {
                return  res + "。";
            }
        }

        return res + StringUtils.SPACE;
    }
}
