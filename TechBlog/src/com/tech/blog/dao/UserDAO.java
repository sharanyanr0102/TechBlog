package com.tech.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.tech.blog.entities.User;

public class UserDAO 
{
	private Connection con;

	public UserDAO(Connection con) 
	{
		super();
		this.con = con;
	}
	
	// To insert user data to database
	
	public boolean saveUser(User user)
	{
		boolean flag = false;
		try 
		{
			String query = "insert into user(`name`, `gender`, `email`, `password`,`about`) values(?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, user.getName());
			pstmt.setString(2, user.getGender());
			pstmt.setString(3, user.getEmail());
			pstmt.setString(4, user.getPassword());
			pstmt.setString(5, user.getAbout());
			pstmt.executeUpdate();
			flag = true;
		} 
		
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return flag;
	}
	
	public User getUserByEmailAndPassword(String email,String password)
	{
		User user = null;
		try
		{
			String query = "select * from user where email=? and password=?";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			ResultSet res = pstmt.executeQuery();
			if(res.next())
			{
				user = new User();
				user.setId(res.getInt(1));
				user.setName(res.getString(2));
				user.setEmail(res.getString(3));
				user.setPassword(res.getString(4));
				user.setProfile(res.getString(5));
			}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return user;
	}
	
}
