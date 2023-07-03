package test.com.moim.somoim.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;
import test.com.moim.board.model.BoardVO;
import test.com.moim.board.model.Somoim_BoardVO;
import test.com.moim.somoim.model.SomoimVO;
import test.com.moim.somoim.service.SomoimService;

/**
 * Handles requests for the application home page.
 */

@Slf4j
@Controller



public class SomoimController {
	
	@Autowired
	SomoimService service;


	@RequestMapping(value = "/somoim_selectAll.do", method = RequestMethod.GET)
	public String somoim_selectAll(SomoimVO vo, Model model) {
		log.info("somoim_selectAll.do().....{}", vo);
		log.info("-------", vo.getCategory());

		List<SomoimVO> vos = service.selectAll(vo);

		model.addAttribute("vos",vos);

		return "somoim/selectAll";
	}

	

	
}
