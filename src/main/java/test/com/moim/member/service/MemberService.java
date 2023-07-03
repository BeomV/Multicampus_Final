package test.com.moim.member.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import test.com.moim.member.model.MemberDAOimpl;
import test.com.moim.member.model.MemberVO;

@Service
@Slf4j
public class MemberService {
	
	@Autowired
	SqlSession session;
	@Autowired
	MemberDAOimpl dao;

	public List<MemberVO> selectAll() {
		log.info("selectAll()........");
		
		return null;
	}
	
	public MemberVO selectOne(MemberVO vo) {
		log.info("selectOne()........{}", vo);
		
		return null;
	}
	
	public List<MemberVO> searchList(String searchKey, String searchWord) {
		log.info("searchList()........{}, {}", searchKey, searchWord);
		
		return null;
	}
	
	public int insert(MemberVO vo) {
		log.info("insert()........{}", vo);
		
		return 0;
	}
	
	public int update(MemberVO vo) {
		log.info("update()........{}", vo);
		
		return 0;
	}
	
	public int delete(MemberVO vo) {
		log.info("delete()........{}", vo);
		
		return 0;
	}
	
}
