package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import sql_link.DBConnection;

public class DeleteCommunityInfoByIdDao {
	public boolean DeleteById(int id){
		//声明变量flag
		boolean flag = false;
		Connection con = DBConnection.getConnection();
		String sql = "delete from community_manage where c_id = ? ";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			int a = ps.executeUpdate();
			if(a>0){
				flag =true;
			}
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return flag;
		
	}

}
