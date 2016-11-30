package entity;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Classuse {
	@Id
	@GeneratedValue()
	private int classuse_id;
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="student_id",unique=true)
	private User user;
	@ManyToOne(cascade={CascadeType.ALL},fetch=FetchType.EAGER)
	@JoinColumn(name="class_id",referencedColumnName="CLASS_ID")
	private Classroom classroom;
	private String category;
	private Date date;
	private String activity;
	public int getClassuse_id() {
		return classuse_id;
	}
	public void setClassuse_id(int classuse_id) {
		this.classuse_id = classuse_id;
	}

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Classroom getClassroom() {
		return classroom;
	}
	public void setClassroom(Classroom classroom) {
		this.classroom = classroom;
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

	
	public Classuse(int classuse_id, User user, Classroom classroom, String category, Date date, String activity) {
		super();
		this.classuse_id = classuse_id;
		this.user = user;
		this.classroom = classroom;
		this.category = category;
		this.date = date;
		this.activity = activity;
	}
	public Classuse() {
		super();
	}
}
