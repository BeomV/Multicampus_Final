package test.com.moim.somoim.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import test.com.moim.somoim.model.SomoimDAOimpl;
import test.com.moim.somoim.model.SomoimVO;

@Service
@Slf4j
public class SomoimService {
	
	@Autowired
	SomoimDAOimpl dao;
	
	
	public List<SomoimVO> selectAll(SomoimVO vo) {
		log.info("somoim_selectAll().....");
		return dao.selectAll(vo);
	}

	
}
