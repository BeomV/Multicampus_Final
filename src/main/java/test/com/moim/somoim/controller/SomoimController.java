package test.com.moim.somoim.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;
import test.com.moim.somoim.model.SomoimVO;
import test.com.moim.somoim.service.SomoimService;


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

		return "board/som_selectAll";
	}

	@RequestMapping(value = "/somoim_selectOne.do", method = RequestMethod.GET)
	public String somoim_selectOne(SomoimVO vo, Model model) {
		log.info("somoim_selectOne.do().....{}", vo);
		
		SomoimVO vo2 = service.selectOne(vo);
		
		model.addAttribute("vo2", vo2);
		
		return "somoim/selectOne";
	}
	
	@RequestMapping(value = "/somoim_searchList.do", method = RequestMethod.GET)
	public String somoim_searchList(String searchKey, String searchWord) {
		log.info("somoim_searchList.do().....{}, {}", searchKey, searchWord);
		
		List<SomoimVO> vos = service.searchList(searchKey, searchWord);
		
		
		return "redirect:som_selectAll.do";
	}
	
	@RequestMapping(value = "/somoim_insert.do", method = RequestMethod.GET)
	public String somoim_insert(SomoimVO vo) {
		log.info("somoim_insert.do().....{}", vo);
		
		int result = service.insert(vo);
		
		
		return "redirect:selectAll.do";
	}
	
	@RequestMapping(value = "/somoim_update.do", method = RequestMethod.GET)
	public String somoim_update(SomoimVO vo) {
		log.info("somoim_update.do().....{}", vo);
		
		int result = service.update(vo);
		
		
		return "redirect:selectAll.do";
	}
	
	@RequestMapping(value = "/somoim_delete.do", method = RequestMethod.GET)
	public String somoim_delete(SomoimVO vo) {
		log.info("somoim_delete.do().....{}", vo);
		
		int result = service.delete(vo);
		
		
		return "redirect:selectAll.do";
	}
	
	

	
}
