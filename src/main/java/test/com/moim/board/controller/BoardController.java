package test.com.moim.board.controller;

import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import test.com.moim.board.model.BoardVO;
import test.com.moim.board.model.Somoim_BoardVO;
import test.com.moim.board.service.BoardService;

import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

/**
 * Handles requests for the application home page.
 */

@Slf4j
@Controller



public class BoardController {
	
	@Autowired
	BoardService service;


	@RequestMapping(value = "/som_selectAll.do", method = RequestMethod.GET)
	public String som_selectAll(Model model) {
		log.info("som_selectAll.do().....{}");

		List<BoardVO> vos = service.selectAll();

		for (BoardVO vo : vos) {
			log.info(vo.toString());
		}

		model.addAttribute("vos",vos);

		return "board/som_selectAll";
	}

	@RequestMapping(value = "/som_insert.do", method = RequestMethod.GET)
	public String som_insert() {
		log.info("som_insert.do().....");


		return "board/som_insert";
	}

	@RequestMapping(value = "/som_insertOK.do", method = RequestMethod.POST)
	public String som_insertOK(BoardVO vo) {
		log.info("som_insertOK.do().....");

		int result = service.insert(vo);
		log.info("insertOK...{}",vo);
		return "board/som_insert";
	}

	@RequestMapping(value = "/som_selectOne.do", method = RequestMethod.GET)
	public String som_selectOne(BoardVO vo, Model model) {
		log.info("som_selectOne.do().....");

		BoardVO vo2 = service.selectOne(vo);
		log.info("test...{}",vo2);

		model.addAttribute("vo2",vo2);

		return "board/som_selectOne";
	}

	@RequestMapping(value = "/join_selectAll.do", method = RequestMethod.GET)
	public String join_selectAll(Model model) {
		log.info("join_selectAll().....");

		List<Somoim_BoardVO> vos = service.selectList();

		for (Somoim_BoardVO vo : vos) {
			log.info(vo.toString());
		}
		model.addAttribute("vos",vos);

		return "board/join_selectAll";
	}

	@RequestMapping(value = "/join_selectOne.do", method = RequestMethod.GET)
	public String join_selectOne(Somoim_BoardVO vo, Model model) {
		log.info("join_selectOne.do().....");

		Somoim_BoardVO vo2 = service.selectJoin(vo);
		log.info("test...{}",vo2);

		model.addAttribute("vo2",vo2);

		return "board/join_selectOne";
	}


	
}
