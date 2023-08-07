package com.phyho.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.phyho.DTO.JoinDTO;
import com.phyho.DTO.LoginDTO;
import com.phyho.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/login")
	public String login(HttpServletRequest request) {
		//System.out.println(request.getParameter("ID"));
		//System.out.println(request.getParameter("PW"));
		
		LoginDTO dto = new LoginDTO();
		dto.setM_id(request.getParameter("ID"));
		dto.setM_pw(request.getParameter("PW"));
		// 생각해주세요. id/pw를 보냈을 때 무엇이 왔으면 좋을까요?
		// 이름 + count(*)
		dto = loginService.login(dto);
		
		//System.out.println(result.getM_name());
		//System.out.println(result.getCount());
		
		if(dto.getCount() == 1) {
			// 세션을 만들어서 로그인을 지정 시간동안 유지시킵니다.
			HttpSession session = request.getSession(); 
			session.setAttribute("mname", dto.getM_name());
			session.setAttribute("mid", request.getParameter("ID"));
			// 세션 : 서버, 쿠키 : 클라이언트
			return "redirect:index"; // 정상적으로 로그인 했다면 인덱스로 가기
		} else {
			return "login";	// 암호/아이디가 일치하지 않은 사람은 다시 로그인 하기
		}
		
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
//		if(session.getAttribute("mname") != null) {
//			session.removeAttribute("mname");	// 세션 삭제하기
//		}
//		if(session.getAttribute("mid") != null) {
//			session.removeAttribute("mid");
//		}
		
		session.setMaxInactiveInterval(0);
		
		session.invalidate(); // 세션삭제하기

		return "redirect:index";
	}
	
	@GetMapping("/join")
	public String join() {
		return "join";
	}
	
	//자바스크립트로 만든것.
	@GetMapping("/join2")
	public String join2() {
		return "join2";
	}
	
	@PostMapping("/join")
	public String join(JoinDTO joinDTO) {
		System.out.println("jsp에서 오는 값 : " + joinDTO.getGender());
		System.out.println("jsp에서 오는 값 : " + joinDTO.getBirth());
		int result = loginService.join(joinDTO);
		
		System.out.println(result);
		if(result == 1) {
			return "redirect:/login";
		} else {
			return "redirect:/join";
		}
	}
	
	// 전체 회원 뽑기
	@GetMapping("/members")
	public ModelAndView members() {
		ModelAndView mv = new ModelAndView("members");
		List<JoinDTO> list = loginService.members();
		mv.addObject("list", list);
		return mv;
	}
	
	
}
