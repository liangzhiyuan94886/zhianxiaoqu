package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.JavaBean.CommunityInformation;
import sql_link.DBConnection;

public class UpdateCommunityInfoDao {
	public boolean UpdateComInfo(CommunityInformation pi) {
		boolean flag = false;
		Connection con = DBConnection.getConnection();
		String sql = "update community_manage set c_longitude=?,c_latitude=?,c_name=?,c_type=?,c_address=?,c_region=?,c_contacts=?,c_tel=?,c_image=?,c_modifytime=? where c_id=?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, pi.getC_longitude());
			ps.setString(2, pi.getC_latitude());
			ps.setString(3, pi.getC_name());
			ps.setString(4, pi.getC_type());
			ps.setString(5, pi.getC_address());
			ps.setString(6, pi.getC_region());
			ps.setString(7, pi.getC_contacts());
			ps.setString(8, pi.getC_tel());
			ps.setString(9, pi.getC_image());
			ps.setString(10, pi.getC_modifytime());
			ps.setInt(11, pi.getC_id());
			int a = ps.executeUpdate();
			if (a > 0) {
				flag = true;
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}
	
	//不更新图片
	public boolean UpdateComInfoNOImg(CommunityInformation pi) {
		boolean flag = false;
		Connection con = DBConnection.getConnection();
		String sql = "update community_manage set c_longitude=?,c_latitude=?,c_name=?,c_type=?,c_address=?,c_region=?,c_contacts=?,c_tel=?,c_modifytime=? where c_id=?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, pi.getC_longitude());
			ps.setString(2, pi.getC_latitude());
			ps.setString(3, pi.getC_name());
			ps.setString(4, pi.getC_type());
			ps.setString(5, pi.getC_address());
			ps.setString(6, pi.getC_region());
			ps.setString(7, pi.getC_contacts());
			ps.setString(8, pi.getC_tel());
			ps.setString(9, pi.getC_modifytime());
			ps.setInt(10, pi.getC_id());
			int a = ps.executeUpdate();
			if (a > 0) {
				flag = true;
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}


}
