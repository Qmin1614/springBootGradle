package com.example.study.web.model.board.dto;

import com.example.study.web.model.board.Board;
import lombok.Getter;
import lombok.Setter;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-27
 * Time: 오전 9:41
 * Comments:
 */
@Getter
@Setter
public class PostCreateBoard {

    private String nickName;
    private String title;
    private String content;

    public Board toEntity() {
        Board board = new Board();
        board.setNickName(this.nickName);
        board.setTitle(this.title);
        board.setContent(this.content);
        return board;
    }
}
