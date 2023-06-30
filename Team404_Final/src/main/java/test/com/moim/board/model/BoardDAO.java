package test.com.moim.board.model;

import java.util.List;

public interface BoardDAO {
    public List<BoardVO> selectAll();

    public int insert(BoardVO vo);

    public BoardVO selectOne(BoardVO vo);

    public List<Somoim_BoardVO> selectList();

    Somoim_BoardVO selectJoin(Somoim_BoardVO vo);
}
