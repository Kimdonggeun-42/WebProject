package dto;

import java.io.Serializable;

public class Coupon implements Serializable{
	private static final long serialVerisonUID=-4274700572038677000L;
	private String brandName;//쿠폰 적용 브랜드
	private String couponId;//쿠폰 코드(아이디)
	private String couponName;//쿠폰 이름
	private Integer unitPrice;//쿠폰 가격
	private String description;//쿠폰 설명
	private String category;//쿠폰 카테고리
	private long unitsInStock;//쿠폰 수량
	private String dueDate;//쿠폰 사용기한
	private String sellerId;//판매자 아이디
	private String filename;//상품 이미지 이름
	private int quantity;//담은 수량
	
	public Coupon() {
		super();
	}
	
	public Coupon(String couponId, String couponName, Integer unitPrice) {
		this.couponId=couponId;
		this.couponName=couponName;
		this.unitPrice=unitPrice;
	}
	
	public String getBrandName() {
		return brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	public String getCouponId() {
		return couponId;
	}

	public void setCouponId(String couponId) {
		this.couponId = couponId;
	}

	public String getCouponName() {
		return couponName;
	}

	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public long getUnitsInStock() {
		return unitsInStock;
	}

	public void setUnitsInStock(long unitsInStock) {
		this.unitsInStock = unitsInStock;
	}
	
	public String getDueDate() {
		return dueDate;
	}

	public void setDueDate(String dueDate) {
		this.dueDate=dueDate;
	}
	
	public String getSellerId() {
		return sellerId;
	}

	public void setSellerId(String sellerId) {
		this.sellerId=sellerId;
	}
	
	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename=filename;
	}
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity=quantity;
	}
}

