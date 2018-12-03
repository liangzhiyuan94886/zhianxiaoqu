package com.Servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.Dao.UpdateCommunityInfoDao;
import com.JavaBean.CommunityInformation;
public class UpdateCommunityInfoServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UpdateCommunityInfoServlet() {
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

		PrintWriter out = response.getWriter();	
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		//更新修改的时间
		Date currentTime = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String comModifyTime = sdf.format(currentTime);
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
		CommunityInformation pi = new CommunityInformation();
		
		pi.setC_id(Integer.parseInt((list.get(0))));
		System.out.println("ID是："+pi.getC_id());
		pi.setC_longitude(list.get(1));
		pi.setC_latitude(list.get(2));
		pi.setC_name(list.get(3));
		pi.setC_type(list.get(4));
		pi.setC_address(list.get(5));
		pi.setC_region(list.get(6));
		pi.setC_contacts(list.get(7));
		pi.setC_tel(list.get(8));
		pi.setC_image(list.get(9));
		System.out.println("图片："+pi.getC_image());	
		pi.setC_modifytime(comModifyTime);
		UpdateCommunityInfoDao Dao = new UpdateCommunityInfoDao();
		boolean flag = Dao.UpdateComInfo(pi);
		if (flag) {
			String msg = URLEncoder.encode("社区信息修改成功！", "UTF-8");
			out.print("<script>window.location.href='QueryCommunityInfoServlet';alert(decodeURIComponent('"+msg+"') )</script>");
		} else {
			out.print("<script>alert('社区信息修改失败！');window.location.href='baseset.jsp';</script>");
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
