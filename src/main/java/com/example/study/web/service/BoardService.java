package com.example.study.web.service;

import com.example.study.web.model.board.Board;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-30
 * Time: 오전 10:14
 * Comments:
 */
public interface BoardService {

    /**
     * @see <p>게시판목록 출력</p>
     */
    List<Board> getBoardAll();

    /**
     * @see <p>boardId로 게시판 글 조회</p>
     */
    Board getBoardById(String boardId);

    /**
     * @see <p>게시판 글 생성</p>
     */
    int addBoard(Board board);

    /**
     * @see <p>게시판 글 수정</p>
     */
    int updateBoard(Board board);

    /**
     * @see <p>게시판 글 삭제</p>
     */
    int deleteBoard(String boardId);
}
