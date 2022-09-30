package com.example.study.web.service.impl;

import com.example.study.web.dao.BoardMapper;
import com.example.study.web.model.board.Board;
import com.example.study.web.service.BoardService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-30
 * Time: 오전 10:14
 * Comments:
 */
@Service
public class BaseBoardService implements BoardService {

    private BoardMapper boardMapper;

    public BaseBoardService(BoardMapper boardMapper) {
        this.boardMapper = boardMapper;
    }

    @Override
    public List<Board> getBoardAll() {
        return this.boardMapper.selectBoardAll();
    }

    @Override
    public int addBoard(Board board) {
        return this.boardMapper.insertBoard(board);
    }
}
