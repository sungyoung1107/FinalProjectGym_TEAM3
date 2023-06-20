package com.kbstar.mapper;

import com.kbstar.dto.Admin;
import com.kbstar.dto.Trainer;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface AdminMapper extends KBMapper<String, Admin> {

}
