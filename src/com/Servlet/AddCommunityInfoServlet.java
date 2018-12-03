package com.Servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.Dao.AddCommunityInfoDao;

public class AddCommunityInfoServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddCommunityInfoServlet() {
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
		PrintWriter out = response.getWriter();
		//初始化List
		List<String> list = new ArrayList<String>();
		//设置配置上传参数
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		//指定上传路径
		upload.setHeaderEncoding("utf-8");
		String uploadURL = request.getSession().getServletContext().getRealPath("/upload/");
		try {
			//解析请求的内容，提取文件
			List<FileItem> formItems = upload.parseRequest(request);
			//判断文件是否为空
			if(formItems != null && formItems.size() > 0){
				//迭代表单数据
				for(FileItem item : formItems){
					//筛选是file类型
					if(!item.isFormField()){
						//截取文件名
						String fileName = new File(item.getName()).getName();
						//存放路径
						String filePath = uploadURL + File.separator + fileName;
						File storeFile = new File(filePath);
						item.write(storeFile);
					}else{
						//截取非文件的字段值，存到list
                    	String value = item.getString("utf-8");
                    	list.add(value);
                    	//System.out.println(value);
                    }
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		//从list取各个
		String longitude = list.get(0);
		String latitude = list.get(1);
		String comName = list.get(2);
		String comType = list.get(3);
		String comAddress = list.get(4);
		String comRegion = list.get(5);
		String comContacts = list.get(6);
		String comTel = list.get(7);
		String comImage = list.get(8);
		System.out.println("图片："+comImage);
		AddCommunityInfoDao Dao = new AddCommunityInfoDao();
		boolean flag = Dao.AddCommunityInfo(longitude, latitude, comName, comType, comAddress, comRegion, comContacts, comTel, comImage);
		if(flag){
			String msg = URLEncoder.encode("新增社区信息成功！", "UTF-8");  
	        out.print("<script>alert(decodeURIComponent('"+msg+"') );window.location.href='QueryCommunityInfoServlet'</script>");
	       }
		else{
			String error = URLEncoder.encode("新增社区信息失败！", "UTF-8");  
	        out.print("<script>alert(decodeURIComponent('"+error+"') );window.location.href='baseset.jsp'</script>");
	       }
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
