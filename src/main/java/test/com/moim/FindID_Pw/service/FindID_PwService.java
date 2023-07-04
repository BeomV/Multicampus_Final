package test.com.moim.FindID_Pw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import test.com.moim.FindID_Pw.model.FindID_PwDAO;
import test.com.moim.FindID_Pw.model.FindID_PwVO;

@Service
public class FindID_PwService {
	
@Autowired
FindID_PwDAO dao;
	
	
	public FindID_PwVO selectOne(FindID_PwVO vo) {
		return dao.selectOne(vo);
	}
	public List<FindID_PwVO> searchList(String searchKey, String searchWord){
		return dao.searchList(searchKey, searchWord);
	}
}
