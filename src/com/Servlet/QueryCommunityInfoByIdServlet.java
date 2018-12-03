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
public class QueryCommunityInfoByIdServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public QueryCommunityInfoByIdServlet() {
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
		Integer id = Integer.parseInt(request.getParameter("id"));
		//System.out.println(id);
		QueryCommunityInfoByIdDao Dao = new QueryCommunityInfoByIdDao();
		CommunityInformation queryById = Dao.QueryById(id);
		//从集合取得各个字段
		Integer c_id =  queryById.getC_id();
		String c_longitude = queryById.getC_longitude();
		String c_latitude = queryById.getC_latitude();
		String c_name = queryById.getC_name();
		String c_type = queryById.getC_type();
		String c_address = queryById.getC_address();
		String c_region = queryById.getC_region();
		String c_contacts = queryById.getC_contacts();
		String c_tel = queryById.getC_tel();
		String c_image = queryById.getC_image();
		//System.out.print(c_image);
		//存到list
		List<CommunityInformation> list = new ArrayList<CommunityInformation>();
		CommunityInformation pr = new CommunityInformation();
		pr.setC_id(c_id);
		pr.setC_longitude(c_longitude);
		pr.setC_latitude(c_latitude);
		pr.setC_name(c_name);
		pr.setC_type(c_type);
		pr.setC_address(c_address);
		pr.setC_region(c_region);
		pr.setC_contacts(c_contacts);
		pr.setC_tel(c_tel);
		//（图片的名字）
		pr.setC_image(c_image);
		list.add(pr);
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
