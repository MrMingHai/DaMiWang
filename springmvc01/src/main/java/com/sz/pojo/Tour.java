package com.sz.pojo;


import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Tour {

  private Integer id;
  private Integer tourCityId;
  private String tourPlace;
  @DateTimeFormat(pattern = "yyyy-MM-dd")
  private Date tourTime;
  private String tourNote;
  private Tour_cityId tc;

  public Tour_cityId getTc() {
    return tc;
  }

  public void setTc(Tour_cityId tc) {
    this.tc = tc;
  }

  public Integer getTourCityId() {
    return tourCityId;
  }

  public void setTourCityId(Integer tourCityId) {
    this.tourCityId = tourCityId;
  }

  //添加是否成功
  private boolean flag;

  public boolean isFlag() {
    return flag;
  }

  public void setFlag(boolean flag) {
    this.flag = flag;
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getTourPlace() {
    return tourPlace;
  }

  public void setTourPlace(String tourPlace) {
    this.tourPlace = tourPlace;
  }


  public Date getTourTime() {
    return tourTime;
  }

  public void setTourTime(Date tourTime) {
    this.tourTime = tourTime;
  }

  public String getTourNote() {
    return tourNote;
  }

  public void setTourNote(String tourNote) {
    this.tourNote = tourNote;
  }

}
