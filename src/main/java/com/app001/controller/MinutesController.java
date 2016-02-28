package com.app001.controller;

import com.app001.model.Activity;
import com.app001.model.Exercise;
import com.sun.corba.se.spi.orbutil.fsm.Action;
import com.sun.java_cup.internal.runtime.Symbol;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by GFH on 27.02.2016.
 */
@Controller
public class MinutesController {

    @RequestMapping("/addMinutes")
    public String addMinutes(@ModelAttribute("exercise") Exercise exercise) {

        System.out.println("exercise: " + exercise.getMinutes());
        System.out.println("exercise activity: " + exercise.getActivity());
//        return "forward:addMoreMinutes.html";
//        return "redirect:addMoreMinutes.html";
        return "addMinutes";
    }

    @RequestMapping(value = "/activities", method = RequestMethod.GET)
    public
    @ResponseBody
    List<Activity> findAllActivities() {
        List<Activity> activities = new ArrayList<>();

        Activity run = new Activity();
        run.setDesc("Run");
        activities.add(run);
        Activity swim = new Activity();
        swim.setDesc("Swim");
        activities.add(swim);
        Activity bike = new Activity();
        bike.setDesc("Bike");
        activities.add(bike);
        return activities;
    }
//    @RequestMapping("/addMoreMinutes")
//    public String addMoreMinutes(@ModelAttribute("exercise") Exercise exercise) {
//
//        System.out.println("exercising: " + exercise.getMinutes());
//        return "addMinutes";
//    }
}
