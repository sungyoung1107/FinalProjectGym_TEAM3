package com.kbstar.mapper;


import com.kbstar.dto.GymMachine;
import com.kbstar.dto.MachineSearch;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
@Mapper
public interface GymMachineMapper extends KBMapper<Integer, GymMachine> {
    public List<GymMachine> selectExerciseType(MachineSearch ms); // 운동부위별로 적합한 기계만 가져오기
    public List<GymMachine> selectGymMachine(); // 특정 센터가 가지고있는 기계들 가져오기

}