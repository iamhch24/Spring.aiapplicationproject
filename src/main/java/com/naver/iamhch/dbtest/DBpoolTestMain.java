package com.naver.iamhch.dbtest;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBpoolTestMain {

	public static void main(String[] args) throws Exception {

		DBConnectionManager db = DBConnectionManager.getInstance();
		Connection cn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		System.out.println("DB test start...");
		String sql = "SELECT count(*) FROM member";
		try {
			cn = db.getConnection();
			ps = (PreparedStatement) cn.prepareStatement(sql);
			rs = ps.executeQuery();

			if (rs.next()) {
				System.out.println("count :" + rs.getInt(1));
			}
		} catch (SQLException e) {
			System.err.println("error:" + e.getMessage());
		}
		String result = javabeanMeth();
		System.out.println("result:"+result);

	}
	static String javabeanMeth() {
		String str = "return확인";
		return str;
	}

}
