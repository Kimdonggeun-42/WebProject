<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="dto.Coupon" %>
<%@ page import="dao.CouponRepository" %>
<%@ page errorPage="exceptionNoCouponId.jsp" %>
<jsp:useBean id="couponDAO" class="dao.CouponRepository" scope="session" />
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>쿠폰 정보</title>
<script type="text/javascript">
	function addToCart(){
		if(confirm("쿠폰을 장바구니에 추가하시겠습니까?"))
			document.addForm.submit();
		else
			document.addForm.reset();
	}
</script>
<head>
</head>
<body>
<jsp:include page="menu.jsp"/>
<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">쿠폰 정보</h1>
	</div>
</div>
<%
	String id=request.getParameter("id");
	CouponRepository dao=CouponRepository.getInstance();
	Coupon coupon=dao.getCouponById(id);
%>
<div class="container">
	<div class="row">
		<div class="col-md-5">
			<img src="c:/upload/<%=coupon.getFilename()%>" 
			style="width: 100%" >
		</div>
		<div class="col-md-6">
			<h3><%=coupon.getCouponName() %></h3>
			<p><%=coupon.getDescription() %>
			<p><b>쿠폰 코드 : </b><span class="badge badge-danger">
			<%=coupon.getCouponId() %></span>
			<p><b>브랜드</b> : <%=coupon.getBrandName() %>
			<p><b>분류</b> : <%=coupon.getCategory() %>
			<p><b>재고 수</b> : <%=coupon.getUnitsInStock() %>
			<h4><%=coupon.getUnitPrice() %>원</h4>
			<p><form name="addForm" action="./addCart.jsp?id=<%=coupon.getCouponId()%>" method="post">
			<a href="#" class="btn btn-info" onclick="addToCart()">쿠폰주문 &raquo;</a>
			<a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
			<a href="./coupons.jsp" class="btn btn-secondary">쿠폰목록 &raquo;</a>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>