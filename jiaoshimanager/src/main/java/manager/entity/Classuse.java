package manager.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Classuse {
	@Id
	@GeneratedValue()
	private int classuse_id;
	@Column(length=8)
	private String student_id;
	private int classroom_id;
	private String category;
	private Date date;
	private String activity;
	public int getClassuse_id() {
		return classuse_id;
	}
	public void setClassuse_id(int classuse_id) {
		this.classuse_id = classuse_id;
	}

	public String getStudent_id() {
		return student_id;
	}
	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}
	public int getClassroom_id() {
		return classroom_id;
	}
	public void setClassroom_id(int classroom_id) {
		this.classroom_id = classroom_id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getActivity() {
		return activity;
	}
	public void setActivity(String activity) {
		this.activity = activity;
	}
	public Classuse(int classuse_id, String student_id, int classroom_id, String category, Date date, String activity) {
		super();
		this.classuse_id = classuse_id;
		this.student_id = student_id;
		this.classroom_id = classroom_id;
		this.category = category;
		this.date = date;
		this.activity = activity;
	}
	
	public Classuse() {
		super();
	}
}
