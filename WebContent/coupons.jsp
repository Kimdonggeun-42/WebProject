<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Coupon" %>
<%@ page import="dao.CouponRepository" %>
<jsp:useBean id="couponDAO" class="dao.CouponRepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>쿠폰 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">쿠폰 목록</h1>
		</div>
	</div>
	<%
		CouponRepository dao=CouponRepository.getInstance();
		ArrayList<Coupon> listOfCoupons=dao.getAllCoupons();
	%>
	<div class="container">
		<div class="row" align="center"> <!-- 이게 컨테이너 안에 있는 전체적인 열 -->
			<%
				for(int i=0; i<listOfCoupons.size(); i++){
					Coupon coupon=listOfCoupons.get(i);
			%>
			<div class="col-md-4"><!-- 이게 각각의 파일들을 구분짓는 div 태그임 -->
			<!-- img에 상대경로로 넣은 이유는 크롬에서 읽어들일시 보안상 이미지가 표시가 안되기 때문. -->
			<!-- c드라이브에서 파일같은 걸 직접 읽어내는 것은 보안에 위배된다고 함 -->
				<img src="./resources/images/<%=coupon.getFilename()%>" style="width: 100%">
				<h3><%= coupon.getCouponName() %></h3>
				<p><%= coupon.getDescription()%>
				<p><%= coupon.getUnitPrice() %>원
				<p> <a href="./coupon.jsp?id=<%=coupon.getCouponId()%>"
				class="btn btn-secondary" role="button">상세 정보 &raquo;</a>
			</div>
			<%
			}
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>