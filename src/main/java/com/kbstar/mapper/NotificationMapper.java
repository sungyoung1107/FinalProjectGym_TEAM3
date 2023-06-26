package com.kbstar.mapper;

import com.kbstar.dto.Notification;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface NotificationMapper extends KBMapper<Integer, Notification> {
    public List<Notification> getMyNoti(Integer custNo); // 특정 고객 1명이 가지고 있는 알림내역 조회하기
    public List<Notification> selectNotiType(); // 특정 고객 1명의 type별 알림내역 조회
}