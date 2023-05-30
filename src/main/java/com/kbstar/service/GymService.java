package com.kbstar.service;

import com.kbstar.dto.Gym;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.GymMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class GymService implements KBService<String, Gym> {

    @Autowired
    GymMapper mapper;

    @Override
    public void register(Gym gym) throws Exception {
        mapper.insert(gym);
    }

    @Override
    public void remove(String s) throws Exception {
        mapper.delete(s);
    }

    @Override
    public void modify(Gym gym) throws Exception {
        mapper.update(gym);
    }

    @Override
    public Gym get(String s) throws Exception {
        return mapper.select(s);
    }

    @Override
    public List<Gym> get() throws Exception {
        return mapper.selectall();
    }
}
