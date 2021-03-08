package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.User.Post;

public class PostDAO {
	private Connection conn;

	public PostDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean AddNotes(String title, String content, int uid) {
		boolean flag = false;
		try {
			String query = "insert into post(title, content, uid) values(?,?,?);";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, title);
			ps.setString(2, content);
			ps.setInt(3, uid);

			int rs = ps.executeUpdate();
			if (rs == 1) {
				flag = true;
			}
		} catch (Exception e) {

		}
		return flag;
	}

}
