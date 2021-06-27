package com.tech.blog.helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider  
{
	static String url = "jdbc:mysql://localhost:3306/techblog";
	static String user = "root";
	static String password = "sharu0102";
	private static Connection con;
	public static Connection getConnection()
	{
		try 
		{
			if(con==null)
			{
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(url, user, password);
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return con;
	}
}
