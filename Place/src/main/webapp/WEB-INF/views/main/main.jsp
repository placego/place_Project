<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.tagLinkArea {
	margin-top: 15px;
	position: relative;
}

.tagList {
	box-sizing: border-box;
	width: 90%;
	height: 60px;
	float: left;
	min-width: 235px;
	padding: 0 93px;
	overflow: hidden;
}

.tagList li {
	border: 1px solid #d9d9d9;
	border-radius: 0;
	-webkit-border-radius: 0;
	float: left;
	width: auto;
	text-align: center;
}

.tagList li {
	min-width: 80px;
	height: 45px;
	line-height: 45px;
	margin: 10px 4px 0;
	border-radius: 24px;
	list-style-type: none;
}

.tagList li:hover {
	border-color: #ff4081;
	background: #ff4081;
}

.tagList li a {
	color: #333333;
	display: block;
	text-decoration: none;
}

.tagList li a:hover {
	color: #ffffff;
}

.tagList li a {
	font-size: 16px;
	padding: 0 20px;
}
</style>
</head>
<body>
	<div class="tagLinkArea">
		<ul class="tagList">
			<li><a href="https://place.onoffmix.com/search?type=파티룸">파티룸</a></li>
			<li><a href="https://place.onoffmix.com/search?type=스터디룸">스터디룸</a></li>
			<li><a href="https://place.onoffmix.com/search?type=공연장">공연장</a></li>
			<li><a href="https://place.onoffmix.com/search?type=연수원">연수원</a></li>
			<li><a href="https://place.onoffmix.com/search?type=연습실">연습실</a></li>

		</ul>
	</div>
	<br><br>
	
	<div class="main_book">
		<h1 id="best_title" >인기상품</h1>
	
		<c:set var="goods_count" value="0" />
			<c:forEach var="item" items="${goodsMap.bestplace}">
				<c:set var="goods_count" value="${goods_count+1 }" />
				<div class="book">
					<a
						href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goods_id}">
						<img class="link" src="${contextPath}/resources/image/1px.gif">
					</a> <img width="200" height="154"
						src="${contextPath}/thumbnails.do?goods_id=${item.goods_id}&fileName=${item.goods_fileName}">

					<div class="title">${item.goods_name}</div>
					<div class="price">
						<fmt:formatNumber value="${item.goods_price}" type="number"
							var="goods_price" />
						${goods_price}원
					</div>
				</div>
				<c:if test="${goods_count==15   }">
					<div class="book">
						<font size=20> <a href="#">more</a></font>
					</div>
				</c:if>
			</c:forEach>
	</div>
</body>
</html>