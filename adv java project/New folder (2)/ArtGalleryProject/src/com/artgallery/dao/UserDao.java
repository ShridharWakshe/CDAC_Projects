package com.artgallery.dao;

import com.artgallery.models.User;

public interface UserDao {
	
	public User loginUser(User user);
	public int registerUser(User user);

}
