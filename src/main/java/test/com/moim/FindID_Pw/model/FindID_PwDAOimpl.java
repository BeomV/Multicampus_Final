package test.com.moim.FindID_Pw.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class FindID_PwDAOimpl implements FindID_PwDAO {
	public FindID_PwDAOimpl(){
		log.info("FindID_PwDAOimpl().............");
		
	}

	@Override
	public FindID_PwVO selectOne(FindID_PwVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FindID_PwVO> searchList(String searchKey, String searchWord) {
		// TODO Auto-generated method stub
		return null;
	}

}
