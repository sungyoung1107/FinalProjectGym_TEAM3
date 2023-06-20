package com.kbstar.controller;

import com.kbstar.dto.Gym;
import com.kbstar.dto.MySchedule;
import com.kbstar.dto.Trainer;
import com.kbstar.dto.Class;
import com.kbstar.service.ClassService;
import com.kbstar.service.MyScheduleService;
import com.kbstar.service.TrainerService;
import com.kbstar.util.DateUtil;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/class")
public class ClassController {
    String dir = "class/";

    @Autowired
    TrainerService trainerService;
    @Autowired
    ClassService classService;
    @Autowired
    MyScheduleService myScheduleService;

    @RequestMapping("/add")
    public String add(Model model) {
        model.addAttribute("page", "Class Register");
        model.addAttribute("center", dir + "add");
        return "index";
    }

    @RequestMapping("/gettrainer")
    @ResponseBody
    public List<Trainer> gettrainer(Model model, Integer gymNo) throws Exception {
        List<Trainer> trainerlist = null;
        trainerlist = trainerService.getMytrainer(gymNo);
        return trainerlist;
    }


    @RequestMapping("/addimpl")
    public String addimpl(Model model, Class aclass) throws Exception {

        classService.register(aclass);

        return "redirect:/class/all";
    }

    @RequestMapping("/updateimpl")
    public String updateimpl(Model model, Class aclass) throws Exception {
        log.info("=== 클래스 업데이트 진입 ===");
        log.info("date를 찍어보자 " + aclass.getClassDate());

        try {
            classService.modify(aclass);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "redirect:/class/all";
    }

    @RequestMapping("/deleteimpl")
    public String deleteimpl(Model model, Class aclass) throws Exception {
        log.info("=== 클래스 삭제 진입 " + aclass.getClassNo() + "===");
        classService.remove(aclass.getClassNo());

        return "redirect:/class/all";
    }

    @RequestMapping("/all")
    public String all(Model model) {
        model.addAttribute("page", "Class Calender"); // 캘린더
        model.addAttribute("center", dir + "all"); // 캘린더
        return "index";
    }

    @RequestMapping("/gettime")
    @ResponseBody
    public Object gettime(Model model, String tdate, HttpSession session) throws Exception {

        Gym gym = null;
        int gymNo = 0;
        JSONArray ja = new JSONArray();
        // 세션에서 gym, gymNo 가져오기
        if (session != null) {
            gym = (Gym) session.getAttribute("logingym");
            gym.setClassDate(tdate); // 선택한 tdate set
            if (gym != null) {
                gymNo = gym.getGymNo();
                log.info("========== 세션의 gymNo는 " + gymNo + "============");
            }

            List<Class> list = null;
            list = classService.selecDayclass(gym);

            // Java Object ---> JSON
            // JSON(JavaScript Object Notation)
            // [시간1, 시간2, ... ]
//            for (Class obj : list) {
//                ja.add(obj.getClassStarttime()+"~"+obj.getClassEndtime()); // 수업시작시간 select하여 add
//            }
            // [ {classNo: , gymNo; , gymMasterCk: , trainerNo: , className: ,
            // classDate: , classStarttime: , classEndtime: , classMaximum: , classJoin: ,
            // classFullbooked: , sportsType: , sportsClasstype: }, {} ]
            for (Class obj : list) {
                JSONObject jo = new JSONObject();
                jo.put("classNo", obj.getClassNo());
                jo.put("gymNo", obj.getGymNo());
                jo.put("gymMasterCk", obj.getGymMasterCk());
                jo.put("trainerNo", obj.getTrainerNo());
                jo.put("trainerName", obj.getTrainerName()); // trainer 테이블과 조인
                jo.put("className", obj.getClassName());
                jo.put("classDate", obj.getClassDate());
                jo.put("classStarttime", obj.getClassStarttime());
                jo.put("classEndtime", obj.getClassEndtime());
                jo.put("classTime", obj.getClassStarttime() + "~" + obj.getClassEndtime());
                jo.put("classMaximum", obj.getClassMaximum());
                jo.put("classJoin", obj.getClassJoin());
                jo.put("classFullbooked", obj.getClassFullbooked());
                jo.put("sportsType", obj.getSportsType());
                jo.put("sportsClasstype", obj.getSportsClasstype());
                ja.add(jo);
            }

        }
        return ja;
    }

    @RequestMapping("/getClassdata")
    @ResponseBody
    public Object getClassdata(Model model, HttpSession session) throws Exception {

        Gym gym = null;
        int gymNo = 0;
        List<Class> list = null;
        JSONArray ja = new JSONArray();

        if (session != null) {
            gym = (Gym) session.getAttribute("logingym");
            if (gym != null) {
                gymNo = gym.getGymNo();
                log.info("========== 세션의 gymNo는 " + gymNo + "============");
            }

            list = classService.selecGymclass(gymNo);

            // Java Object ---> JSON
            // JSON(JavaScript Object Notation)
            // [{},{},{},...]
            for (Class obj : list) {
                JSONObject jo = new JSONObject();

                jo.put("title", obj.getClassName());
                jo.put("start", DateUtil.getDateStr(obj.getClassDate()) + "T" + DateUtil.getTimeStr(obj.getClassStarttime()));
                jo.put("end", DateUtil.getDateStr(obj.getClassDate()) + "T" + DateUtil.getTimeStr(obj.getClassEndtime()));

                if (obj.getClassFullbooked().equals("1")) { // 수업 마감시 빨간색
                    jo.put("className", "bg-gradient-danger");
                } else {
                    jo.put("className", "bg-gradient-success"); // 마감 안되었으면 초록색
                }
//                jo.put("url",obj.getUrl());
                ja.add(jo);
            }
        }
        return ja;
    }

    @RequestMapping("/getMembers")
    @ResponseBody
    public Object getMembers(Model model, Integer classNo) throws Exception {

        List<MySchedule> myClassmembers = null;
        JSONArray ja = new JSONArray();

        myClassmembers = myScheduleService.getMembers(classNo);

        for (MySchedule mySchedule : myClassmembers){
            JSONObject jo = new JSONObject();
            jo.put("myscheduleNo", mySchedule.getMyscheduleNo());
            jo.put("classNo", mySchedule.getClassNo());
            jo.put("scheduleCompleted", mySchedule.getScheduleCompleted());
            jo.put("sheduleCanceled", mySchedule.getSheduleCanceled());
            jo.put("custNo", mySchedule.getCustNo());
            jo.put("custEmail", mySchedule.getCustEmail());
            jo.put("custName", mySchedule.getCustName());
            jo.put("custPhone", mySchedule.getCustPhone());
            ja.add(jo);
        }

        return ja;
    }

    // 운동완료여부 여로
    @RequestMapping("/update_completed_1")
    @ResponseBody
    public String update_completed_1(Model model, Integer myscheduleNo) throws Exception {

        try {
            myScheduleService.update_completed_1(myscheduleNo);
            return "success"; // Return "success" if the update is successful
        } catch (Exception e) {
            return "fail"; // Handle error if the update fails
        }
    }

    // 운동완료여부 부로
    @RequestMapping("/update_completed_0")
    @ResponseBody
    public String update_completed_0(Model model, Integer myscheduleNo) throws Exception {

        try {
            myScheduleService.update_completed_0(myscheduleNo);
            return "success"; // Return "success" if the update is successful
        } catch (Exception e) {
            return "fail"; // Handle error if the update fails
        }
    }

}
