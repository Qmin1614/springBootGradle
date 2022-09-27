package com.example.study.web.model.member;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-27
 * Time: 오전 9:37
 * Comments:
 */
@Getter
@Setter
@ToString
public class Member {
    private String id;
    private String loginId;
    private String name;
    private String password;
    private Date createDate;
    private Date updateDate;
}
