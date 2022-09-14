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
        return "js/index";
    }

    @GetMapping(value = {"/1"})
    public String web1(){
        return "js/1";
    }

    @GetMapping(value = {"/2"})
    public String web2(){
        return "js/2";
    }

    @GetMapping(value = {"/3"})
    public String web3(){
        return "js/3";
    }

    @GetMapping(value = {"/ex1"})
    public String ex1(){
        return "js/ex1";
    }

    @GetMapping(value = {"/ex2"})
    public String ex2(){
        return "js/ex2";
    }

    @GetMapping(value = {"/ex3"})
    public String ex3(){
        return "js/ex3";
    }

    @GetMapping(value = {"/ex4"})
    public String ex4(){
        return "js/ex4";
    }

    @GetMapping(value = {"/ex5"})
    public String ex5(){
        return "js/ex5";
    }

    @GetMapping(value = {"/ex6"})
    public String ex6(){
        return "js/ex6";
    }

    @GetMapping(value = {"/ex7"})
    public String ex7(){
        return "js/ex7";
    }

}
