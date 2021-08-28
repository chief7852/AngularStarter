package com.springboot.angular.springbootdatajpa.repository;
import java.util.List;

import com.springboot.angular.springbootdatajpa.model.Tutorial;

import org.springframework.data.jpa.repository.JpaRepository;

public interface TutorialRepository extends JpaRepository<Tutorial, Long> {
    List<Tutorial> findByPublished(boolean published);
    List<Tutorial> findByTitleContaining(String title);
  }