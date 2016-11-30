package action;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import entity.Apply;
import entity.User;
import mservice.ApplyService;
import mservice.UserService;

public class ApplyAction extends ActionSupport {
	private String activity;
	private String group1;
	private Date date;
	private String result;
	private ApplyService applyService;
	private UserService userService;
	
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public ApplyService getApplyService() {
		return applyService;
	}
	public void setApplyService(ApplyService applyService) {
		this.applyService = applyService;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getActivity() {
		return activity;
	}
	public void setActivity(String activity) {
		this.activity = activity;
	}
	public String getGroup1() {
		return group1;
	}
	public void setGroup1(String group1) {
		this.group1 = group1;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String add(){
		HttpServletRequest request=ServletActionContext.getRequest();
		String student_id= (String)request.getSession().getAttribute("student_id");
		System.out.println(student_id);
		User user=userService.getByStudent_id(student_id);
		Apply apply=new Apply();
		apply.setActivity(activity);
		apply.setDate(date);
		apply.setGroup1(group1);
		apply.setUser(user);
		apply.setState("待审批");
		Date nowDate=new Date();		
		int time1=date.getDay();
		int time2=nowDate.getDay();
		int time3=time1-time2;
		if(time3==1){
			applyService.add(apply);
			result="申请成功，请等待审批";
			return SUCCESS;
		}
		else{
			result="请在规定的时间段内申请";
			return ERROR;
		}
	}	
}
