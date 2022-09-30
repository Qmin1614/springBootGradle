package com.example.study.web.controller;

import com.example.study.web.model.board.Board;
import com.example.study.web.model.board.dto.GetReadBoardResponse;
import com.example.study.web.model.board.dto.PostCreateBoard;
import com.example.study.web.model.board.dto.PostCreateBoardResponse;
import com.example.study.web.service.BoardService;
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
 * Date: 2022-09-27
 * Time: 오전 9:16
 * Comments:
 */
@Controller
public class BoardController {

    private BoardService boardService;

    public BoardController(BoardService boardService) {
        this.boardService = boardService;
    }

    @GetMapping(value = {"/board/list"})
    public String list(Model model) {
        List<Board> boardList = this.boardService.getBoardAll();
        model.addAttribute("getReadBoardResponse", new GetReadBoardResponse(boardList));
        model.addAttribute("main", "board/list");
        return "view";
    }

    @GetMapping(value = {"/board/add"})
    public String add(Model model) {
        model.addAttribute("main", "board/add");
        return "view";
    }

    @ResponseBody
    @PostMapping(value = {"/board/add"})
    public PostCreateBoardResponse postCreateBoard(@RequestBody PostCreateBoard postCreateBoard) {
        try {
            this.boardService.addBoard(postCreateBoard.toEntity());
            return new PostCreateBoardResponse("success", "회원가입에 성공했습니다.");
        } catch (Exception e) {
            return new PostCreateBoardResponse("fail", e.getMessage());
        }
    }
}
