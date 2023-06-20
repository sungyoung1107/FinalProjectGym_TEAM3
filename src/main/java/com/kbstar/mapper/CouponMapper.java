package com.kbstar.mapper;

import com.kbstar.dto.Admin;
import com.kbstar.dto.Coupon;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface CouponMapper extends KBMapper<Integer, Coupon> {

}
