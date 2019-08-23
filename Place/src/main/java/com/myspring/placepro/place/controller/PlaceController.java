package com.myspring.placepro.place.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface PlaceController {

	// * 게시글 리스트
	public ModelAndView listPlaces(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
