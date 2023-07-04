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


	@RequestMapping(value = "/som_selectAll.do", method = RequestMethod.GET)
	public String som_selectAll(SomoimVO vo, Model model) {
		log.info("som_selectAll.do().....{}", vo);
		log.info("-------", vo.getCategory());

		List<SomoimVO> vos = service.selectAll(vo);

		model.addAttribute("vos",vos);

		return "board/som_selectAll";
	}

	@RequestMapping(value = "/som_selectOne.do", method = RequestMethod.GET)
	public String som_selectOne(SomoimVO vo, Model model) {
		log.info("som_selectOne.do().....{}", vo);
		
		SomoimVO vo2 = service.selectOne(vo);
		
		model.addAttribute("vo2", vo2);
		
		return "board/som_selectOne";
	}
	
	@RequestMapping(value = "/som_searchList.do", method = RequestMethod.GET)
	public String som_searchList(String searchKey, String searchWord) {
		log.info("som_searchList.do().....{}, {}", searchKey, searchWord);
		
		List<SomoimVO> vos = service.searchList(searchKey, searchWord);
		
		
		return "redirect:som_selectAll.do";
	}
	
	@RequestMapping(value = "/som_insert.do", method = RequestMethod.GET)
	public String som_insert() {
		log.info("som_insert.do().....");
		
		return "board/som_insert";
	}
	
	@RequestMapping(value = "/som_insertOK.do", method = RequestMethod.GET)
	public String som_insertOK(SomoimVO vo) {
		log.info("som_insertOK.do().....{}", vo);
		
		int result = service.insert(vo);
		if (result==1)
			return "redirect:som_selectAll.do";
		else
			return "redirect:som_insert.do";
	}
	
	@RequestMapping(value = "/som_update.do", method = RequestMethod.GET)
	public String som_update(SomoimVO vo) {
		log.info("som_update.do().....{}", vo);
		
		int result = service.update(vo);
		
		
		return "redirect:selectAll.do";
	}
	
	@RequestMapping(value = "/som_delete.do", method = RequestMethod.GET)
	public String som_delete(SomoimVO vo) {
		log.info("som_delete.do().....{}", vo);
		
		int result = service.delete(vo);
		
		
		return "redirect:selectAll.do";
	}

	
}
