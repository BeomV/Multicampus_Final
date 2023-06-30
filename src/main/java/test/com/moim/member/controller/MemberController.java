package test.com.moim.member.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;
import test.com.moim.member.service.MemberService;


@Slf4j
@Controller
public class MemberController {
	
	@Autowired
	MemberService service;
	@Autowired
	SqlSession session;
	
	
	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
	public String home() {
		
		log.info("123");
		return "home";
	}
	
}
