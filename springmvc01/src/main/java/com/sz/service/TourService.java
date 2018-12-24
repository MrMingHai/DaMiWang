package com.sz.service;

import com.sz.pojo.Tour;

import java.util.List;

public interface TourService {
    int add(Tour tour);

    List<Tour> selectAll();
}
