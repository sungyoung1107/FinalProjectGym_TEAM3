package com.kbstar.service;


import com.kbstar.dto.GymMachine;
import com.kbstar.dto.MachineSearch;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.GymMachineMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class GymMachineService implements KBService<Integer, GymMachine> {

    @Autowired
    GymMachineMapper gymMachineMapper;

    @Override
    public void register(GymMachine gymMachine) throws Exception {
        gymMachineMapper.insert(gymMachine);
    }

    @Override
    public void remove(Integer integer) throws Exception {
        gymMachineMapper.delete(integer);
    }

    @Override
    public void modify(GymMachine gymMachine) throws Exception {
        gymMachineMapper.update(gymMachine);
    }

    @Override
    public GymMachine get(Integer integer) throws Exception {
        return gymMachineMapper.select(integer);
    }

    @Override
    public List<GymMachine> get() throws Exception {
        return gymMachineMapper.selectall();
    }
    // 운동부위별로 적합한 기계만 가져오기
    public List<GymMachine> selectExerciseType(MachineSearch ms) throws Exception {
        return gymMachineMapper.selectExerciseType(ms);
    }
    // 특정 센터가 가지고있는 기계들 가져오기
    public List<GymMachine> selectGymMachine(Integer gymNo) throws Exception {
        return gymMachineMapper.selectGymMachine();
    }
}
