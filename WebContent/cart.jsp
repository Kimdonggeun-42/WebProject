<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Coupon, dao.CouponRepository" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<%
	String cartId=session.getId();
%>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">장바구니</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left"><a href="./deleteCart.jsp?cartId=<%=cartId%>" class="btn btn-danger">삭제하기</a></td>
					<td align="right"><a href="./shippingInfo.jsp?cartId=
					<%=cartId%>" class="btn btn-success">주문하기</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>상품</th>
					<th>가격</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
				</tr>
				<%
					int sum=0;
					ArrayList<Coupon> cartList=(ArrayList<Coupon>)session.getAttribute("cartlist");
					if(cartList==null)
						cartList=new ArrayList<Coupon>();
					
					for(int i=0; i<cartList.size();i++){
						Coupon coupon=cartList.get(i);
						int total=coupon.getUnitPrice()*coupon.getQuantity();
						sum=sum+total;
				%>
				<tr>
					<td><%=coupon.getCouponId()%> - <%=coupon.getCouponName() %></td>
					<td><%=coupon.getUnitPrice() %></td>
					<td><%=coupon.getQuantity() %></td>
					<td><%=total %></td>
					<td><a href="./removeCart.jsp?id=<%=coupon.getCouponId()%>" class="badge badge-danger">삭제</a></td>
				</tr>
				<% } %>
				<tr>
					<th></th>
					<th></th>
					<th>총액</th>
					<th><%=sum %></th>
					<th></th>
				</tr>
			</table>
			<a href="./coupons.jsp" class="btn btn-secondary"> &laquo; 쇼핑 계속하기</a>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>