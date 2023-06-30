package test.com.moim.member.model;

import java.util.List;

public interface MemberDAO {

	public List<MemberVO> selectAll();
	public MemberVO selectOne(MemberVO vo);
	public List<MemberVO> searchList(String searchKey, String searchWord);
	public int insert(MemberVO vo);
	public int update(MemberVO vo);
	public int delete(MemberVO vo);
}
