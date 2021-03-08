package com.Dao;

import com.User.UserDetails;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

	private Connection conn;

	public UserDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean addUser(UserDetails obj) {
		
		boolean flag = false;
		try {
			String INSERT_USERS_SQL = "INSERT INTO user" + "  (name,email,password) VALUES " +" (?, ?, ?);";
			
			PreparedStatement ps = conn.prepareStatement(INSERT_USERS_SQL);
			ps.setString(1, obj.getName());
			ps.setString(2, obj.getEmail());
			ps.setString(3, obj.getPassword());
			int res = ps.executeUpdate();
			if(res == 1)
			{
				flag = true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;
		
	}
	
	public boolean loginUser(UserDetails obj) {
		
		boolean flag = false;
		
		try {
			String query = "select * from user where email = ? and password = ?;";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, obj.getEmail());
			ps.setString(2, obj.getPassword());
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
			{
				flag = true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}
}
