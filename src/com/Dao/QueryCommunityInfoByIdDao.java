package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.JavaBean.CommunityInformation;
import sql_link.DBConnection;

public class QueryCommunityInfoByIdDao {
	//根据id查社区信息
	public CommunityInformation QueryById(Integer id){
		CommunityInformation eu =null;
		try{
			Connection con = DBConnection.getConnection();
			String sql = "select * from community_manage where c_id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1,id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				eu = new CommunityInformation();
				eu.setC_id(rs.getInt(1));
				eu.setC_longitude(rs.getString(2));
				eu.setC_latitude(rs.getString(3));
				eu.setC_name(rs.getString(4));
				eu.setC_type(rs.getString(5));
				eu.setC_address(rs.getString(6));
				eu.setC_region(rs.getString(7));
				eu.setC_contacts(rs.getString(8));
				eu.setC_tel(rs.getString(9));
				eu.setC_image(rs.getString(10));
/*				eu.setC_yrb(rs.getString(11));
				eu.setC_acreage(rs.getString(12));
				eu.setC_property(rs.getString(13));
				eu.setC_total(rs.getInt(14));
				eu.setC_partymember(rs.getInt(15));
				eu.setC_elderly(rs.getInt(16));
				eu.setC_dibao(rs.getInt(17));
				eu.setC_disability(rs.getInt(18));
				eu.setC_psychosis(rs.getInt(19));
				eu.setC_visit(rs.getInt(20));
				eu.setC_loudong(rs.getInt(21));
				eu.setC_fangwu(rs.getInt(22));
				eu.setC_zizhufang(rs.getInt(23));
				eu.setC_chuzufang(rs.getInt(24));
				eu.setC_kongzhifang(rs.getInt(25));*/
			}
			con.close();
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return eu;
	}
	
	//
	//根据id查全部社区信息
	public CommunityInformation QueryByIdAll(String longitude,String latitude){
		CommunityInformation eu =null;
		try{
			Connection con = DBConnection.getConnection();
			String sql = "select * from community_manage where c_longitude = ? and c_latitude= ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,longitude);
			ps.setString(2, latitude);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				eu = new CommunityInformation();
				eu.setC_id(rs.getInt(1));
				eu.setC_longitude(rs.getString(2));
				eu.setC_latitude(rs.getString(3));
				eu.setC_name(rs.getString(4));
				eu.setC_type(rs.getString(5));
				eu.setC_address(rs.getString(6));
				eu.setC_region(rs.getString(7));
				eu.setC_contacts(rs.getString(8));
				eu.setC_tel(rs.getString(9));
				eu.setC_image(rs.getString(10));
				eu.setC_yrb(rs.getString(12));
				eu.setC_acreage(rs.getString(13));
				eu.setC_property(rs.getString(14));
				eu.setC_total(rs.getInt(15));
				eu.setC_partymember(rs.getInt(16));
				eu.setC_elderly(rs.getInt(17));
				eu.setC_dibao(rs.getInt(18));
				eu.setC_disability(rs.getInt(19));
				eu.setC_psychosis(rs.getInt(20));
				eu.setC_visit(rs.getInt(21));
				eu.setC_loudong(rs.getInt(22));
				eu.setC_fangwu(rs.getInt(23));
				eu.setC_zizhufang(rs.getInt(24));
				eu.setC_chuzufang(rs.getInt(25));
				eu.setC_kongzhifang(rs.getInt(26));
			}
			con.close();
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return eu;
	}


}
