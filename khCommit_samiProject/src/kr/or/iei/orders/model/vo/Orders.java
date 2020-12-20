package kr.or.iei.orders.model.vo;

import java.sql.Date;

public class Orders {
	private int ordersNo;
	private int memberNo;
	private int productNo;
	private Date ordersDate;
	private int ordersNum;
	private char ordersPay;
	private char deliveryYN;
	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Orders(int ordersNo, int memberNo, int productNo, Date ordersDate, int ordersNum, char ordersPay,
			char deliveryYN) {
		super();
		this.ordersNo = ordersNo;
		this.memberNo = memberNo;
		this.productNo = productNo;
		this.ordersDate = ordersDate;
		this.ordersNum = ordersNum;
		this.ordersPay = ordersPay;
		this.deliveryYN = deliveryYN;
	}
	public int getOrdersNo() {
		return ordersNo;
	}
	public void setOrdersNo(int ordersNo) {
		this.ordersNo = ordersNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public Date getOrdersDate() {
		return ordersDate;
	}
	public void setOrdersDate(Date ordersDate) {
		this.ordersDate = ordersDate;
	}
	public int getOrdersNum() {
		return ordersNum;
	}
	public void setOrdersNum(int ordersNum) {
		this.ordersNum = ordersNum;
	}
	public char getOrdersPay() {
		return ordersPay;
	}
	public void setOrdersPay(char ordersPay) {
		this.ordersPay = ordersPay;
	}
	public char getDeliveryYN() {
		return deliveryYN;
	}
	public void setDeliveryYN(char deliveryYN) {
		this.deliveryYN = deliveryYN;
	}
	
}
