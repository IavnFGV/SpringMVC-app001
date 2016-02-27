package com.app001.controller;

import com.app001.model.Exercise;
import com.sun.java_cup.internal.runtime.Symbol;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by GFH on 27.02.2016.
 */
@Controller
public class MinutesController {

    @RequestMapping("/addMinutes")
    public String addMinutes(@ModelAttribute("exercise") Exercise exercise) {

        System.out.println("exercise: " + exercise.getMinutes());
//        return "forward:addMoreMinutes.html";
//        return "redirect:addMoreMinutes.html";
        return "addMinutes";
    }

//    @RequestMapping("/addMoreMinutes")
//    public String addMoreMinutes(@ModelAttribute("exercise") Exercise exercise) {
//
//        System.out.println("exercising: " + exercise.getMinutes());
//        return "addMinutes";
//    }
}
