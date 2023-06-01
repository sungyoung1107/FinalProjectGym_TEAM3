package com.kbstar.mapper;

import com.kbstar.dto.Trainer;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface TrainerMapper extends KBMapper<Integer, Trainer> {

}
