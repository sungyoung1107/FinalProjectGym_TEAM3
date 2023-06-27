package com.kbstar.mapper;

import com.kbstar.dto.Cust;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
@Mapper
public interface CustMapper extends KBMapper<String, Cust> {

    Optional<Cust> findByEmail(String custEmail);

    public void insert_social(Cust c) throws Exception;

    public void update_social(Cust c) throws Exception;
    public void update_social_name(Cust c) throws Exception;
    public void updateCustImgName(Cust cust) throws Exception;


   // public void updateInfo(String custPhone, String sportsType, String sportsClasstype, String custSido, String custSigungu);
    public void updateInfo(Cust cust);
    public void updatePwd(Cust cust);

    // 인보 : 마케팅동의 상태 변경
    public void updateNoti(Cust cust);
    public void clearNoti(Cust cust);
    public void reUpdateNoti(Cust cust);
}
