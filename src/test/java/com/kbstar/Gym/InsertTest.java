package com.kbstar.Gym;

import com.kbstar.dto.Gym;
import com.kbstar.service.GymService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DuplicateKeyException;

@Slf4j
@SpringBootTest
class InsertTest {
    @Autowired
    GymService service;
    @Test
    void contextLoads() {
        Gym gym = new Gym("mung","1234","이뭉치","010-1234-5678","12345","경기도","수원시","뭉치집","mung.jpg","123-45-67890");
        try {
            service.register(gym);
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
