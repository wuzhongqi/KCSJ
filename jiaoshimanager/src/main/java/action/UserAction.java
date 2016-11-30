package action;

import java.io.Serializable;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import entity.User;
import mservice.UserService;

public class UserAction extends ActionSupport {
	private String student_id;
	private String name;
	private String academy;
	private String banji;	
	private	String email;
	private UserService userService;
	private String result;
	private String password;
	private String phone;
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
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
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
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public String login(){
		int a=userService.login(student_id,password);
		List<User> userList=userService.getALL();
		for(User user:userList){
			System.out.println(user.getName());
		}
		System.out.println(student_id);
		System.out.println(a);
		if(a==0){
			result="用户名有误";
			return ERROR;
		}
		else if(a==1){
			result="密码有误";
			return ERROR;
		}
		else{
			result="";
			User user=userService.getByStudent_id(student_id);
			ActionContext.getContext().getSession().put("student_id",student_id);
			ActionContext.getContext().getSession().put("islogin",user.getName());
			return LOGIN;
		}
		
	}
	public String signup(){
		User user=new User();
		user.setName(name);
		user.setAcademy(academy);
		user.setBanji(banji);
		user.setEmail(email);
		user.setPhone(phone);
		user.setStudent_id(student_id);		
		user.setPassword(password);
		Serializable a = userService.addUser(user);
		System.out.println("!!!!!!"+a+"!!!!!");
		System.out.println(user.getStudent_id()+user.getAcademy());
		result="恭喜您，注册成功！";
		return SUCCESS;
	}
}
