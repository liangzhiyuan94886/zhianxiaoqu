package com.Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.QueryCommunityInfoByLikeDao;
import com.JavaBean.CommunityInformation;

public class QueryCommunityInfoByLikeServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public QueryCommunityInfoByLikeServlet() {
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
		HttpSession session = request.getSession();
		//关键词内容
		String content = request.getParameter("inpuntsearch");
		System.out.println(content);
		QueryCommunityInfoByLikeDao Dao = new QueryCommunityInfoByLikeDao();
		ArrayList<CommunityInformation> comInfoList = null;
		//对搜索内容是否为空做判断 
		if( content.equals(null) || content.trim().equals("") ){
			//内容为空，查询全部结果
			comInfoList = Dao.QueryInfoByAll();
		}
			//搜索内容不为空，调用模糊查询方法
		else if(content!="" && content!=""){
			comInfoList = Dao.QueryInfoByLike(content);
		}
		session.setAttribute("cominfo", comInfoList);
		response.sendRedirect("baseset.jsp");
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
