package com.kbstar.mapper;


import com.kbstar.dto.MySchedule;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface MyScheduleMapper extends KBMapper<Integer, MySchedule> {

    public List<MySchedule> getMembers(Integer classNo) throws Exception;

    // 예약한 수업 취소
    public void cancelClass(MySchedule my) throws Exception;

    // 수업취소하면 고객 예약에서 운동 취소여부를 '여'로 바꿔줌
    public void cancel_update_sheduleCanceled(MySchedule my) throws Exception;

    // 수업취소하면 수업정보에 참가인원을 -1 해줌
    public void cancel_update_classJoin(MySchedule my) throws Exception;

    // 수업취소하면 구매 이용권에 사용횟수를 -1 해줌
    public void cancel_update_usedCnt(MySchedule my) throws Exception;

    // 운동완료로 변경
    public void update_completed_1(Integer myscheduleNo) throws Exception;

    // 운동완료 취소로 변경
    public void update_completed_0(Integer myscheduleNo) throws Exception;

}
