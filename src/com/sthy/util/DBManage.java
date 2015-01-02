package com.sthy.util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DBManage {
	
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	private Connection conn = null;
	
	private PreparedStatement ps = null;
	
	private ResultSet rs = null;
	
	public List<Map<String, String>> query(String sql, String[] columns) {
		List<Map<String, String>> list = new ArrayList<Map<String,String>>();
		try {
			this.open();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Map<String, String> data = new HashMap<String, String>();
				for(String column : columns) {
					data.put(column, rs.getString(column));
				}
				list.add(data);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return list;
	}
	
	private void open() throws IOException, SQLException {
		String url = PropertiesUtils.getValue("jdbc.url",
				"base/jdbc.properties");
		String user = PropertiesUtils.getValue("jdbc.username",
				"base/jdbc.properties");
		String password = PropertiesUtils.getValue("jdbc.password",
				"base/jdbc.properties");
		conn = DriverManager.getConnection(url, user, password);
	}
	
	private void close() {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (ps != null) {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
