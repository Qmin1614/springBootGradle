package com.example.study.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-15
 * Time: 오전 9:13
 * Comments:
 */
@Controller
public class CSSStudyController {
    @GetMapping(value = {"/css"})
    public String index(){
        return "css/index";
    }

    @GetMapping(value = {"/css/1"})
    public String web1(){
        return "css/1";
    }

    @GetMapping(value = {"/css/2"})
    public String web2(){
        return "css/2";
    }

    @GetMapping(value = {"/css/3"})
    public String web3(){
        return "css/3";
    }

    @GetMapping(value = {"/css/box"})
    public String box(){
        return "css/box";
    }


}
