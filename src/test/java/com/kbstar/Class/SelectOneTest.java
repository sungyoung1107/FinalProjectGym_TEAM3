package com.kbstar.Class;

import com.kbstar.service.ClassService;
import com.kbstar.service.GymService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class SelectOneTest {
    @Autowired
    ClassService service;
    @Test
    void contextLoads() {
        try {
            service.get(5);
        } catch (Exception e) {
            log.info("오류");
            e.printStackTrace();
        }
    }

}
