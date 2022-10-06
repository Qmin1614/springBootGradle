package com.example.study.web.dao;

import com.example.study.web.model.board.Board;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-30
 * Time: 오전 10:15
 * Comments:
 */
@Mapper
public interface BoardMapper {

    /**
     * @see <p>게시판 목록 출력</p>
     */
    List<Board> selectBoardAll();

    /**
     * @see <p>boardId로 게시판 글 조회</p>
     */
    Board selectBoardById(String boardId);

    /**
     * @see <p>테이블 생성</p>
     * @param board
     * @return
     */
    int insertBoard(Board board);

    /**
     * @see <p>게시판 글 수정</p>
     */
    int updateBoard(Board board);

    /**
     * @see <p>게시판 글 삭제</p>
     */
    int deleteBoard(String board);
}
