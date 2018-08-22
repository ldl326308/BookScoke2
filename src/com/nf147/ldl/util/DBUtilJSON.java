package com.nf147.ldl.util;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.nf147.ldl.entity.Book;

import java.io.IOException;
import java.text.SimpleDateFormat;

public class DBUtilJSON {

    /**
     * 序列化成JSON对象
     * */
    public static String toJson(Object obj){
        ObjectMapper mapper = new ObjectMapper();
        String str = null;
        try {
            str = mapper.writeValueAsString(obj);

        } catch (JsonProcessingException e) {
            // TODO 自动生成的 catch 块
            e.printStackTrace();
        }
        return str;
    }


    /**
     * 反序列化成字符串
     * */
    public static <T> T toObject(String json,Class<T> valueType){
        //对象映射器
        ObjectMapper mapper = new ObjectMapper();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        mapper.setDateFormat(sdf);
        T result = null;
        try {
            result = mapper.readValue(json, valueType);
        } catch (JsonParseException e) {
            // TODO 自动生成的 catch 块
            e.printStackTrace();
        } catch (JsonMappingException e) {
            // TODO 自动生成的 catch 块
            e.printStackTrace();
        } catch (IOException e) {
            // TODO 自动生成的 catch 块
            e.printStackTrace();
        }

        return result;

    }
}
