//package com.kbstar.ncp;
//
//import com.kbstar.util.CFRCelebrityUtil;
//import lombok.extern.slf4j.Slf4j;
//import org.json.simple.JSONObject;
//import org.json.simple.parser.ParseException;
//import org.junit.jupiter.api.Test;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.boot.test.context.SpringBootTest;
//
//@Slf4j
//@SpringBootTest
//class CFRCelebrityTests {
//
//    @Value("${uploadimgdir}")
//   String imgpath;
//
//    // component이니 걸 수 있음..
//    @Autowired
//    CFRCelebrityUtil celebrityUtil;
//
//    @Test
//    void contextLoads() throws ParseException {
//        String imgname = "man.jpg";
//        JSONObject result = (JSONObject) celebrityUtil.getResult(imgpath, imgname);
//        log.info(result.toJSONString());
//    }
//}
