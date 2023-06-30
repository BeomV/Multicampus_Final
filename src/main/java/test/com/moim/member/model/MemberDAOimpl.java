package test.com.moim.member.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class MemberDAOimpl implements MemberDAO {
	
	@Autowired
	SqlSession session;

	@Override
	public List<MemberVO> selectAll() {
		log.info("selectAll()....");
		return null;
	}

	@Override
	public MemberVO selectOne(MemberVO vo) {
		log.info("selectOne()....{}", vo);
		return null;
	}

	@Override
	public List<MemberVO> searchList(String searchKey, String searchWord) {
		log.info("searchList()....{}, {}", searchKey, searchWord);
		return null;
	}

	@Override
	public int insert(MemberVO vo) {
		log.info("insert()....{}", vo);
		return 0;
	}

	@Override
	public int update(MemberVO vo) {
		log.info("update()....{}", vo);
		return 0;
	}

	@Override
	public int delete(MemberVO vo) {
		log.info("delete()....{}", vo);
		return 0;
	}

}
