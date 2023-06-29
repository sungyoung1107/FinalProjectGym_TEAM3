package com.kbstar.controller;

import com.kbstar.dto.Gym;
import com.kbstar.service.GymService;
import com.kbstar.util.FileUploadUtil;
import com.kbstar.util.OCRUtil;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;
import java.util.Random;

@Slf4j
@Controller
@RequestMapping("/gym")
public class GymController {

    String dir = "gym/";

    @Autowired
    GymService gymService;

    @Autowired
    BCryptPasswordEncoder encoder;

    @Autowired
    private JavaMailSender mailSender;
    private static final Logger logger = LoggerFactory.getLogger(GymController.class);

    @Value("${spring.mail.username}")
    private String username;

    @Value("${uploadimgdir}")
    String imgdir;

    @RequestMapping("/login")
    public String login(Model model, String redirectURL) {
        model.addAttribute("redirectURL", redirectURL); // 다음페이지를 숨겨 놓고
        model.addAttribute("page", "Login");
        model.addAttribute("center", dir+"login");
        return "index";
    }

    @RequestMapping("/loginimpl")
    public String loginimpl(Model model, String gymEmail, String gymPwd,
                            HttpSession session, String redirectURL) throws Exception {
        Gym gym = null;
        String nextPage = "loginfail";

        try {
            gym = gymService.getMyemail(gymEmail);
            log.info("==========센터 타이틀 "+ gym.getGymTitle());
            log.info("==========센터 내용 "+ gym.getGymContents());
            if(gym != null && (encoder.matches(gymPwd, gym.getGymPwd())||gymPwd.equals(gym.getGymPwd()))){
                nextPage = "loginok";
                session.setMaxInactiveInterval(100000);
                session.setAttribute("logingym",gym);
                session.setAttribute("logingymno",gym.getGymNo()); // 추가
                model.addAttribute("rgym", gym);
                if (redirectURL == null || redirectURL.equals("")) {
                    return "redirect:/";
                }else {
                    return "redirect:"+redirectURL;
                }
            }
        } catch (Exception e) {
            throw new Exception("시스템 장애. 잠시 후 다시 로그인 하세요");
        }
        model.addAttribute("center",dir + nextPage);
        return "index";
    }




    @RequestMapping("/logoutimpl")
    public String logoutimpl(HttpSession session){
        if(session != null){
            session.invalidate();
        }
        return "redirect:/";
    }

    @RequestMapping("/register_regiimg")
    public String register_regiimg(Model model){
        model.addAttribute("page", "Register");
        model.addAttribute("center", dir+"register_regiimg");
        return "index";
    }

    @RequestMapping("/register_regiimg_impl")
    public String register_regiimg_impl(Model model, Gym gym){
        log.info("============= 진입하였습니다 =============");
        // 화면에서 이미지를 서버로 올린다.
        // 이미지를 저장한다. (가입 최종적으로 안되더라도 이미지 올린다. 검증해야지 !!!)
        FileUploadUtil.saveFile(gym.getGymRegimg(), imgdir);
        log.info("============== " + gym.getGymRegimg());

        String imgname = gym.getGymRegimg().getOriginalFilename();
        log.info("============== " + gym.getGymRegimg().getOriginalFilename()); // ============== biz2.jpg

        JSONObject jo = (JSONObject) OCRUtil.getResult(imgdir, imgname);
        Map result = OCRUtil.getData(jo);

        log.info("=========결과는" + result);

        model.addAttribute("gymRegiimgname", imgname);
        model.addAttribute("result", result);
        model.addAttribute("center", dir+"register");

        return "index";
    }

    @RequestMapping("/register")
    public String register(Model model){
        model.addAttribute("page", "Register");
        model.addAttribute("center", dir+"register");
        return "index";
    }

    @RequestMapping("/checkEmail")
    @ResponseBody
    public String checkEmail(String gymEmail) {
        Gym result = null;
        try {
            result = gymService.getMyemail(gymEmail); // 일치하는 email이 있다면
            if (result != null) {
                return "fail";
            }
            return "success";
        } catch (Exception e) {
            throw new RuntimeException("이메일 중복체크 오류");
        }
    }

