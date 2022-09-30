package com.example.study.web.model.board.dto;

import com.example.study.web.model.board.Board;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-30
 * Time: 오전 10:09
 * Comments:
 */
@Getter
@Setter
public class GetReadBoardResponse {

    private List<Board> boardList;

    public GetReadBoardResponse(List<Board> boardList) {
        this.boardList = boardList;
    }
}
