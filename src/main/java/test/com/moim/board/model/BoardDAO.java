package test.com.moim.board.model;

import java.util.List;

public interface BoardDAO {
    public List<BoardVO> selectAll();

    public int insert(BoardVO vo);

    public BoardVO selectOne(BoardVO vo);



    List<Somoim_BoardVO> selectList(Somoim_BoardVO vo);

    Somoim_BoardVO selectJoin(Somoim_BoardVO vo);

    List<Somoim_ScheduleVO> sch_selectList();

    int update(Somoim_BoardVO vo);

    int delete(Somoim_BoardVO vo);

    int Sch_insert(Somoim_ScheduleVO vo);

    Somoim_ScheduleVO selectOne_schedule(Somoim_ScheduleVO vo);

    int Sch_update(Somoim_ScheduleVO vo);

    int Sch_delete(Somoim_ScheduleVO vo);

    int join_insert(Somoim_BoardVO vo);
}
