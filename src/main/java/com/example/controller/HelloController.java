package com.example.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping(value = "/hello")
    public String say(@RequestParam(name = "say", required = false, defaultValue = "") String say) {
        return "Say : " + say;
    }
}
