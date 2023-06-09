package com.kbstar.Class;

import com.kbstar.service.ClassService;
import com.kbstar.service.GymService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class SelectTest {
    @Autowired
    ClassService service;
    @Test
    void contextLoads() {
        try {
            service.get();
        } catch (Exception e) {
            log.info("에러..");
            //e.printStackTrace();
        }
    }

}
