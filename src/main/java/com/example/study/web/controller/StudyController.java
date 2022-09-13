package com.example.study.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-13
 * Time: 오후 2:46
 * Comments:
 */
@Controller
public class StudyController {

    @GetMapping(value = {"/"})
    public String index(){
        return "basic/index";
    }

    @GetMapping(value = {"/1"})
    public String web1(){
        return "basic/1";
    }

    @GetMapping(value = {"/2"})
    public String web2(){
        return "basic/2";
    }

    @GetMapping(value = {"/3"})
    public String web3(){
        return "basic/3";
    }

}
