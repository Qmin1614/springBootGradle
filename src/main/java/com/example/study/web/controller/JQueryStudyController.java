package com.example.study.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-15
 * Time: 오후 2:42
 * Comments:
 */
@Controller
public class JQueryStudyController {
    @GetMapping(value = {"/jquery"})
    public String jquery(){
        return "jquery/index";
    }
}