    // 이메일 인증
    @RequestMapping(value = "/mailCheck", method=RequestMethod.GET)
    @ResponseBody
    public String mailCheck(String gymEmail) throws Exception {
        /* 뷰로 넘어온 데이터 확인 */
        logger.info("이메일 데이터 전송 확인: " + gymEmail);
        /* 인증번호 난수 생성 */
        Random random = new Random();
        int checkNum = random.nextInt(888888) +111111; /* 0 ~ 888887 */ /* 111111~999998 */
        logger.info("인증번호: " + checkNum);

        /* 이메일 보내기 */
        String setForm = username;
        String toMail = gymEmail; // 수신 받을 이메일
        String title = "회원가입 인증 이메일입니다. ";
        String content =
                "헬쓱 홈페이지를 방문해주셔서 감사합니다. " +
                        "<br><br>" +
                        "인증번호는 " + checkNum + "입니다. "+
                        "<br>" +
                        "해당 인증번호를 인증번호 확인란에 넣어주세요.";

        try{
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setForm);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content, true);
            mailSender.send(message);
        }catch(Exception e){
            e.printStackTrace();
        }

        return Integer.toString(checkNum);
    }



    @RequestMapping("/registerimpl")
    public String registerimpl(Model model, Gym gym, HttpSession session) throws Exception {

        try {
            log.info("===================이미지명은 " + gym.getGymRegiimgname() + "=====================");
            gym.setGymPwd((encoder.encode(gym.getGymPwd()))); // 비밀번호 set
            // DB 가입
            gymService.register(gym);
            session.setAttribute("logingym", gym);
            session.setAttribute("logingymno",gym.getGymNo()); // 추가

        } catch(Exception e){
            throw new Exception("가입오류");
        }

        model.addAttribute("rgym", gym);
        return "redirect:/gym/login";
    }

    @RequestMapping("/forgotPwd")
    public String forgotPwd(Model model){
        model.addAttribute("page", "ForgotPassword");
        model.addAttribute("center", dir+"forgotPwd");
        return "index";
    }

    @RequestMapping("/calendar")
    public String calendar(Model model){
        model.addAttribute("page", "Calendar");
        model.addAttribute("center", "calendar");
        return "index";
    }

    @RequestMapping("/approve")
    public String approve(Model model) throws Exception {

        List<Gym> gym_list = gymService.get();

        for(Gym gym : gym_list){
            log.info("gym.getGymNo()" + gym.getGymNo());
            log.info("gym.getStatus()" + gym.getStatus());
            
            if(gym.getStatus().trim().equals("1"))
                gym.setStatus("가입완료");
            else if(gym.getStatus().trim().equals("2"))
                gym.setStatus("승인완료");
            else gym.setStatus("탈퇴");
        }

        model.addAttribute("gym_list", gym_list);
        model.addAttribute("page", "Approve");
        model.addAttribute("center", dir+"approve");
        return "index";
    }

    @RequestMapping("/approveimpl")
    public String approveimpl(Model model, Gym gym) throws Exception {

        gymService.approveGym(gym); // 업데이트
        
        Gym gym1 = gymService.getmyemailFromgymNo(gym); // 이메일 가져오기

        // 메일 보내기 //
        /* 뷰로 넘어온 데이터 확인 */
        logger.info("이메일 데이터 전송 확인: " + gym1.getGymEmail());

        /* 이메일 보내기 */
        String setForm = username;
        String toMail = gym1.getGymEmail(); // 수신 받을 이메일
        String title = "헬쓱 센터 승인 완료되었습니다.";
        String content = "<html>\n" +
                "<head>\n" +
                "    <style>\n" +
                "        /* 스타일링을 위한 CSS 코드 */\n" +
                "        body {\n" +
                "            font-family: 'Malgun Gothic', 'Arial', sans-serif;\n" +
                "            color: #333333;\n" +
                "        }\n" +
                "        .container {\n" +
                "            max-width: 600px;\n" +
                "            margin: 0 auto;\n" +
                "            padding: 20px;\n" +
                "            background-color: #ffffff;\n" +
                "            border-radius: 5px;\n" +
                "            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);\n" +
                "        }\n" +
                "        h1 {\n" +
                "            color: #ffc107;\n" +
                "            text-align: center;\n" +
                "            margin-top: 0;\n" +
                "        }\n" +
                "        p {\n" +
                "            line-height: 1.5;\n" +
                "            color: #333333;\n" +
                "        }\n" +
                "    </style>\n" +
                "</head>\n" +
                "<body style=\"background-color: #f7f7f7;\">\n" +
                "<div class=\"container\">\n" +
                "    <h3>헬쓱 센터 승인 완료</h3>\n" +
                "    <p style=\"color: #333333;\">안녕하세요, " + gym1.getGymName() + "님!</p>\n" +
                "    <p style=\"color: #333333;\">헬쓱 센터의 승인이 완료되었습니다.</p>\n" +
                "    <p style=\"color: #333333;\">많은 회원들과 함께 목표 매출을 달성하시길 기원합니다.</p>\n" +
                "    <p style=\"color: #333333;\">감사합니다!</p>\n" +
                "</div>\n" +
                "</body>\n" +
                "</html>";
        try{
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setForm);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content, true);
            mailSender.send(message);
        }catch(Exception e){
            e.printStackTrace();
        }


        model.addAttribute("page", "Approve");
        model.addAttribute("center", dir+"approve");
        return "index";
    }
}
