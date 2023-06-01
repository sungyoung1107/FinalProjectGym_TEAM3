package com.kbstar.controller;


import com.kbstar.dto.Gym;
import com.kbstar.dto.Ticket;
import com.kbstar.service.GymService;
import com.kbstar.service.TicketService;
import com.kbstar.util.FileUploadUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/ticket")
public class TicketController {

    @Autowired
    TicketService ticketService;
    @Autowired
    GymService gymService;
    String dir = "ticket/";

    @Value("${uploadimgdir}")
    String imgdir;

    @RequestMapping("/add")
    public String add(Model model){
        model.addAttribute("page", "Ticket Register");
        model.addAttribute("center", dir+"add");
        return "index";
    }

    @RequestMapping("/addimpl")
    public String addimpl(Model model, Ticket ticket) throws Exception {

        //log.info("aaaaaaaaa :"+ticket.getImg());

        MultipartFile mf = ticket.getImg();
        String imgname = mf.getOriginalFilename();
//        log.info("----------------------------------------");
//        log.info(imgname);
//        log.info("----------------------------------------");
        ticket.setTicketImgname(imgname);
        ticketService.register(ticket);
        FileUploadUtil.saveFile(mf,imgdir);
        return "redirect:/";
    }


    @RequestMapping("/all")
    public String all(Model model, HttpSession session) throws Exception {
        List<Ticket> list = null;
        //세션 받아와서 custid = session. esraoij
        //cust cust = custService.get(custid)
        //aa=cust.getGymid
        //servuce,get(aa)
        //session.getAttribute()으로 session 로그인된 사람 아이디 가져오고
        //로그인된 사람 아이디로 로그인된 사람 모든정보 get(id)로 가져오고
        //로그인된 사람모든정보에서 gymid를 빼서
        //get(id)로 뿌리세요

        Gym gym = (Gym) session.getAttribute("logingym");
        list = ticketService.get();
        model.addAttribute("clist", list);
        session.setAttribute("logingym", gym);
        model.addAttribute("page", "Ticket");
        model.addAttribute("center", dir+"all");
        return "index";
    }


}
