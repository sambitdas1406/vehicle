package org.part.javaApp;



public class Part {
	
	private int id;
	private String partname;
	private String partdesc;
	private String brandname;
	private String branddesc;
	private int count;
	private double price;
	private String udate;
	//private Date udate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPartname() {
		return partname;
	}
	public void setPartname(String partname) {
		this.partname = partname;
	}
	public String getPartdesc() {
		return partdesc;
	}
	public void setPartdesc(String partdesc) {
		this.partdesc = partdesc;
	}
	public String getBrandname() {
		return brandname;
	}
	public void setBrandname(String brandname) {
		this.brandname = brandname;
	}
	public String getBranddesc() {
		return branddesc;
	}
	public void setBranddesc(String branddesc) {
		this.branddesc = branddesc;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	 public String getUdate() {
	        return udate;
	    }
	    public void setUdate(String udate) {
	        this.udate = udate;
	    }
	
//	public String getUdate() {
//		return udate;
//	}
//	 public void setDob(Date udate) {
//	        this.udate = udate;
////	    }
//	public void setUdate(String udate) throws ParseException {
//		 DateFormat df = new SimpleDateFormat("dd-MM-yyyy"); 
//		 Date u = df.parse(udate);
//		this.udate = df.parse(udate);
//	}
//	public void setUdate(java.sql.Date date) {
//		
//	}
	    //  id;partname;partdesc; brandname; branddesc;count; price; udate;

//	    @Override
//	    public String toString() {
//	        return "Part [id=" + id + ", partname=" + partname
//	                + ", partdesc=" + partdesc + ", brandname=" + brandname + ",branddesc=" + branddesc + ", count="
//	                + count + ",price=" + price + ",udate=" + udate + "]";
//	    }  
}
