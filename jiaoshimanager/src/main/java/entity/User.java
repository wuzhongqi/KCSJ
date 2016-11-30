package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class User {
	@Id
	@GeneratedValue(generator="student_id")
	@GenericGenerator(name="student_id",strategy="assigned")
	@Column(length=8)
	private String student_id;
	private String name;
	private String academy;
	private String banji;	
	private	String email;
	public User(){
		super();
	}
	public User(String student_id, String name, String academy, String banji, String email, String phone,
			String password) {

		this.student_id = student_id;
		this.name = name;
		this.academy = academy;
		this.banji = banji;
		this.email = email;
		this.phone = phone;
		this.password = password;
	}

	public String getStudent_id() {
		return student_id;
	}
	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAcademy() {
		return academy;
	}
	public void setAcademy(String academy) {
		this.academy = academy;
	}
	public String getBanji() {
		return banji;
	}
	public void setBanji(String banji) {
		this.banji = banji;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	private String phone;
	private String password;

}
