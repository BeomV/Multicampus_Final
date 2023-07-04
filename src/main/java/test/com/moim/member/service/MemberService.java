package test.com.moim.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import test.com.moim.member.model.MemberDAO;
import test.com.moim.member.model.MemberVO;

@Service
@Slf4j
public class MemberService {
	
	@Autowired
	MemberDAO dao;

	public int insert(MemberVO vo) {
		log.info("insert()....{}", vo);
		
		return dao.insert(vo);
	}
	public int delete(MemberVO vo) {
		log.info("delete()....{}", vo);
		return dao.delete(vo);
	}
	public List<MemberVO> selectAll() {
		log.info("selectAll()...");
		return dao.selectAll();
	}
	public List<MemberVO> searchList(String searchKey, String searchWord) {
		log.info("searchList...{},{}", searchKey, searchWord);
		return dao.searchList(searchKey, searchWord);
	}
}