package com.kbstar.mapper;

import com.kbstar.dto.Gym;
import com.kbstar.dto.Trainer;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface TrainerMapper extends KBMapper<Integer, Trainer> {

    public List<Trainer> getmytrainer(Integer gymNo);

}
