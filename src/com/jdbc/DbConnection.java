package com.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {

	private static Connection connection = null;

	public static Connection getConn() {

		try {
			if (connection == null) {
				Class.forName("com.mysql.jdbc.Driver");
	            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookend", "root"," ");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return connection;
	}

}
