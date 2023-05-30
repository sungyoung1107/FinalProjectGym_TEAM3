package com.kbstar.service;



import com.kbstar.dto.Ticket;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.TicketMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j  //log
@Service
public class TicketService implements KBService<Integer, Ticket> {

    @Autowired
    TicketMapper mapper;

    @Override
    public void register(Ticket ticket) throws Exception {
        mapper.insert(ticket);
    }

    @Override
    public void remove(Integer i) throws Exception {
        mapper.delete(i);
    }

    @Override
    public void modify(Ticket ticket) throws Exception {
        mapper.update(ticket);
    }

    @Override
    public Ticket get(Integer i) throws Exception {
        return mapper.select(i);
    }

    @Override
    public List<Ticket> get() throws Exception {
        return mapper.selectall();
    }

}