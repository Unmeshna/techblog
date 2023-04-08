package com.tech.blog.helper;

import java.sql.*;

public class connectionProvider {
	private static Connection con;
	public static Connection getConnection() {
		try {
			if(con==null) {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog_db","root","123456");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return con;
	}
	

}
