package com.example.nature;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NatureController {

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("message", "Welcome to the Nature Website!");
        return "index";
    }
}
