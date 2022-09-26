package com.example.study.testWeb.testController;

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

    @GetMapping(value = {"jquery/ex1"})
    public String ex1(){
        return "jquery/ex1";
    }

    @GetMapping(value = {"jquery/ex2"})
    public String ex2(){
        return "jquery/ex2";
    }

    @GetMapping(value = {"jquery/ex3"})
    public String ex3(){
        return "jquery/ex3";
    }

    @GetMapping(value = {"jquery/ex4"})
    public String ex4(){
        return "jquery/ex4";
    }

    @GetMapping(value = {"jquery/ex5"})
    public String ex5(){
        return "jquery/ex5";
    }

    @GetMapping(value = {"jquery/ex6"})
    public String ex6(){
        return "jquery/ex6";
    }

    @GetMapping(value = {"jquery/ex7"})
    public String ex7(){
        return "jquery/ex7";
    }
}
