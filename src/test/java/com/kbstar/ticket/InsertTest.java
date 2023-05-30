package com.kbstar.ticket;

import com.kbstar.dto.Ticket;
import com.kbstar.service.TicketService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DuplicateKeyException;

import java.util.Date;

@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    TicketService service;
    @Test
    void contextLoads() {

        Ticket obj = new Ticket(0, 0, "1", "1", 1,
                1, "1", 1, 1, 1, 10,
                1000, "a.jpg", "1", "1");
        try {
            service.register(obj);
            service.get();
            log.info("등록 정상..");
        } catch (Exception e) {

            if(e instanceof DuplicateKeyException){  //중복된 키값에 대한 예외처리 필수
                log.info("ID가 중복되었습니다-------------------------------------");
            }else{
                log.info("시스템 장애입니다-------------------------------------");
                e.printStackTrace();
            }
        }
    }

}
