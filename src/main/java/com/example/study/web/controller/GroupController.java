package com.example.study.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-10-06
 * Time: 오후 5:24
 * Comments:
 */
@Controller
public class GroupController {

    @GetMapping(value = {"/group/list"})
    public String list(Model model) {
        model.addAttribute("main", "group/list");
        return "view";
    }
}
