package test.com.moim.community.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;
import test.com.moim.board.model.BoardVO;
import test.com.moim.community.model.CommunityVO;
import test.com.moim.community.service.CommunityService;

/**
 * Handles requests for the application home page.
 */

@Slf4j
@Controller



public class CommunityController {
	
	@Autowired
	CommunityService service;


	@RequestMapping(value = "/community_selectAll.do", method = RequestMethod.GET)
	public String community_selectAll(Model model) {
		log.info("community_selectAll.do().....{}");

		List<CommunityVO> vos = service.selectAll();

		for (CommunityVO vo : vos) {
			log.info(vo.toString());
		}

		model.addAttribute("vos",vos);

		return "community/selectAll";
	}
	
	@RequestMapping(value = "/community_selectOne.do", method = RequestMethod.GET)
	public String community_selectOne(CommunityVO vo, Model model) {
		log.info("community_selectOne.do().....");

		CommunityVO vo2 = service.selectOne(vo);
		log.info("test...{}",vo2);

		model.addAttribute("vo2",vo2);

		return "community/selectOne";
	}
	
	@RequestMapping(value = "/community_insert.do", method = RequestMethod.GET)
	public String community_insert() {
		log.info("community_insert.do().....");


		return "community/insert";
	}
	
	
}
