package com.example.study.web.controller;

import com.example.study.web.model.domain.Domain;
import com.example.study.web.model.domain.dto.GetReadDomainResponse;
import com.example.study.web.model.domain.dto.PostCreateDomain;
import com.example.study.web.model.domain.dto.PostCreateDomainResponse;
import com.example.study.web.service.DomainService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: pkm16
 * Date: 2022-10-06
 * Time: 오후 5:24
 * Comments:
 */
@Controller
public class DomainController {

    DomainService domainService;

    public DomainController(DomainService domainService) {
        this.domainService = domainService;
    }

    @GetMapping(value = {"/domain/list"})
    public String list(Model model) {
        List<Domain> domainList = this.domainService.getDomainAll();
        model.addAttribute("getReadDomainResponse", new GetReadDomainResponse(domainList));
        model.addAttribute("main", "domain/list");
        return "view";
    }

    @GetMapping(value = {"/domain/add"})
    public String add(Model model) {
        model.addAttribute("main", "domain/add");
        return "view";
    }

    @ResponseBody
    @PostMapping(value = {"/domain/add"})
    public PostCreateDomainResponse postCreateDomain(@RequestBody PostCreateDomain postCreateDomain) {
        try {
            this.domainService.addDomain(postCreateDomain.toEntity());
            return new PostCreateDomainResponse("success", "도메인을 생성하였습니다");
        } catch (Exception e) {
            return new PostCreateDomainResponse("fail", e.getMessage());
        }
    }
}
