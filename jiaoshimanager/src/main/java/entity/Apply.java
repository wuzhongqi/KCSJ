package entity;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;


@Entity
public class Apply {
	@Id
	@GeneratedValue()
	private int apply_id;
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="student_id",unique=true)
	private User user;
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="class_id",unique=true)
	private Classroom classroom;
	private String group1;
	private String activity;
	private Date date;
	private String state;
	
	public int getApply_id() {
		return apply_id;
	}
	public void setApply_id(int apply_id) {
		this.apply_id = apply_id;
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
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	

	public String getGroup1() {
		return group1;
	}
	public void setGroup1(String group1) {
		this.group1 = group1;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getActivity() {
		return activity;
	}
	public void setActivity(String activity) {
		this.activity = activity;
	}


	public Apply(int apply_id, User user, Classroom classroom, String group1, String activity, Date date,
			String state) {
		super();
		this.apply_id = apply_id;
		this.user = user;
		this.classroom = classroom;
		this.group1 = group1;
		this.activity = activity;
		this.date = date;
		this.state = state;
	}
	public Apply(){
		super();
	}


}
