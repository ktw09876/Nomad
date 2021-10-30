package ark.member;

public class MemberBean {

	private String id;
	private String pass;
	private String name;
	private String sex;
	private String birthday;
	private String email;
	private String zipcode;
	private String address;
	private String hobby[];
	private String job;
	/**
	 * 커피 클래스 수강 과목
	 */
	private String coffeeClassSubject;
	/**
	 * 커피 클래스 수강 시간
	 */
	private String coffeeClassTime;
	/**
	 * 커피 클래스 인원 수
	 */
	private String coffeeClassTotalPeople;

	public String getId( ) {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass( ) {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName( ) {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex( ) {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirthday( ) {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getEmail( ) {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getZipcode( ) {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress( ) {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String[] getHobby( ) {
		return hobby;
	}

	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}

	public String getJob( ) {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}
	
	public String getCoffeeClassSubject() {
		return coffeeClassSubject;
	}

	public void setCoffeeClassSubject(String coffeeClassSubject) {
		this.coffeeClassSubject = coffeeClassSubject;
	}

	public String getCoffeeClassTime() {
		return coffeeClassTime;
	}

	public void setCoffeeClassTime(String coffeeClassTime) {
		this.coffeeClassTime = coffeeClassTime;
	}

	public String getCoffeeClassTotalPeople() {
		return coffeeClassTotalPeople;
	}

	public void setCoffeeClassTotalPeople(String coffeeClassTotalPeople) {
		this.coffeeClassTotalPeople = coffeeClassTotalPeople;
	}
	
}