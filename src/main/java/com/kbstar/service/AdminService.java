package com.kbstar.service;


import com.kbstar.dto.Admin;
import com.kbstar.dto.Trainer;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.AdminMapper;
import com.kbstar.mapper.TrainerMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j  //log
@Service
public class AdminService implements KBService<String, Admin> {

    @Autowired
    AdminMapper mapper;

    @Override
    public void register(Admin admin) throws Exception {

    }

    @Override
    public void remove(String s) throws Exception {

    }

    @Override
    public void modify(Admin admin) throws Exception {

    }

    @Override
    public Admin get(String s) throws Exception {
        return mapper.select(s);
    }

    @Override
    public List<Admin> get() throws Exception {
        return null;
    }

}
