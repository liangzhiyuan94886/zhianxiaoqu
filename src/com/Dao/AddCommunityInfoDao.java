package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;

import sql_link.DBConnection;

public class AddCommunityInfoDao {
	public boolean AddCommunityInfo(String longitude,String latitude,String comName,String comType,String comAddress,String comregion,String comContacts,String comTel,String comImage){
		//添加一个修改时间
		Date currentTime = new Date();
		SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss" );
		String comModifyTime = sdf.format(currentTime);
		//System.out.println("修改时间是:"+comModifyTime);
		boolean flag = false;
		try {
			//数据库连接、执行插入语句
			Connection conn = DBConnection.getConnection();
			String sql = "insert into community_manage (c_longitude,c_latitude,c_name,c_type,c_address,c_region,c_contacts,c_tel,c_image,c_modifytime) values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,longitude);
			ps.setString(2,latitude);
			ps.setString(3,comName);
			ps.setString(4,comType);
			ps.setString(5,comAddress);
			ps.setString(6,comregion);
			ps.setString(7,comContacts);
			ps.setString(8,comTel);
			ps.setString(9,comImage);
			ps.setString(10,comModifyTime);
			int n = ps.executeUpdate();
				if(n > 0){
					flag = true;
				}
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return flag;
		
	}

}
