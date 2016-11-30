package mservice;

import java.io.Serializable;
import java.util.List;

import entity.User;

public interface UserService {
	public Serializable addUser(User user);
 	public int login(String student_id,String password);
 	public User getByStudent_id(String student_id);
 	public List<User> getALL();
}
