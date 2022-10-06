package com.example.study.web.controller;

import com.example.study.web.model.board.Board;
import com.example.study.web.model.board.dto.*;
import com.example.study.web.service.BoardService;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
            return new PostCreateBoardResponse("success", "게시판 글을 등록하였습니다.");
        } catch (Exception e) {
            return new PostCreateBoardResponse("fail", e.getMessage());
        }
    }

    @GetMapping(value = {"/board/update"})
    public String update(Model model, @ModelAttribute GetUpdateBoard getUpdateBoard) {
        Board board = this.boardService.getBoardById(getUpdateBoard.getBoardId());
        model.addAttribute("getUpdateBoardResponse", new GetUpdateBoardResponse(board));
        model.addAttribute("main", "board/update");
        return "view";
    }

    @ResponseBody
    @PostMapping(value = {"board/update"})
    public PostUpdateBoardResponse postUpdateBoard(@RequestBody PostUpdateBoard postUpdateBoard) {
        try {
            this.boardService.updateBoard(postUpdateBoard.toEntity());
            return new PostUpdateBoardResponse("success", "게시판 글 수정에 성공하였습니다");
        } catch (Exception e) {
            return new PostUpdateBoardResponse("fail", e.getMessage());
        }
    }

    @ResponseBody
    @PostMapping(value = {"board/delete"})
    public PostDeleteBoardResponse postDeleteBoardResponse(@RequestBody PostDeleteBoard postDeleteBoard) {
        try {
            this.boardService.deleteBoard(postDeleteBoard.getBoardId());
            return new PostDeleteBoardResponse("success", "게시판 삭제를 완료하였습니다.");
        } catch (Exception e) {
            return new PostDeleteBoardResponse("fail", e.getMessage());
        }
    }
}
