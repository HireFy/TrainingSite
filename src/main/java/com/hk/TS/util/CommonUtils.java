package com.hk.TS.util;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/*常用方法*/
public class CommonUtils {

    private static Logger logger = LogManager.getLogger(CommonUtils.class);

    /*返回一个没有空值的map*/
    public Map<String, Object> cleanEmptyValue(Map<String, Object> map) {
        Map<String, Object> cleanedMap = new HashMap<>();

        for (Map.Entry entry : map.entrySet()) {
            if (entry.getValue() != "" && entry.getValue()!= null) {
                cleanedMap.put((String) entry.getKey(), entry.getValue());
            }
        }

        return cleanedMap;
    }

    public static int getPageCount(int totalCount, int pageSize){
        int pageCount = totalCount / pageSize;
        if (totalCount % pageSize != 0) {
            pageCount += 1;
        }
        return pageCount;
    }

}
