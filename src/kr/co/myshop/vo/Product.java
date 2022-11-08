package kr.co.myshop.vo;

public class Product {
	private int proNo;
	private int cateNo;
	private String proName;
	private String proSpec;
	private int proPrice;
	private int oriPrice;
	private double discountRate;
	private String proPic;
	private String proPic2;
	private int amount;
	
	public int getProNo() {
		return proNo;
	}
	public void setProNo(int proNo) {
		this.proNo = proNo;
	}
	public int getCateNo() {
		return cateNo;
	}
	public void setCateNo(int cateNo) {
		this.cateNo = cateNo;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public String getProSpec() {
		return proSpec;
	}
	public void setProSpec(String proSpec) {
		this.proSpec = proSpec;
	}
	public int getProPrice() {
		return proPrice;
	}
	public void setProPrice(int proPrice) {
		this.proPrice = proPrice;
	}
	public String getProPic() {
		return proPic;
	}
	public void setProPic(String proPic) {
		this.proPic = proPic;
	}
	public int getOriPrice() {
		return oriPrice;
	}
	public void setOriPrice(int oriPrice) {
		this.oriPrice = oriPrice;
	}
	public double getDiscountRate() {
		return discountRate;
	}
	public void setDiscountRate(double discountRate) {
		this.discountRate = discountRate;
	}
	public String getProPic2() {
		return proPic2;
	}
	public void setProPic2(String proPic2) {
		this.proPic2 = proPic2;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	
	
}
