package com.kbstar.mapper;



import com.kbstar.dto.Class;
import com.kbstar.dto.Purchase;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface PurchaseMapper extends KBMapper<Integer, Purchase> {

}
