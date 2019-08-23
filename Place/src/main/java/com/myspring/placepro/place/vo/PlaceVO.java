package com.myspring.placepro.place.vo;

import org.springframework.stereotype.Component;

@Component("placeVO")
public class PlaceVO {
	private String sample;
	public PlaceVO() {
		// TODO Auto-generated constructor stub
	}
	public PlaceVO(String sample) {
		this.sample = sample;
	}
	
	
	public String getSample() {
		return sample;
	}

	public void setSample(String sample) {
		this.sample = sample;
	}

}
