package org.invoice.vehicleApp;

import java.util.Date;

public class Invoice
{
  private int id;
  private int job_no;
  private Date date;
  
  private float idprice ;
  private float labourprice;
  private float discount;
  private int total;
  
  public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public int getJob_no() {
	return job_no;
}

public void setJob_no(int job_no) {
	this.job_no = job_no;
}

public Date getDate() {
	return date;
}

public java.sql.Date setDate(Date date) {
	   java.util.Date today = new java.util.Date();
//	this.date = new java.sql.Date(id);
	   return new java.sql.Date(today.getTime());
	
}

public float getIdprice() {
	return idprice;
}

public void setIdprice(float idprice) {
	this.idprice = idprice;
}

public float getLabourprice() {
	return labourprice;
}

public void setLabourprice(float labourprice) {
	this.labourprice = labourprice;
}

public float getDiscount() {
	return discount;
}

public void setDiscount(float discount) {
	this.discount = discount;
}

public int getTotal() {
	return total;
}

public void setTotal(int total) {
	this.total = total;
}

private static java.sql.Date date() {
	    java.util.Date today = new java.util.Date();
	    return new java.sql.Date(today.getTime());
	}
}
