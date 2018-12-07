package com.glf.jxframe.common.utils;

public class StringUtil {

    // 检测字符串是否为空或null
    public static boolean isNullOrEmpty(String str) {
        if (str == null || str.length() == 0) {
            return true;
        }
        return false;
    }
}
