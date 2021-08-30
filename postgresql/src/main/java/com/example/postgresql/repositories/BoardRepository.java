package com.example.postgresql.repositories;

import java.util.List;

import com.example.postgresql.model.Board;

import org.springframework.stereotype.Repository;

@Repository
public interface BoardRepository {
    public List<Board> findAllByOrderByBoardnoDesc();
}
