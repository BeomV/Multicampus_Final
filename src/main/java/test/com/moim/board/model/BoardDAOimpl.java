package test.com.moim.board.model;

import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Slf4j
@Repository
public class BoardDAOimpl implements BoardDAO{

    @Autowired
    SqlSession sqlSession;

    public BoardDAOimpl(){
        log.info("Boardimpl()....");
    }


    @Override
    public List<BoardVO> selectAll() {
        log.info("selectAll()...");
        return sqlSession.selectList("B_SELECT_ALL");
    }

    @Override
    public int insert(BoardVO vo) {
        log.info("b_insert()....");
        return sqlSession.insert("B_INSERT",vo);
    }

    @Override
    public BoardVO selectOne(BoardVO vo) {
        return sqlSession.selectOne("B_SELECT_ONE",vo);
    }

    @Override
    public List<Somoim_BoardVO> selectList() {

        return sqlSession.selectList("SOMOIM_SELECT_ALL");
    }

    @Override
    public Somoim_BoardVO selectJoin(Somoim_BoardVO vo) {
        return sqlSession.selectOne("SOMOIM_SELECT_ONE",vo);
    }
}
