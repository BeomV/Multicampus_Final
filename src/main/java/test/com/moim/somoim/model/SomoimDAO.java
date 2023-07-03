package test.com.moim.somoim.model;

import java.util.List;

public interface SomoimDAO {

	public List<SomoimVO> selectAll(SomoimVO vo);
	public SomoimVO selectOne();
	public int insert(SomoimVO vo);
	public List<SomoimVO> searchList(String searchKey, String searchWord);
	
}
