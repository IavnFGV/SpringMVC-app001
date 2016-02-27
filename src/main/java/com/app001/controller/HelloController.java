package com.app001.controller;

import org.springframework.beans.propertyeditors.StringArrayPropertyEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by GFH on 25.02.2016.
 */
@Controller
public class HelloController {

    @RequestMapping(value = "/greeting")
    public String sayHello(Model model) {

        model.addAttribute("greeting", "Hello Spring");
        return "hello";
    }
}