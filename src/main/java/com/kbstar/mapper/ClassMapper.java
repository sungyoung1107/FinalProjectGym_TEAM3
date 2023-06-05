package com.kbstar.mapper;

import com.kbstar.dto.Class;
import com.kbstar.dto.Gym;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface ClassMapper extends KBMapper<Integer, Class> {

    public List<Class> selectgymclass(Integer gymNo);

    public List<Class> selectdayclass(Gym gym);

}
