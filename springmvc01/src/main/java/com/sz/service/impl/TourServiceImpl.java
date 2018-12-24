package com.sz.service.impl;

import com.sz.mapper.TourMapper;
import com.sz.pojo.Tour;
import com.sz.service.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("tourService")
public class TourServiceImpl implements TourService {
    @Autowired
    private TourMapper tourMapper;
    @Override
    public int add(Tour tour) {
        return tourMapper.add(tour);
    }

    @Override
    public List<Tour> selectAll() {
        return tourMapper.selectAll();
    }
}
