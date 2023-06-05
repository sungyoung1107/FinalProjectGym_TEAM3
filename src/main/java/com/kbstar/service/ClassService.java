package com.kbstar.service;

import com.kbstar.dto.Class;
import com.kbstar.dto.Gym;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.ClassMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class ClassService implements KBService<Integer, Class> {

    @Autowired
    ClassMapper mapper;

    @Override
    public void register(Class aClass) throws Exception {
        mapper.insert(aClass);
    }

    @Override
    public void remove(Integer integer) throws Exception {
        mapper.delete(integer);
    }

    @Override
    public void modify(Class aClass) throws Exception {
        mapper.update(aClass);
    }

    @Override
    public Class get(Integer integer) throws Exception {
        return mapper.select(integer);
    }

    @Override
    public List<Class> get() throws Exception {
        return mapper.selectall();
    }

    public List<Class> selecGymclass(Integer integer) throws Exception {
        return mapper.selectgymclass(integer);
    }

    public List<Class> selecDayclass(Gym gym) throws Exception {
        return mapper.selectdayclass(gym);
    }
}
