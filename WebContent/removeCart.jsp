<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Coupon, dao.CouponRepository" %>
<%
	String id=request.getParameter("id");
	if(id==null || id.trim().equals("")){
		response.sendRedirect("coupons.jsp");
		return;
	}
	
	CouponRepository dao=CouponRepository.getInstance();
	Coupon coupon=dao.getCouponById(id);
	
	if(coupon==null)
		response.sendRedirect("exceptionNoBookId.jsp");
	
	ArrayList<Coupon> cartList=(ArrayList<Coupon>)session.getAttribute("cartlist");
	Coupon couponsQnt=new Coupon();
	
	for(int i=0;i<cartList.size();i++){
		couponsQnt=cartList.get(i);
		if(couponsQnt.getCouponId().equals(id))
			cartList.remove(couponsQnt);
	}
	
	response.sendRedirect("cart.jsp");
%>

