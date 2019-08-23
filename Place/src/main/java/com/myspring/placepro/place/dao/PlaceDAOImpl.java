package com.myspring.placepro.place.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.placepro.place.vo.PlaceVO;

@Repository("placeDAO")
public class PlaceDAOImpl implements PlaceDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List selectAllPlacesList() throws DataAccessException {
		List<PlaceVO> placesList = sqlSession.selectList("mapper.place.selectAllPlacesList");
		
		return placesList;
	}

}
