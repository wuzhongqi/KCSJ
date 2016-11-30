package manager.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Apply {
	@Id
	@GeneratedValue()
	private int apply_id;
	@Column(length=8)
	private String student_id;
	private int classroom_id;
	private String group;
	private String activity;
	private Date date;
	private String state;
	public int getApply_id() {
		return apply_id;
	}
	public void setApply_id(int apply_id) {
		this.apply_id = apply_id;
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
	public String getGroup() {
		return group;
	}
	public void setGroup(String group) {
		this.group = group;
	}
	public String getActivity() {
		return activity;
	}
	public void setActivity(String activity) {
		this.activity = activity;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Apply(int apply_id, String student_id, int classroom_id, String group, String activity, Date date,
			String state) {
		
		this.apply_id = apply_id;
		this.student_id = student_id;
		this.classroom_id = classroom_id;
		this.group = group;
		this.activity = activity;
		this.date = date;
		this.state = state;
	}
	public Apply(){
		super();
	}
}
