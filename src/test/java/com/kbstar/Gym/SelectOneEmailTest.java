package com.kbstar.Gym;

import com.kbstar.service.GymService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class SelectOneEmailTest {
    @Autowired
    GymService service;
    @Test
    void contextLoads() {
        try {
            service.getMyemail("esy1107@naver.com");
        } catch (Exception e) {
            log.info("오류");
            e.printStackTrace();
        }
    }

}
