package test.com.moim.comments.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;
import test.com.moim.comments.model.som_commentsVO;
import test.com.moim.comments.service.som_comments_Service;

@Slf4j
@Controller
public class som_comments_controller {
	
	@Autowired
	som_comments_Service commService;
	
	@RequestMapping(value = "/som_comm_updateOK.do", method = RequestMethod.GET)
	public String som_comm_updateOK(som_commentsVO vo) {
		log.info("/som_comm_updateOK.do...{}", vo);
		
		int result = commService.update(vo);
		log.info("result...{}", result);
		
		return "redirect:b_selectOne.do?wnum=";
		
	}
	
	@RequestMapping(value = "/som_comm_deleteOK.do", method = RequestMethod.GET)
	public String som_comm_deleteOK(som_commentsVO vo) {
		log.info("/som_comm_deleteOK.do...{}", vo);
		
		int result = commService.delete(vo);
		log.info("result...{}", result);
		
		return "redirect:b_selectOne.do?wnum=";
		
	}
	
	@RequestMapping(value = "/som_comm_insertOK.do", method = RequestMethod.POST)
	public String som_comm_insertOK(som_commentsVO vo) {
		log.info("/som_comm_insertOK.do...{}", vo);
		
		int result = commService.insert(vo);
		log.info("result...{}", result);
		
		return "redirect:b_selectOne.do?wnum=";
		
	}
	

}