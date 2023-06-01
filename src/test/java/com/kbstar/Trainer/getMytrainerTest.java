package com.kbstar.Trainer;

import com.kbstar.service.GymService;
import com.kbstar.service.TrainerService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
public class getMytrainerTest {

    @Autowired
    TrainerService service;
    @Test
    void contextLoads() {
        try {
            service.getMytrainer(1);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
