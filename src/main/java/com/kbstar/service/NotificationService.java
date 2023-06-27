package com.kbstar.service;

import com.kbstar.dto.Notification;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.NotificationMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class NotificationService implements KBService<Integer, Notification> {

    @Autowired
    NotificationMapper notificationMapper;

    @Override
    public void register(Notification notification) throws Exception {
        notificationMapper.insert(notification);
    }

    @Override
    public void remove(Integer integer) throws Exception {
        notificationMapper.delete(integer);
    }

    @Override
    public void modify(Notification notification) throws Exception {
        notificationMapper.update(notification);
    }

    @Override
    public Notification get(Integer integer) throws Exception {
        return notificationMapper.select(integer);
    }

    @Override
    public List<Notification> get() throws Exception {
        return notificationMapper.selectall();
    }

    // 특정 고객 1명이 가지고 있는 알림내역 조회하기
    public List<Notification> getMyNoti(Integer custNo) throws Exception {
        return notificationMapper.getMyNoti(custNo);
    }
//    // 특정 고객 1명의 type별 알림내역 조회
//    public List<Notification> selectNotiType() throws Exception {
//        return notificationMapper.selectNotiType();
//    }

}
