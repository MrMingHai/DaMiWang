package com.sz.mapper;

import com.sz.pojo.Tour;

import java.util.List;

public interface TourMapper {
    int add(Tour tour);

    List<Tour> selectAll();
}
