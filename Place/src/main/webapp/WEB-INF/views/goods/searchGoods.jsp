<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
     //치환 변수 선언합니다.
      pageContext.setAttribute("crcn", "\r\n"); //Space, Enter
      pageContext.setAttribute("br", "<br/>"); //br 태그
      System.out.println("searchGoods.jsp\n===============================");
%> 
<head>
 <title>검색 도서 목록 페이지</title>
</head>
<body>
검색 결과

<c:forEach var="item" items="${goodsList}">
	<h1>${item.goods_name}</h1>
</c:forEach>

<!-- 
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
 -->
 
 
</body>