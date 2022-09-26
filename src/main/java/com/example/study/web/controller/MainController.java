package com.example.study.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-09-26
 * Time: 오후 2:39
 * Comments:
 */
@Controller
public class MainController {

    @RequestMapping(value = {"/"})
    public String root(Model model) {
        model.addAttribute("main", "main/home");
        return "view";
    }

//    @GetMapping(value = {"/"})
//    public String main(Model model) {
//        model.addAttribute("main", "main/homePage");
//        return "view";
//    }
}
