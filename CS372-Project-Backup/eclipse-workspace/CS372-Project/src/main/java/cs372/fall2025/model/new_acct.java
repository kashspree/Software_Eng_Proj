package cs372.fall2025.model;

public class new_acct {
	private String email;
	private String first_name;
	private String middle_name;
	private String last_name;
	private String username;
	private String password;
	private String security1;
	private String security_ans1;
	private String security2;
	private String secuity_ans2;
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the first_name
	 */
	public String getFirst_name() {
		return first_name;
	}
	/**
	 * @param first_name the first_name to set
	 */
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	/**
	 * @return the middle_name
	 */
	public String getMiddle_name() {
		return middle_name;
	}
	/**
	 * @param middle_name the middle_name to set
	 */
	public void setMiddle_name(String middle_name) {
		this.middle_name = middle_name;
	}
	/**
	 * @return the last_name
	 */
	public String getLast_name() {
		return last_name;
	}
	/**
	 * @param last_name the last_name to set
	 */
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return the security1
	 */
	public String getSecurity1() {
		return security1;
	}
	/**
	 * @param security1 the security1 to set
	 */
	public void setSecurity1(String security1) {
		this.security1 = security1;
	}
	/**
	 * @return the security_ans1
	 */
	public String getSecurity_ans1() {
		return security_ans1;
	}
	/**
	 * @param security_ans1 the security_ans1 to set
	 */
	public void setSecurity_ans1(String security_ans1) {
		this.security_ans1 = security_ans1;
	}
	/**
	 * @return the security2
	 */
	public String getSecurity2() {
		return security2;
	}
	/**
	 * @param security2 the security2 to set
	 */
	public void setSecurity2(String security2) {
		this.security2 = security2;
	}
	/**
	 * @return the secuity_ans2
	 */
	public String getSecuity_ans2() {
		return secuity_ans2;
	}
	/**
	 * @param secuity_ans2 the secuity_ans2 to set
	 */
	public void setSecuity_ans2(String secuity_ans2) {
		this.secuity_ans2 = secuity_ans2;
	}
	@Override
	public String toString() {
		return "new_account_model [email=" + email + ", first_name=" + first_name + ", middle_name=" + middle_name
				+ ", last_name=" + last_name + ", username=" + username + ", password=" + password + ", security1="
				+ security1 + ", security_ans1=" + security_ans1 + ", security2=" + security2 + ", secuity_ans2="
				+ secuity_ans2 + ", getEmail()=" + getEmail() + ", getFirst_name()=" + getFirst_name()
				+ ", getMiddle_name()=" + getMiddle_name() + ", getLast_name()=" + getLast_name() + ", getUsername()="
				+ getUsername() + ", getPassword()=" + getPassword() + ", getSecurity1()=" + getSecurity1()
				+ ", getSecurity_ans1()=" + getSecurity_ans1() + ", getSecurity2()=" + getSecurity2()
				+ ", getSecuity_ans2()=" + getSecuity_ans2() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}

}