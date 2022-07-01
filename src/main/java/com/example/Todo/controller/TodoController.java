package com.example.Todo.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TodoController {
    @GetMapping("/")
    public List<String> getTodos(){
        List<String> todos = Arrays.asList("Go to gym", "Learn bike", "Finish web project");
        return todos;
    }
}
