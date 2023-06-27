package com.kbstar.service;

import com.kbstar.dto.Cust;
import com.kbstar.dto.Gym;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.CustMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Slf4j
@Service
public class CustService implements KBService<String, Cust> {

    @Autowired
    CustMapper mapper;

    @Override
    public void register(Cust cust) throws Exception {
        mapper.insert(cust);
    }

    @Override
    public void remove(String s) throws Exception {
        mapper.delete(s);
    }

    @Override
    public void modify(Cust cust) throws Exception {
        mapper.update(cust);
    }

    @Override
    public Cust get(String s) throws Exception {
        return mapper.select(s);
    }

    @Override
    public List<Cust> get() throws Exception {
        return mapper.selectall();
    }

//    public List<Gym> getByTypeNo(Integer typeNo) throws Exception {
//        return mapper.selectByTypeNo(typeNo);
//    }

    public Optional<Cust> findByEmail(String custEmail) throws Exception {
        return mapper.findByEmail(custEmail);
    }

    public void register_social(Cust cust) throws Exception {
        mapper.insert_social(cust);
    }

    public void update_social(Cust c) throws Exception {
        mapper.update_social(c);
    }

    public void update_social_name(Cust c) throws Exception {
        mapper.update_social_name(c);
    }
    public void updatePwd(Cust cust) throws Exception {
        mapper.updatePwd(cust);
    }

    public void updateCustImgName(Cust cust) throws Exception {
        mapper.updateCustImgName(cust);
        ;
    }


//    public void updateInfo(String custPhone, String sportsType, String sportsClasstype, String custSido, String custSigungu) {
//      mapper.updateInfo(custPhone, sportsType, sportsClasstype, custSido, custSigungu);
//    }
    public void updateInfo(Cust cust) {
        mapper.updateInfo(cust);
    }

    // 인보 : 마케팅동의 상태 변경
    public void updateNoti(Cust cust) {
        mapper.updateNoti(cust);
    }
    public void clearNoti(Cust cust) {
        mapper.clearNoti(cust);
    }
    public void reUpdateNoti(Cust cust) {
        mapper.reUpdateNoti(cust);
    }
}