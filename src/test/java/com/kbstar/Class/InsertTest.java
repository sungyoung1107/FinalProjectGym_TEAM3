package com.kbstar.Class;

import com.kbstar.dto.Class;
import com.kbstar.service.ClassService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DuplicateKeyException;

@Slf4j
@SpringBootTest
class InsertTest {
    @Autowired
    ClassService service;
    @Test
    void contextLoads() {

//        Class c = new Class(1, 1,"밥칼로리순싹클래스","2023-06-02","10:00","11:00",10,"1","1");

        try {
//            service.register(c);
            service.get();
        } catch (Exception e) {
            if(e instanceof DuplicateKeyException){
                log.info("ID가 중복 되었습니다.-------------------------------");
            }else{
                log.info("시스템 장애입니다.----------------------------------");
            }
        }
    }

}
