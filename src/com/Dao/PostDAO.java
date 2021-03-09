package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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

	public List<Post> getData(int id) {
		List<Post> list = new ArrayList<Post>();
		Post obj = null;
		try {
			String query = "select * from post where uid=? order by id DESC;";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				obj = new Post();
				obj.setId(rs.getInt(1));
				obj.setTitle(rs.getString(2));
				obj.setContent(rs.getString(3));
				obj.setPdate(rs.getTimestamp(4));
				list.add(obj);
			}

		} catch (Exception e) {

		}
		return list;
	}

}
