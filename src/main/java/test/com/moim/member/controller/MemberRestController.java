package test.com.moim.member.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;
import test.com.moim.member.model.MemberVO;
import test.com.moim.member.service.MemberService;


@Slf4j

@Controller
public class MemberRestController {
	
	@Autowired
	MemberService service;

	@ResponseBody
	@RequestMapping(value = "/som_member_insertOK.do", method = RequestMethod.GET)
	public String som_member_insertOK(MemberVO vo) {
		log.info("som_member_insertOK.do().....{}", vo);



		return "redirect:som_selectOne.do?num="+vo.getNum();
	}
	
}
