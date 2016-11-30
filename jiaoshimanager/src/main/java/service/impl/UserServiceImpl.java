package service.impl;

import mdao.UserDao;

import java.io.Serializable;
import java.util.List;

import entity.User;
import mservice.UserService;

public class UserServiceImpl implements UserService {

	private UserDao userDao;


	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	
	public Serializable addUser(User user) {
		// TODO Auto-generated method stub
	  return 	 userDao.save(user);
	}


	@Override
	public int login(String student_id, String password) {
		int a=0;
		List<User> userList=userDao.findAll(User.class);
		for(User user:userList){
			if(user.getStudent_id().equals(student_id)){
				if(user.getPassword().equals(password)){
					a=2;
					break;
				}
				else{
					a=1;
					break;
				}				
			}
			else{
				a=0;
			}
		}
		return a;
	}
	@Override
	public User getByStudent_id(String student_id) {
		// TODO Auto-generated method stub
		List<User> userList=userDao.find("from User where student_id=?0", student_id);
		User user=new User();
		for(User a:userList){
			user=a;
		}
		return user;
	}
	@Override
	public List<User> getALL() {
		// TODO Auto-generated method stub
		return userDao.findAll(User.class);
	}

}
