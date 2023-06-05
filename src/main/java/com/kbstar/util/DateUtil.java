package com.kbstar.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

// 5.1~5.3 선택하면 3일 0시로 setting이 되기 때문에, 3일 전체를 인식 시키기 위한 util
public class DateUtil {
    public static String getDateStr(String str){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Date date = null;
        try {
            date = format.parse(str);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
        date.setDate(date.getDate());
        String datestr = format.format(date);
        return datestr;
    }

    public static String getTimeStr(String str) {
        SimpleDateFormat inputFormat = new SimpleDateFormat("HH:mm");
        SimpleDateFormat outputFormat = new SimpleDateFormat("HH:mm:ss");
        Date time = null;
        try {
            time = inputFormat.parse(str);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
        return outputFormat.format(time);
    }

}