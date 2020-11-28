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
		response.sendRedirect("exceptionNoBookID.jsp");
	
	ArrayList<Coupon> booksList=dao.getAllCoupons();
	Coupon coupons=new Coupon();
	for(int i=0; i<booksList.size();i++){
		coupons=booksList.get(i);
		if(coupons.getCouponId().equals(id))
			break;
	}
	
	ArrayList<Coupon> list=(ArrayList<Coupon>) session.getAttribute("cartlist");
	
	if(list==null){
		list=new ArrayList<Coupon>();
		session.setAttribute("cartlist", list);
	}
	
	int cnt=0;
	Coupon couponsQnt=new Coupon();
	
	for(int i=0; i<list.size(); i++){
		couponsQnt=list.get(i);
		if(couponsQnt.getCouponId().equals(id)){
			cnt++;
			int orderQuantity=couponsQnt.getQuantity()+1;
			couponsQnt.setQuantity(orderQuantity);
		}
	}
	
	if(cnt==0){
		coupons.setQuantity(1);
		list.add(coupons);
	}
	
	response.sendRedirect("coupons.jsp?id="+id);
%>
