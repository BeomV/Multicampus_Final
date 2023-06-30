package test.com.moim.board.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import test.com.moim.board.model.BoardDAO;
import test.com.moim.board.model.BoardVO;

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
}
