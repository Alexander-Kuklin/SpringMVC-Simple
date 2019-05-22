package com.epam.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class MainController {

    @RequestMapping(value = "/{number}", method = RequestMethod.POST)
    public String show(@PathVariable("number") int number, @RequestParam("stringValue") String textValue, Model model) {

        model.addAttribute("paramInBody", textValue);
        model.addAttribute("paramInUrl", number);

        return "answer";
    }

    @GetMapping("/")
    public String HelloPage(){
        return "index";
    }

}
