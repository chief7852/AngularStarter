package com.example.demo;

import org.springframework.web.bind.annotation.RequestMapping;

public class HelloController {
    
    @RequestMapping("/")
    public String testing(){
        return "Hello, Springboot by vscode";
    }
}
