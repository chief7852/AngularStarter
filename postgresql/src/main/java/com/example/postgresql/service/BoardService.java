package com.example.postgresql.service;

import com.example.postgresql.model.Board;
import com.example.postgresql.model.Result;

public interface BoardService {
    
    public Result createBoard(Board board);
    public Result retrieveBoardList();
    public Result retrieveBoard(int boardNum);
    public Result updateBoard(Board board);
    public Result deleteBoard(int boardNum);
}
