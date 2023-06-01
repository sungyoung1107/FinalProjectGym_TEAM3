package com.kbstar.service;


import com.kbstar.dto.Trainer;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.TrainerMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j  //log
@Service
public class TrainerService implements KBService<Integer, Trainer> {

    @Autowired
    TrainerMapper mapper;


    @Override
    public void register(Trainer trainer) throws Exception {
        mapper.insert(trainer);
    }

    @Override
    public void remove(Integer integer) throws Exception {
        mapper.delete(integer);
    }

    @Override
    public void modify(Trainer trainer) throws Exception {
        mapper.update(trainer);
    }

    @Override
    public Trainer get(Integer integer) throws Exception {
        return mapper.select(integer);
    }

    @Override
    public List<Trainer> get() throws Exception {
        return mapper.selectall();
    }

    public List<Trainer> getMytrainer(Integer integer) throws Exception {
        return mapper.getmytrainer(integer);
    }
}
