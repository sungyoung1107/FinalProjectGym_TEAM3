package com.kbstar.mapper;

import com.kbstar.dto.Chart;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
@Mapper
public interface ChartMapper {

    List<Chart> selectDailyTotal();
    List<Chart> selectMonthlyTotal();

    Integer selectSumYesterday(Integer gymNo);

    Integer selectSumToday(Integer gymNo);

    Integer selectCSumYesterday(Integer gymNo);

    Integer selectCSumToday(Integer gymNo);

    List<Chart> selectSumTrainer(Integer gymNo);

    Integer selectSumTrainerM(Integer trainerNo);

//    List<Chart> selectAllMonthlyTotal();
//
//    List<Chart> selectCenterMonthlyTotal(Integer gymNo);

     ArrayList<Integer> selectAllMonthlyTotal();




}
