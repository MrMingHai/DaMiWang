package com.sz.controller;

import com.sz.pojo.Tour;
import com.sz.service.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.List;


@Controller
@RequestMapping("/tour")
public class TourServiceController {

    @Autowired
    private TourService tourService;

    @RequestMapping("/add")
    public String add(Tour tour,Model model){
        tourService.add(tour);
        return "main";
    }

    @RequestMapping("/selectAll")
    public String selectAll(Model model){
        List<Tour> list=tourService.selectAll();
        model.addAttribute("list",list);

        return "show";
    }
    //json 数据

//    @RequestMapping(value ="add",method = RequestMethod.POST)
//    @ResponseBody
//    public Tour add(@RequestBody Tour tour, Model model){
//        System.out.println(tour.getTourTime());
//        int num=tourService.add(tour);
//        tour.setFlag(num==1?true:false);
//        return tour;
//    }
}
