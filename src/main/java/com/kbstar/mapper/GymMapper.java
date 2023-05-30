package com.kbstar.mapper;

import com.kbstar.dto.Gym;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface GymMapper extends KBMapper<String, Gym> {
}
