package dto;

import java.io.Serializable;

public class Coupon implements Serializable{
	private static final long serialVerisonUID=-4274700572038677000L;
	private String brandName;//���� ���� �귣��
	private String couponId;//���� �ڵ�(���̵�)
	private String couponName;//���� �̸�
	private Integer unitPrice;//���� ����
	private String description;//���� ����
	private String category;//���� ī�װ�
	private long unitsInStock;//���� ����
	private String dueDate;//���� ������
	private String sellerId;//�Ǹ��� ���̵�
	private String filename;//��ǰ �̹��� �̸�
	private int quantity;//���� ����
	
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

