package com.kbstar.service;

import com.kbstar.dto.Gym;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.GymMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@Slf4j
@Service
public class GymService implements KBService<Integer, Gym> {

    @Autowired
    GymMapper mapper;

    @Autowired
    private AuthenticationManager authenticationManager; // 얘를 통해 세션값 변경해야함

    @Override
    public void register(Gym gym) throws Exception {
        mapper.insert(gym);
    }

    @Override
    public void remove(Integer i) throws Exception {
        mapper.delete(i);
    }

    @Override
    public void modify(Gym gym) throws Exception {
        // 수정시에는 영속성 컨텍스트 Gym 오브젝트를 영속화시키고, 영속화된 Gym 오브젝트를 수정
        // select 를 해서 Gym 오브젝트를 DB 로부터 가져오는 이유는 영속화를 하기 위해서!!
        // 영속화된 오브젝트를 변경하면 자동으로 DB에 update 문을 날려주기 때문

//        Gym persistence = mapper.select(gym.getGymNo());

        mapper.update(gym);

//        persistence.setGymName(gym.getGymName());
//        persistence.setGymPwd(gym.getGymPwd()); // 비밀번호 별도 set

        // 세션 등록 (세션 정보 이름, 패스워드)
//        Authentication authentication = authenticationManager.authenticate(
//                new UsernamePasswordAuthenticationToken(gym.getGymName(), gym.getGymPwd()));
//        SecurityContextHolder.getContext().setAuthentication(authentication);

        // 회원수정 함수 종료 시 == 서비스 종료 시 == 트랜잭션 종료 == commit 이 자동으로 된다
        // 영속화된 persistence 객체의 변화가 감지되면 더티체킹이 되어 변화된 것들에 대해 update 문을 날려줌.
    }

    @Override
    public Gym get(Integer i) throws Exception {
        return mapper.select(i);
    }

    @Override
    public List<Gym> get() throws Exception {
        return mapper.selectall();
    }

    public Gym getMyemail(String gymEmail) {
        return mapper.getmyemail(gymEmail);
    }

    public void deleteImg(Gym gym) {
        mapper.deleteimg(gym);
    }
    public void insertImg(Gym gym) {
        mapper.insertimg(gym);
    }
}
