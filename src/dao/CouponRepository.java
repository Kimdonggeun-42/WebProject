package dao;

import java.util.ArrayList;
import dto.Coupon;

public class CouponRepository {
	private ArrayList<Coupon> listOfProducts=new ArrayList<Coupon>();
	private static CouponRepository instance=new CouponRepository();
	
	public static CouponRepository getInstance() {
		return instance;
	}
	
	public ArrayList<Coupon> getAllCoupons(){
		return listOfProducts;
	}
	
	public CouponRepository() {
		Coupon c1=new Coupon("C1234","애슐리 평일 디너", 16000);
		c1.setDescription("쿠폰1. 애슐리 쿠폰");
		c1.setCategory("Food");
		c1.setBrandName("애슐리");
		c1.setUnitsInStock(1000);
		c1.setFilename("P1234.jpg");
		
		Coupon c2=new Coupon("C1235","삼성전자 디바이스 액세서리", 15000);
		c2.setDescription("쿠폰2. 삼성전자 디바이스 액세서리 할인 쿠폰");
		c2.setCategory("IT");
		c2.setBrandName("삼성전자");
		c2.setUnitsInStock(1000);
		c2.setFilename("P1235.jpg");
		
		Coupon c3=new Coupon("C1236","자연별곡 평일 런치", 10000);
		c3.setDescription("쿠폰3. 자연별곡 평일 런치 쿠폰");
		c3.setCategory("Food");
		c3.setBrandName("자연별곡");
		c3.setUnitsInStock(1000);
		c3.setFilename("P1236.jpg");
		
		listOfProducts.add(c1);
		listOfProducts.add(c2);
		listOfProducts.add(c3);
	}
	
	public Coupon getCouponById(String couponId) {
		Coupon couponById=null;
		
		for(int i=0; i<listOfProducts.size();i++) {
			Coupon coupon=listOfProducts.get(i);
			if(coupon!=null && coupon.getCouponId()!=null && coupon.getCouponId().equals(couponId)) {
				couponById=coupon;
				break;
			}
		}
		
		return couponById;
	}
	
	public void addCoupon(Coupon coupon) {
		listOfProducts.add(coupon);
	}
}
