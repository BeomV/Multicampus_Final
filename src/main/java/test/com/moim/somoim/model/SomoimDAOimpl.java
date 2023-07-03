package test.com.moim.somoim.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class SomoimDAOimpl implements SomoimDAO {
	
	@Autowired
	SqlSession session;

	@Override
	public List<SomoimVO> selectAll(SomoimVO vo) {
		return session.selectList("SOMOIM_SELECT_ALL", vo);
	}

	@Override
	public SomoimVO selectOne() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(SomoimVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<SomoimVO> searchList(String searchKey, String searchWord) {
		// TODO Auto-generated method stub
		return null;
	}

}
