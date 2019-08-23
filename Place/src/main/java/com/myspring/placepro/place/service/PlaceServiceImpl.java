package com.myspring.placepro.place.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspring.placepro.place.dao.PlaceDAO;
import com.myspring.placepro.place.vo.PlaceVO;

@Service("placeService")
public class PlaceServiceImpl implements PlaceService {
	
	@Autowired
	PlaceDAO placeDAO;

	@Override
	public List<PlaceVO> listPlaces() throws Exception {

		List<PlaceVO> placesList = placeDAO.selectAllPlacesList();
		
		return placesList;
	}

}
