<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/echarts.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>

  </head>
  
  <body><div>开发者在提交代码到git的时候，需要在备注里面注明此次修改相关的需求，或者任务，或者bug的id。比如下面的格式：
bug#123,234, 1234，也可以是bug:123,234 1234，id列表之间，用逗号和空格都可以。
story#123 task#123
bug, story, task是必须标注的。:)</div>
  </body>
</html>
