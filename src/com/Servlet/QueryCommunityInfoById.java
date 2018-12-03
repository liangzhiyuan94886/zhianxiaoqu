package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.QueryCommunityInfoByIdDao;
import com.JavaBean.CommunityInformation;
import com.alibaba.fastjson.JSONArray;

public class QueryCommunityInfoById extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public QueryCommunityInfoById() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		//Integer id = Integer.parseInt(request.getParameter("id"));
		String longitude = request.getParameter("longitude");
		String latitude = request.getParameter("latitude");
		System.out.println(longitude+latitude);
		QueryCommunityInfoByIdDao Dao = new QueryCommunityInfoByIdDao();
		CommunityInformation queryAll = Dao.QueryByIdAll(longitude, latitude);
		//从集合取得各个字段 小区信息
		String c_name = queryAll.getC_name();
		String c_type = queryAll.getC_type();
		String c_contacts = queryAll.getC_contacts();
		String c_tel = queryAll.getC_tel();
		String c_image = queryAll.getC_image();
		String c_yrb = queryAll.getC_yrb();
		String c_acreage = queryAll.getC_acreage();
		String c_property = queryAll.getC_property();
		Integer c_loudong = queryAll.getC_loudong();
		//人员信息
		Integer c_partymember = queryAll.getC_partymember();
		Integer c_dibao = queryAll.getC_dibao();
		Integer c_disability = queryAll.getC_disability();
		Integer c_visit = queryAll.getC_visit();
		//房屋信息
		Integer c_zizhufang = queryAll.getC_zizhufang();
		Integer c_chuzufang = queryAll.getC_chuzufang();
		Integer c_kongzhifang = queryAll.getC_kongzhifang();
		//存到list
		List<CommunityInformation> list = new ArrayList<CommunityInformation>();
		CommunityInformation pr = new CommunityInformation();
		pr.setC_name(c_name);
		pr.setC_type(c_type);
		pr.setC_contacts(c_contacts);
		pr.setC_tel(c_tel);
		pr.setC_acreage(c_acreage);
		pr.setC_yrb(c_yrb);
		pr.setC_property(c_property);
		pr.setC_loudong(c_loudong);
		pr.setC_image(c_image);
		//人员信息
		pr.setC_partymember(c_partymember);
		pr.setC_dibao(c_dibao);
		pr.setC_disability(c_disability);
		pr.setC_visit(c_visit);
		//房屋信息
		pr.setC_zizhufang(c_zizhufang);
		pr.setC_chuzufang(c_chuzufang);
		pr.setC_kongzhifang(c_kongzhifang);
		list.add(pr);
		System.out.println(list);
		//封装json格式数据
		String json = JSONArray.toJSONString(list);
		PrintWriter out = response.getWriter();  
        out.println(json);  
        out.flush();  
        out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
