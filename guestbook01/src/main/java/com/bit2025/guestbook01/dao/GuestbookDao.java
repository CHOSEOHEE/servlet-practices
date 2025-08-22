package com.bit2025.guestbook01.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.bit2025.guestbook01.vo.GuestbookVo;

public class GuestbookDao {

	public int deleteById(Long id) {
		int result = 0;

		try (Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement("delete from guestbook = ?");) {
			pstmt.setLong(1, id);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("error: " + e);
		}
		return result;
	}

	public int insert(GuestbookVo vo) {
		int result = 0;

		try (Connection con = getConnection();

				PreparedStatement pstmt = con.prepareStatement(
						"insert into guestbook(name, message, password, reg_date) values (?,?, ?, ?)");) {
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getMessage());
			pstmt.setString(3, vo.getPassword());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			System.out.println("error: " + e);
		}
		return result;
	}

	public List<GuestbookVo> findAll() {
		List<GuestbookVo> result = new ArrayList<GuestbookVo>();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = getConnection();

			String sql = "select id, name, message, password, reg_date from guestbook order by id desc";
			pstmt = con.prepareStatement(sql);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				Long id = rs.getLong(1);
				String name = rs.getString(2);
				String message = rs.getString(3);
				String password = rs.getString(4);
				Timestamp reg_date = rs.getTimestamp(5);

				GuestbookVo vo = new GuestbookVo();
				vo.setId(id);
				vo.setName(name);
				vo.setMessage(message);
				vo.setPassword(password);
				vo.setReg_date(reg_date);

				result.add(vo);
			}
		} catch (SQLException e) {
			System.out.println("error: " + e);
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				if (con != null) {
					con.close();
				}
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
		return result;
	}

	private Connection getConnection() throws SQLException {
		Connection con = null;

		try {
			Class.forName("org.mariadb.jdbc.Driver");

			String url = "jdbc:mariadb://192.168.0.179:3306/webdb";
			con = DriverManager.getConnection(url, "webdb", "webdb");
		} catch (ClassNotFoundException ex) {
			System.out.println("Driver Class Not Found");
		}

		return con;
	}

}