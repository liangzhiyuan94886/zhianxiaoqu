package com.Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import sql_link.DBConnection;
import com.JavaBean.CommunityInformation;

public class QueryLongitudeAndLatitudeDao {
	public List<CommunityInformation> QueryLocation(){
	List<CommunityInformation> Location = new ArrayList<CommunityInformation>();
	try {
		Connection con = DBConnection.getConnection();
		String sql = "select c_id, c_longitude, c_latitude,c_type from community_manage";
		Statement st = con.createStatement();
		// 查询语句返回的是一个结果集ResultSet
		ResultSet rs = st.executeQuery(sql);
		while (rs.next()) {
			CommunityInformation eu = new CommunityInformation();
			eu.setC_id(rs.getInt(1));
			eu.setC_longitude(rs.getString(2));
			eu.setC_latitude(rs.getString(3));
//			eu.setC_name(rs.getString(4));
			eu.setC_type(rs.getString(4));
/*			eu.setC_address(rs.getString(6));
			eu.setC_region(rs.getString(7));
			eu.setC_contacts(rs.getString(8));
			eu.setC_tel(rs.getString(9));
			eu.setC_image(rs.getString(10));*/
			Location.add(eu);
		}
		con.close();
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return Location;
}

}
