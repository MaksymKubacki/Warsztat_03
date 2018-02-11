package pl.coderslab.warsztat3.model;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pl.coderslab.warsztat3.db.DbUtil;

public class Solution {
	public static List<SolutionWithAuthor> loadAllWothAuthor(int count){
		Connection conn;
		List<SolutionWithAuthor> result = new ArrayList<>();
		try {
			conn = DbUtil.getConn();
			result = SolutionDAO.loadAllWothAuthor(conn, count);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
