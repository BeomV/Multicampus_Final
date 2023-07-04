package test.com.moim.board.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import test.com.moim.board.model.BoardDAO;
import test.com.moim.board.model.BoardVO;
import test.com.moim.board.model.Somoim_BoardVO;
import test.com.moim.board.model.Somoim_ScheduleVO;

import java.util.List;

@Service
@Slf4j
public class BoardService {

    @Autowired
    BoardDAO dao;

    public BoardService(){
        log.info("BoardService()....");
    }

    public List<BoardVO> selectAll() {
        return dao.selectAll();
    }

    public int insert(BoardVO vo) {
        return dao.insert(vo);
    }

    public BoardVO selectOne(BoardVO vo) {
        return dao.selectOne(vo);
    }

    public List<Somoim_BoardVO> selectList() {
        return dao.selectList();
    }

    public Somoim_BoardVO selectJoin(Somoim_BoardVO vo) {
        return dao.selectJoin(vo);
    }

    public List<Somoim_ScheduleVO> sch_selelctList() {
        return dao.sch_selectList();
    }

    public int update(Somoim_BoardVO vo) {
        return dao.update(vo);
    }

    public int delete(Somoim_BoardVO vo) {
        return dao.delete(vo);    }
}
