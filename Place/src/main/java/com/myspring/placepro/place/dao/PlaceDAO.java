package com.myspring.placepro.place.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;



public interface PlaceDAO {
	
	public List selectAllPlacesList() throws DataAccessException;
}
