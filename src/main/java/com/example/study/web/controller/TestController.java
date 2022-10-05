package com.example.study.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-10-05
 * Time: 오전 9:47
 * Comments:
 */
@Controller
public class TestController {

    @GetMapping(value = {"/test"})
    public String test(Model model) {
        model.addAttribute("main", "jsTest/testPage");
        return "view";
    }
}
