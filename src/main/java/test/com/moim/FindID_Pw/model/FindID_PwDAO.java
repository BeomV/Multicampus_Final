package test.com.moim.FindID_Pw.model;

import java.util.List;


public interface FindID_PwDAO {

	
	public FindID_PwVO selectOne(FindID_PwVO vo);
	public List<FindID_PwVO> searchList(String searchKey, String searchWord);
}
