package com.Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


import sql_link.DBConnection;

import com.JavaBean.CommunityInformation;

public class QueryCommunityInfoByLikeDao {
	//关键词不为空
	public ArrayList<CommunityInformation> QueryInfoByLike(String content){
		//查询返回结果集合
		ArrayList<CommunityInformation> comInfoList = new ArrayList<CommunityInformation>();
		Connection con = DBConnection.getConnection();
		//模糊查询
		String sql = "select * from community_manage where c_name like '%"+content+"%' order by c_modifytime desc";
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				//使用get方法取得结果set到集合
				CommunityInformation like = new CommunityInformation();
				like.setC_id(rs.getInt(1));
				like.setC_longitude(rs.getString(2));
				like.setC_latitude(rs.getString(3));
				like.setC_name(rs.getString(4));
				like.setC_type(rs.getString(5));
				like.setC_address(rs.getString(6));
				like.setC_region(rs.getString(7));
				like.setC_contacts(rs.getString(8));
				like.setC_tel(rs.getString(9));
				like.setC_image(rs.getString(10));
				comInfoList.add(like);
			}
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return comInfoList;
		
	}
	
	//关键词为空，查询全部
	public ArrayList<CommunityInformation> QueryInfoByAll(){
		//查询返回结果集合
		ArrayList<CommunityInformation> comInfoList = new ArrayList<CommunityInformation>();
		Connection con = DBConnection.getConnection();
		String sql = "select * from community_manage order by c_modifytime desc";
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				//使用get方法取得结果set到集合
				CommunityInformation like = new CommunityInformation();
				like.setC_id(rs.getInt(1));
				like.setC_longitude(rs.getString(2));
				like.setC_latitude(rs.getString(3));
				like.setC_name(rs.getString(4));
				like.setC_type(rs.getString(5));
				like.setC_address(rs.getString(6));
				like.setC_region(rs.getString(7));
				like.setC_contacts(rs.getString(8));
				like.setC_tel(rs.getString(9));
				like.setC_image(rs.getString(10));
				comInfoList.add(like);
			}
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return comInfoList;
		
	}

}
