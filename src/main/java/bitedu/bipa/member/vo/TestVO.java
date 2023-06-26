package bitedu.bipa.member.vo;

public class TestVO {
	private String id;
	private String pwd1;
	private String name;
	private String zipCode;
	private String addr1;
	private String addr2;
	private String year;
	private String month;
	private String day;
	private String gender;
	private String[] interests;
	private String introduce;
	
	
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd1() {
		return pwd1;
	}
	public void setPwd1(String pwd1) {
		this.pwd1 = pwd1;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String[] getInterests() {
		return interests;
	}
	public void setInterests(String[] interests) {
		this.interests = interests;
	}
	public TestVO(String id, String pwd1, String name, String zipCode, String addr1, String addr2, String year,
			String month, String day, String gender, String[] interests, String introduce) {
		super();
		this.id = id;
		this.pwd1 = pwd1;
		this.name = name;
		this.zipCode = zipCode;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.year = year;
		this.month = month;
		this.day = day;
		this.gender = gender;
		this.interests = interests;
		this.introduce = introduce;
	}
	
	
	
	
}
