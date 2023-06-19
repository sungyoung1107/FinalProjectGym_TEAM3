package com.kbstar.service;


import com.kbstar.dto.Class;
import com.kbstar.dto.Purchase;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.PurchaseMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class PurchaseService implements KBService<Integer, Purchase>{


    @Override
    public void register(Purchase purchase) throws Exception {

    }

    @Override
    public void remove(Integer integer) throws Exception {

    }

    @Override
    public void modify(Purchase purchase) throws Exception {

    }

    @Override
    public Purchase get(Integer integer) throws Exception {
        return null;
    }

    @Override
    public List<Purchase> get() throws Exception {
        return null;
    }
}
