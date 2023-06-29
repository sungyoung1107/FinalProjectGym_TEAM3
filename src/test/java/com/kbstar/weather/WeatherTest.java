package com.kbstar.weather;

import com.kbstar.util.WeatherUtil;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.junit.jupiter.api.Test;

@Slf4j
public class WeatherTest {

    @Test
    void contextLoads() throws Exception {
//        JSONObject result = null;
//        log.info(WeatherUtil.getWeather1("108").toString()); // 이번주 날씨
//        result = (JSONObject) WeatherUtil.getWeather2("108"); // 이번주 날씨
//        result = (JSONObject) WeatherUtil.getWeather3("108"); // 시간별
//        log.info(String.valueOf(result));

        JSONObject result = (JSONObject) WeatherUtil.getWeather3("108"); // 시간별

        JSONObject response = (JSONObject) result.get("response");
        JSONObject body = (JSONObject) response.get("body");
        JSONObject items = (JSONObject) body.get("items");
        JSONArray item = (JSONArray) items.get("item");
        JSONObject lastItem = (JSONObject) item.get(item.size() - 1);

        JSONObject lastObject = new JSONObject();
        lastObject.put("Temperatures", lastItem.get("ta")); // 기온
        lastObject.put("Precipitation", lastItem.get("rn")); // 강수량
        lastObject.put("Wind", lastItem.get("ws")); // 풍속
        lastObject.put("Humidity", lastItem.get("hm")); // 습도

        // {"Wind":"3.6","Precipitation":"","Humidity":"78","Temperatures":"24.5"}

        log.info(lastObject.toJSONString());
    }

}
