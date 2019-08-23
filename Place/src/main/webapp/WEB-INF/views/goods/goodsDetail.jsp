<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" 	isELIgnored="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set var="goods"  value="${goodsMap.goodsVO}"  />
<c:set var="imageList"  value="${goodsMap.imageList }"  />
 <%
     //치환 변수 선언합니다.
      pageContext.setAttribute("crcn", "\r\n"); //개행문자
      pageContext.setAttribute("br", "<br/>"); //br 태그
%>  
<html>
<head>
<style>

p { font-family: "나눔고딕", "Nanum Gothic", "맑은 고딕", "malgun gothic";}

.button {
	margin-top: 15px;
	position: relative;

	box-sizing: border-box;
	width: 90%;
	height: 60px;
	float: left;
	min-width: 235px;
	padding: 0 93px;
	overflow: hidden;

	border: 1px solid #d9d9d9;
	border-radius: 0;
	-webkit-border-radius: 0;
	float: left;
	width: auto;
	text-align: center;

	min-width: 80px;
	height: 45px;
	line-height: 45px;
	margin: 10px 4px 0;
	border-radius: 24px;
	list-style-type: none;

	color: #333333;
	display: block;
	text-decoration: none;

	font-size: 16px;
	padding: 0 20px;
}

.button :hover {
	color: #ffffff;
	border-color: #ff4081;
	background: #ff4081;
}
td{padding:20px;}
</style>

<script type="text/javascript">
function order_place(){
	alert("예약완료");
/* 	var _isLogOn=document.getElementById("isLogOn");
	var isLogOn=_isLogOn.value;
	
	 if(isLogOn=="false" || isLogOn=='' ){
		alert("로그인 후 주문이 가능합니다!!!");
	}  */
	}
</script>
</head>
<body>
	<hgroup>
		<h1>상세보기</h1>
		<h3>${goods.goods_name }</h3>
	</hgroup>
	<div style="float:left; margin-right: 10px;">
	<table><tr>
	<td>
	<figure>
			<img alt="이미지준비중입니다."
				src="${contextPath}/thumbnails.do?goods_id=${goods.goods_id}&fileName=${goods.goods_fileName}">
	</figure>
	</td>
	<td max-width=50px;>
	<div id="detail_table" max-width=10px>
	      <table>
         <tbody>
            <tr>
               <td class="fixed">상세주소</td>
               <td class="active">${goods.goods_location}</td>
            </tr>
            <tr>
               <td class="fixed">수용인원</td>
               <td class="active">${goods.goods_people_num}</td>
            </tr>
            <tr>
               <td class="fixed">가격</td>
               <td class="active">${goods.goods_price}원</td>
            </tr>
            <tr>
               <td class="fixed">대관시간</td>
               <td class="active">${goods.goods_operation_time}</td>
            </tr>
            <tr>
               <td class="fixed">문의처</td>
               <td class="active">${goods.goods_tel}</td>
            </tr>
            <tr>
               <td class="fixed">위치</td>
               <td class="active">${goods.goods_location}</td>
            </tr>
         </tbody>
      </table>
      </div>
	</td>
	</tr>
	<tr>
	<td  colspan="2">
	<p>플레이스 정보</p><hr>
	${goods.goods_contents}
	</td>
	</tr>
	<tr>
	<td colspan="2">
	<p>지도</p><hr><br>
	   <p style="margin-top: -12px">
      <em class="link"> <a href="javascript:void(0);"
         onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">
            혹시 주소 결과가 잘못 나오는 경우에는 여기에 제보해주세요. </a>
      </em>
   </p>
   <div id="map" style="width: 100%; height: 350px;"></div>

   <script type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a8f3c51ee0d9f1ba6a30b597e153e745&libraries=services"></script>
   <script>
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
      mapOption = {
         center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
         level : 3
      // 지도의 확대 레벨
      };

      // 지도를 생성합니다    
      var map = new kakao.maps.Map(mapContainer, mapOption);

      // 주소-좌표 변환 객체를 생성합니다
      var geocoder = new kakao.maps.services.Geocoder();

      // 주소로 좌표를 검색합니다
      geocoder
            .addressSearch(
                  '서울특별시 강남구 강남대로156길',
                  function(result, status) {

                     // 정상적으로 검색이 완료됐으면 
                     if (status === kakao.maps.services.Status.OK) {

                        var coords = new kakao.maps.LatLng(result[0].y,
                              result[0].x);

                        // 결과값으로 받은 위치를 마커로 표시합니다
                        var marker = new kakao.maps.Marker({
                           map : map,
                           position : coords
                        });

                        // 인포윈도우로 장소에 대한 설명을 표시합니다
                        var infowindow = new kakao.maps.InfoWindow(
                              {
                                 content : '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
                              });
                        infowindow.open(map, marker);

                        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                        map.setCenter(coords);
                     }
                  });
      </script>
      </td>
	</tr>
	</table>
</div>
</body>
</html>
<input type="hidden" name="isLogOn" id="isLogOn" value="${isLogOn}" />