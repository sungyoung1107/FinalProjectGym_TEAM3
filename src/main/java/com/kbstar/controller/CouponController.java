package com.kbstar.controller;


import com.kbstar.dto.Coupon;
import com.kbstar.dto.Gym;
import com.kbstar.dto.Ticket;
import com.kbstar.service.CouponService;
import com.kbstar.util.PushNotificationUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/coupon")
public class CouponController {

    String dir = "coupon/";

    @Autowired
    CouponService couponService;

    @Autowired
    private PushNotificationUtil pushNotificationUtil;
    @RequestMapping("/add")
    public String add(Model model) {
        model.addAttribute("page", "Coupon Register");
        model.addAttribute("center", dir + "add");
        return "index";
    }

    @RequestMapping("/addimpl")
    public String addimpl(Model model, Coupon coupon) throws Exception {

        log.info("쿠폰 등록 시작");
        
        int couponAmount = coupon.getCouponAmount(); // 발매수 추출

        // for문으로 돌린다.
        for (int i =0 ; i < couponAmount ; i++ ) {
            couponService.register(coupon);
        }

        return "redirect:/coupon/all";
    }

    @RequestMapping("/all")
    public String all(Model model, HttpSession session) throws Exception {
        log.info("쿠폰 리스트 시작");

        List<Coupon> list = null;

        list = couponService.get();
        model.addAttribute("coupon_list", list);
        model.addAttribute("page", "Coupon List");
        model.addAttribute("center", dir+"all");
        return "index";
    }

}
