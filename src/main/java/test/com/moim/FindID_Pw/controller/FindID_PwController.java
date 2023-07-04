package test.com.moim.FindID_Pw.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;
import test.com.moim.FindID_Pw.service.FindID_PwService;

@Slf4j
@Controller
public class FindID_PwController {
	@Autowired
	FindID_PwService service;
	
	
	@RequestMapping(value = "/findID.do", method = RequestMethod.GET)
	public String som_selectAll(Model model) {
		log.info("som_selectAll.do().....{}");

		


		return "userinfo/findId";
	}
	
	
	@RequestMapping(value = "/findID_answered.do", method = RequestMethod.GET)
	public String findID_answered(Model model) {
		log.info("som_selectAll.do().....{}");

		


		return "userinfo/findId_answered";
	}
	
	
	


}
