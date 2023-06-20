package com.kbstar.controller;

import com.kbstar.dto.Chart;
import com.kbstar.dto.Gym;
import com.kbstar.dto.Ticket;
import com.kbstar.service.ChartService;
import com.kbstar.service.TicketService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Slf4j
@Controller
public class MainController {

    @Autowired
    ChartService chartService;

    @RequestMapping("/")
    public String main(Model model, HttpSession session) throws Exception {

        Integer yesterdayTotal = null;
        Integer todayTotal = null;

        Integer yesterdayCTotal = null;
        Integer todayCTotal = null;

        List<Chart> trainerTotalList = null;
        //Integer trainerTotalM = null;

        Gym gym = (Gym) session.getAttribute("logingym");

//        log.info("_--------------------------------------------test---------------");
//        log.info(String.valueOf(gym));


        if (gym == null) {
            return "redirect:/unloggedinmain";
        }

        yesterdayTotal = chartService.getYesterdayTotal(gym.getGymNo());
        todayTotal = chartService.getTodayTotal(gym.getGymNo());

        yesterdayCTotal = chartService.getYesterdayCTotal(gym.getGymNo());
        todayCTotal = chartService.getTodayCTotal(gym.getGymNo());

        trainerTotalList = chartService.getTrainerTotal(gym.getGymNo());

        log.info("_--------------------------------------------test---------------");
        log.info(String.valueOf(gym.getGymNo()));
        log.info(String.valueOf(trainerTotalList));

//        log.info("_--------------------------------------------test---------------");
//        log.info(String.valueOf(yesterdayTotal));


        model.addAttribute("page", "Main");
        session.setAttribute("logingym", gym);
        model.addAttribute("yesterdayTotal", yesterdayTotal);
        model.addAttribute("todayTotal", todayTotal);
        model.addAttribute("yesterdayCTotal", yesterdayCTotal);
        model.addAttribute("todayCTotal", todayCTotal);
        model.addAttribute("totalList", trainerTotalList);
        return "index";
    }


    @RequestMapping("/unloggedinmain")
    public String unloggedinmain(Model model, HttpSession session) throws Exception {

        model.addAttribute("page", "Main");
        model.addAttribute("center", "unloggedinmain");
        return "index";
    }

}
