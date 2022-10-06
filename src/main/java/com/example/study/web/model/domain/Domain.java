package com.example.study.web.model.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-10-06
 * Time: 오후 4:31
 * Comments:
 */
@Getter
@Setter
@ToString
public class Domain {
    private String domainId;
    private String name;
    private String description;
    private Date createDate;
    private Date updateDate;
}
