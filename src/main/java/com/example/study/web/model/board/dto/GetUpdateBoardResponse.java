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
public class GetUpdateBoardResponse {

    private Board board;

    public GetUpdateBoardResponse(Board board) {
        this.board = board;
    }
}
