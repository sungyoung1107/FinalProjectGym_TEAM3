package com.kbstar.mapper;

import com.kbstar.dto.Ticket;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface TicketMapper extends KBMapper<Integer, Ticket> {

}
