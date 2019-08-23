package com.myspring.placepro.place.service;

import java.util.List;

import com.myspring.placepro.place.vo.PlaceVO;

public interface PlaceService {
	public List<PlaceVO> listPlaces() throws Exception;
}
