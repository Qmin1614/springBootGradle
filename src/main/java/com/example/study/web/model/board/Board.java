package com.example.study.web.model.board;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-30
 * Time: 오전 9:56
 * Comments:
 */
@Getter
@Setter
@ToString
public class Board {
    private String boardId;
    private String userId;
    private String title;
    private String nickName;
    private String content;
    private Date createDate;
    private Date updateDate;
}
