package com.kbstar.controller;

import com.kbstar.dto.Coupon;
import com.kbstar.service.CouponService;
import com.kbstar.util.PushNotificationUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Random;

@Slf4j
@Component
public class ScheduleController {

    // cronJobDailyUpdate()에 의해 몇초마다 집계된 데이터를 보낼 때 사용
    @Autowired
    private SimpMessageSendingOperations messagingTemplate;

    @Autowired
    CouponService couponService;

    @Autowired
    private PushNotificationUtil pushNotificationUtil;

    // Annotation이 중요, 함수명이 중요한 것이 아님
    // 3초마다 작업해서 관리자 화면에 찍자!!!
    @Scheduled(cron = "*/3 * * * * *")
    public void custJoinUpdate() {

    }

//     15초마다 db를 긁어오자
//    @Scheduled(cron = "*/15 * * * * *")
//    public void custCompletedUpdate() throws Exception {
//
//        List<Coupon> target_list = null;
//
//        // 쿠폰 발송 대상인 cust를 긁어온다. cust 1개만 나오게 할거얌.........
//        target_list = couponService.getCouponcust_completed();
//
//        log.info("==상태를 봐야겠음==" + target_list);
//
////        if (target_list != null && !target_list.isEmpty()) {
//        if (target_list != null) {
//            for (Coupon item : target_list) {
//                log.info("=== 쿠폰 대상 번호는 === " + item.getCustNo() + "=====");
//                log.info("=== 쿠폰 대상 이름은 === " + item.getCustName() + "=====");
//                couponService.getCouponcust_update(item);
//                // 푸쉬 알람은 그냥 1번만 보낼거야!!!!! -.-;; 기기의 토큰을 개별적으로 얻어와야 하는데 무리데쓰스
//                // 무조건 Coupon 1개만 나오게 할것임 for문 상관 없음
//                pushNotificationUtil.sendCommonMessage("Open Coupon Box", "Open Coupon Box", "/coupon/show");
//            }
//        }
//    }

}

/*
    초 분 시 일 월 요일
cron = "*  *  *  *  *  *" */

//       0 0 * * * * : 매 시 0분 0초에 작업
//       */15 * * * * * : 매 15초마다 작업
//       0 0 0 1,8,17,26 * * : 매달 1, 8, 17, 26일 자정에 작업
//       0 0 10-20 * * * : 매일 10시 ~ 20시 한시간 간격으로 작업
//       0 0 9-18 * * 1-5 : 월 ~ 금(평일) 9 ~ 18시 매 정각에 작업
//       0 0 */3 4 * * : 매달 4일에 3시간 간격으로 작업
