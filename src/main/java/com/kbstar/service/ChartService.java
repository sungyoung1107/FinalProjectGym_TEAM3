package com.kbstar.service;

import com.kbstar.dto.Chart;
import com.kbstar.dto.Ticket;
import com.kbstar.mapper.ChartMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ChartService {

    @Autowired
    ChartMapper chartMapper;

    public List<Chart> getDailyTotal() throws Exception{
        return chartMapper.selectDailyTotal();
    };

    public List<Chart> getMonthlyTotal() throws Exception{
        return chartMapper.selectMonthlyTotal();
    };


    public Integer getYesterdayTotal(Integer integer) throws Exception {
        return chartMapper.selectSumYesterday(integer);
    }

    public Integer getTodayTotal(Integer integer) throws Exception {
        return chartMapper.selectSumToday(integer);
    }

    public Integer getYesterdayCTotal(Integer integer) throws Exception {
        return chartMapper.selectCSumYesterday(integer);
    }

    public Integer getTodayCTotal(Integer integer) throws Exception {
        return chartMapper.selectCSumToday(integer);
    }

    public Integer getTrainerTotalM(Integer integer) throws Exception {
        return chartMapper.selectSumTrainerM(integer);

    }

    public List<Chart> getTrainerTotal(Integer integer) throws Exception {
        return chartMapper.selectSumTrainer(integer);
    }

//    public List<Chart> getAllMonthlyTotal() throws Exception {
//        return chartMapper.selectAllMonthlyTotal();
//    }
//
//    public List<Chart> getCenterMonthlyTotal(Integer integer) throws Exception {
//        return chartMapper.selectCenterMonthlyTotal(integer);
//    }

    public ArrayList<Integer> getAllMonthlyTotal() {
        return chartMapper.selectAllMonthlyTotal();
    }


}
