package com.myspring.placepro.place.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.placepro.place.service.PlaceService;
import com.myspring.placepro.place.vo.PlaceVO;

@Controller("placeController")
public class PlaceControllerImpl implements PlaceController {

	@Autowired
	PlaceService placeService;
	
	@Autowired
	PlaceVO placeVO;
	
	@RequestMapping(value= "/place/listPlaces.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView listPlaces(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("place.controller - 장소 리스트");
		
		// 인터셉터에서 전달된 뷰이름을 가져옴
		String viewName = (String)request.getAttribute("viewName");
		
		// 모든 글 정보를 조회
		List placesList = placeService.listPlaces();
		
		ModelAndView mav = new ModelAndView(viewName);
		// 조회한 글 정보를 바인딩한 후 JSP로 전달
		mav.addObject("placesList", placesList);
		
		return mav;
	}

}
