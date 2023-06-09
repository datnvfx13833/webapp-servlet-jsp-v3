package model;

import java.sql.Date;
import java.util.List;

public class Orders {
  private int orderId;
  private float price;
  private int status;
  private Date orderDate;
  private String address;
  private String phoneNumber;
  private List<ProductOrders> lp;
  private String userMail;
  private String receivedDate;
  private String discount;
  
  public Orders() {
	  
  }
  public Orders(int orderId, float price, int status, Date orderDate, 
		  String address, String phoneNumber, List<ProductOrders> lp, 
		  String userMail, String receivedDate ) {
	  super();
	  this.orderId = orderId;
	  this.price = price;
	  this.status = status;
	  this.orderDate = orderDate;
	  this.address = address;
	  this.phoneNumber = phoneNumber;
	  this.lp = lp;
	  this.userMail = userMail;
	  this.receivedDate = receivedDate;
  }
  public Orders(String userMail, int status, String address, String discount, String receivedDate ) {
	  super();
	  this.status = status;
	  this.address = address;
	  this.userMail = userMail;
	  this.receivedDate = receivedDate;
	  this.discount = discount;
  }
public int getOrderId() {
	return orderId;
}
public void setOrderId(int orderId) {
	this.orderId = orderId;
}
public float getPrice() {
	return price;
}
public void setPrice(float price) {
	this.price = price;
}
public int getStatus() {
	return status;
}
public void setStatus(int status) {
	this.status = status;
}
public Date getOrderDate() {
	return orderDate;
}
public void setOrderDate(Date orderDate) {
	this.orderDate = orderDate;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getPhoneNumber() {
	return phoneNumber;
}
public void setPhoneNumber(String phoneNumber) {
	this.phoneNumber = phoneNumber;
}
public List<ProductOrders> getLp() {
	return lp;
}
public void setLp(List<ProductOrders> lp) {
	this.lp = lp;
}
public String getUserMail() {
	return userMail;
}
public void setUserMail(String userMail) {
	this.userMail = userMail;
}
public String getReceivedDate() {
	return receivedDate;
}
public void setReceivedDate(String receivedDate) {
	this.receivedDate = receivedDate;
}
public String getDiscount() {
	return discount;
}
public void setDiscount(String discount) {
	this.discount = discount;
}
  
}
