package entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Classroom {
	@Id
	@GeneratedValue
	private int class_id;
	private String adress1;
	private String adress2;
	private String adress3;
	private int used;
	private int seat;
	public int getClass_id() {
		return class_id;
	}
	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}
	public String getAdress1() {
		return adress1;
	}
	public void setAdress1(String adress1) {
		this.adress1 = adress1;
	}
	public String getAdress2() {
		return adress2;
	}
	public void setAdress2(String adress2) {
		this.adress2 = adress2;
	}
	public String getAdress3() {
		return adress3;
	}
	public void setAdress3(String adress3) {
		this.adress3 = adress3;
	}
	public int getUsed() {
		return used;
	}
	public void setUsed(int used) {
		this.used = used;
	}
	public int getSeat() {
		return seat;
	}
	public void setSeat(int seat) {
		this.seat = seat;
	}
	public Classroom(){
		super();
	}
	public Classroom(int class_id, String adress1, String adress2, String adress3, int used, int seat) {
		
		this.class_id = class_id;
		this.adress1 = adress1;
		this.adress2 = adress2;
		this.adress3 = adress3;
		this.used = used;
		this.seat = seat;
	}
	
}
