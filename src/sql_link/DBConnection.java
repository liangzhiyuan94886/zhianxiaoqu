package sql_link;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	public static void main(String []args){
		getConnection();
	}
	public static Connection getConnection(){
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/zhian_community";
			conn =  DriverManager.getConnection(url,"root","");
			//System.out.println("数据库连接成功");
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("数据库连接失败");
			e.printStackTrace();
		}
		return conn;
	}

}
