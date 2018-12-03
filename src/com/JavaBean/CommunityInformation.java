package com.JavaBean;

import java.io.Serializable;

public class CommunityInformation implements Serializable{
	private static final long serialVersionUID = 1L;
	private int c_id;
	private String c_longitude;
	private String c_latitude;
	private String c_name;
	private String c_type;
	private String c_address;
	private String c_region;//所属区域
	private String c_contacts;//联系人
	private String c_tel;
	private String c_image;
	private String c_modifytime;
	private String c_yrb;//建造年份
	private String c_acreage;//建造面积
	private String c_property;//物业名称
	private int  c_total;//总人数
	private int c_partymember;//党员
	private int c_elderly;//孤寡老人
	private int c_dibao;//低保户
	private int c_disability;//残疾人数
	private int c_psychosis;//精神病人数
	private int c_visit;//重点上访
	private int c_loudong;//楼栋数
	private int c_fangwu;//房屋数
	private int c_zizhufang;//自住房
	private int c_chuzufang;//出租房
	private int c_kongzhifang;//空置房
	
	//set和get方法
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getC_longitude() {
		return c_longitude;
	}
	public void setC_longitude(String c_longitude) {
		this.c_longitude = c_longitude;
	}
	public String getC_latitude() {
		return c_latitude;
	}
	public void setC_latitude(String c_latitude) {
		this.c_latitude = c_latitude;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_type() {
		return c_type;
	}
	public void setC_type(String c_type) {
		this.c_type = c_type;
	}
	public String getC_address() {
		return c_address;
	}
	public void setC_address(String c_address) {
		this.c_address = c_address;
	}
	public String getC_region() {
		return c_region;
	}
	public void setC_region(String c_region) {
		this.c_region = c_region;
	}
	public String getC_contacts() {
		return c_contacts;
	}
	public void setC_contacts(String c_contacts) {
		this.c_contacts = c_contacts;
	}
	public String getC_tel() {
		return c_tel;
	}
	public void setC_tel(String c_tel) {
		this.c_tel = c_tel;
	}
	public String getC_image() {
		return c_image;
	}
	public void setC_image(String c_image) {
		this.c_image = c_image;
	}
	
	public String getC_modifytime() {
		return c_modifytime;
	}
	public void setC_modifytime(String c_modifytime) {
		this.c_modifytime = c_modifytime;
	}
	public String getC_yrb() {
		return c_yrb;
	}
	public void setC_yrb(String c_yrb) {
		this.c_yrb = c_yrb;
	}
	public String getC_acreage() {
		return c_acreage;
	}
	public void setC_acreage(String c_acreage) {
		this.c_acreage = c_acreage;
	}
	public String getC_property() {
		return c_property;
	}
	public void setC_property(String c_property) {
		this.c_property = c_property;
	}
	public int getC_total() {
		return c_total;
	}
	public void setC_total(int c_total) {
		this.c_total = c_total;
	}
	public int getC_partymember() {
		return c_partymember;
	}
	public void setC_partymember(int c_partymember) {
		this.c_partymember = c_partymember;
	}
	public int getC_elderly() {
		return c_elderly;
	}
	public void setC_elderly(int c_elderly) {
		this.c_elderly = c_elderly;
	}
	public int getC_dibao() {
		return c_dibao;
	}
	public void setC_dibao(int c_dibao) {
		this.c_dibao = c_dibao;
	}
	public int getC_disability() {
		return c_disability;
	}
	public void setC_disability(int c_disability) {
		this.c_disability = c_disability;
	}
	public int getC_psychosis() {
		return c_psychosis;
	}
	public void setC_psychosis(int c_psychosis) {
		this.c_psychosis = c_psychosis;
	}
	public int getC_visit() {
		return c_visit;
	}
	public void setC_visit(int c_visit) {
		this.c_visit = c_visit;
	}
	public int getC_loudong() {
		return c_loudong;
	}
	public void setC_loudong(int c_loudong) {
		this.c_loudong = c_loudong;
	}
	public int getC_fangwu() {
		return c_fangwu;
	}
	public void setC_fangwu(int c_fangwu) {
		this.c_fangwu = c_fangwu;
	}
	public int getC_zizhufang() {
		return c_zizhufang;
	}
	public void setC_zizhufang(int c_zizhufang) {
		this.c_zizhufang = c_zizhufang;
	}
	public int getC_chuzufang() {
		return c_chuzufang;
	}
	public void setC_chuzufang(int c_chuzufang) {
		this.c_chuzufang = c_chuzufang;
	}
	public int getC_kongzhifang() {
		return c_kongzhifang;
	}
	public void setC_kongzhifang(int c_kongzhifang) {
		this.c_kongzhifang = c_kongzhifang;
	}
	@Override
	public String toString() {
		return "CommunityInformation [c_id=" + c_id + ", c_longitude="
				+ c_longitude + ", c_latitude=" + c_latitude + ", c_name="
				+ c_name + ", c_type=" + c_type + ", c_address=" + c_address
				+ ", c_region=" + c_region + ", c_contacts=" + c_contacts
				+ ", c_tel=" + c_tel + ", c_image=" + c_image
				+ ", ComInfoById=" + ", c_modifytime="
				+ c_modifytime + ", c_yrb=" + c_yrb + ", c_acreage="
				+ c_acreage + ", c_property=" + c_property + ", c_total="
				+ c_total + ", c_partymember=" + c_partymember + ", c_elderly="
				+ c_elderly + ", c_dibao=" + c_dibao + ", c_disability="
				+ c_disability + ", c_psychosis=" + c_psychosis + ", c_visit="
				+ c_visit + ", c_loudong=" + c_loudong + ", c_fangwu="
				+ c_fangwu + ", c_zizhufang=" + c_zizhufang + ", c_chuzufang="
				+ c_chuzufang + ", c_kongzhifang=" + c_kongzhifang + "]";
	}
	
	
}
