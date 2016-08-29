package com.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class UserServiceImpl implements UserService{

	 @Autowired
	 UserDao userDao;
	public UserServiceImpl()  {
		// TODO Auto-generated constructor stub
	}

	public List<UserLogin> getList() {
		
		return userDao.getList();
	}


	public void addUser(UserLogin p) {
		// TODO Auto-generated method stub
		userDao.addUser(p);
	}


	public void updateUser(UserLogin p) {
		userDao.updateUser(p);
	}

	
	public void deleteUser(String prodid) {
		// TODO Auto-generated method stub
		userDao.deleteUser(prodid);
	}


	public UserLogin getUserbyId(String prodid) {
		// TODO Auto-generated method stub
		return userDao.getUserbyId(prodid);
	}

}
