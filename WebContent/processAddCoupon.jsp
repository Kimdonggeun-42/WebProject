<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*, com.oreilly.servlet.multipart.*, java.util.*" %>
<%@ page import="dto.Coupon" %>
<%@ page import="dao.CouponRepository" %>

<%
request.setCharacterEncoding("utf-8");

String filename="";
String realFolder="C:\\upload";
int maxSize=5*1024*1024;
String enctype="utf-8";

MultipartRequest multi=new MultipartRequest(request,realFolder,maxSize,enctype, new DefaultFileRenamePolicy());

String couponId=multi.getParameter("couponId");
String couponName=multi.getParameter("couponName");
String unitPrice=multi.getParameter("unitPrice");
String description=multi.getParameter("description");
String brandName=multi.getParameter("brandName");
String category=multi.getParameter("category");
String unitsInStock=multi.getParameter("unitsInStock");
String dueDate=multi.getParameter("dueDate");
String sellerId=multi.getParameter("sellerId");

Integer price;

if(unitPrice.isEmpty())
	price=0;
else
	price=Integer.valueOf(unitPrice);

long stock;

if(unitsInStock.isEmpty())
	stock=0;
else
	stock=Long.valueOf(unitsInStock);

Enumeration files=multi.getFileNames();
String fname=(String)files.nextElement();
String fileName=multi.getFilesystemName(fname);

CouponRepository dao=CouponRepository.getInstance();

Coupon newCoupon=new Coupon();
newCoupon.setCouponId(couponId);
newCoupon.setCouponName(couponName);
newCoupon.setUnitPrice(price);
newCoupon.setDescription(description);
newCoupon.setBrandName(brandName);
newCoupon.setCategory(category);
newCoupon.setUnitsInStock(stock);
newCoupon.setDueDate(dueDate);
newCoupon.setSellerId(sellerId);
newCoupon.setFilename(fileName);

dao.addCoupon(newCoupon);

response.sendRedirect("coupons.jsp");
%>