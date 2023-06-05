package com.kbstar.Class;

import com.kbstar.service.ClassService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import com.kbstar.dto.Class;

@Slf4j
@SpringBootTest
class SelectGymOneTest {
    @Autowired
    ClassService service;
    @Test
    void contextLoads() {
        try {
            service.selecGymclass(5);
        } catch (Exception e) {
            log.info("오류");
            e.printStackTrace();
        }
    }

}
