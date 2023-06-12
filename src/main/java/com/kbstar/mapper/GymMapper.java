package com.kbstar.mapper;

import com.kbstar.dto.Gym;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface GymMapper extends KBMapper<Integer, Gym> {

    public Gym getmyemail(String gymEmail);

    public void deleteimg(Gym gym); // gym로 delete
    public void insertimg(Gym gym); // gym로 insert
}
