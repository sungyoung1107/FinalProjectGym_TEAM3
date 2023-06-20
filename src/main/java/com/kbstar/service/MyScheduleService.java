package com.kbstar.service;

import com.kbstar.dto.MySchedule;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.MyScheduleMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Slf4j
@Service
public class MyScheduleService implements KBService<Integer, MySchedule> {

    @Autowired
    MyScheduleMapper mapper;

    public List<MySchedule> getMembers(Integer classNo) throws Exception {
        return mapper.getMembers(classNo);
    }

    // 예약한 수업 취소
    public void cancelClass(MySchedule my) throws Exception {
        mapper.cancelClass(my);
    }

    // 수업취소하면 고객 예약에서 운동 취소여부를 '여'로 바꿔줌
    public void cancel_update_sheduleCanceled(MySchedule my) throws Exception {
        mapper.cancel_update_sheduleCanceled(my);
    }

    // 수업취소하면 수업정보에 참가인원을 -1 해줌
    public void cancel_update_classJoin(MySchedule my) throws Exception {
        mapper.cancel_update_classJoin(my);
    }

    // 수업취소하면 구매 이용권에 사용횟수를 -1 해줌
    public void cancel_update_usedCnt(MySchedule my) throws Exception {
        mapper.cancel_update_usedCnt(my);
    }

    @Override
    public void register(MySchedule mySchedule) throws Exception {

    }

    @Override
    public void remove(Integer integer) throws Exception {

    }

    @Override
    public void modify(MySchedule mySchedule) throws Exception {
        mapper.update(mySchedule);
    }


    @Override
    public MySchedule get(Integer integer) throws Exception {
        return null;
    }

    @Override
    public List<MySchedule> get() throws Exception {
        return null;
    }

    // 운동완료로 변경
    public void update_completed_1(Integer myscheduleNo) throws Exception{
        mapper.update_completed_1(myscheduleNo);
    }

    // 운동완료 취소로 변경
    public void update_completed_0(Integer myscheduleNo) throws Exception{
        mapper.update_completed_0(myscheduleNo);
    }

}
