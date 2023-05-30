package com.kbstar.controller;


import com.kbstar.dto.Ticket;
import com.kbstar.service.TicketService;
import com.kbstar.util.FileUploadUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

@Slf4j
@Controller
@RequestMapping("/ticket")
public class TicketController {

    @Autowired
    TicketService ticketService;

    String dir = "ticket/";

    @Value("${uploadimgdir}")
    String imgdir;


    @RequestMapping("/add")
    public String add(Model model){
        model.addAttribute("center", dir+"add");
        return "index";
    }

    @RequestMapping("/addimpl")
    public String addimpl(Model model, Ticket ticket) throws Exception {
        MultipartFile mf = ticket.getImg();
        String imgname = mf.getOriginalFilename();
        log.info("----------------------------------------");
        log.info(imgname);
        log.info("----------------------------------------");
        ticket.setTicketImgname(imgname);
        ticketService.register(ticket);
        FileUploadUtil.saveFile(mf,imgdir);
        return "redirect:/ticket/add";
    }

}
