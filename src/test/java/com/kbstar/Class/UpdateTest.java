package com.kbstar.Class;

import com.kbstar.dto.Class;
import com.kbstar.service.ClassService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateTest {
    @Autowired
    ClassService service;
    @Test
    void contextLoads() {
        Class c = new Class(3,3, "오세요오세요","2023-06-15","12:00","13:00",3,0,"1","1");
        try {
            service.modify(c);
            service.get();
        } catch (Exception e) {
            log.info("오류");
        }

    }

}
