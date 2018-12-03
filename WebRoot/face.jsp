<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>人脸识别</title>  
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="css/face.css">
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <script type="text/javascript" src="./js/jquery.min.js" ></script>
    <script type="text/javascript" src="./js/bootstrap.min.js" ></script>
  </head>
<body>
    <div class="bigbox">
        <div class="row">
            <div class="col-lg-12">
                <img src="images/videoPage/faceTop.png" class="img-responsive">
            </div>
        </div>
        <div class="bodybox">
            <div class="lbox">
                    <h3>人脸识别&地区名称</h3>
                    <div class="imgbox">
                        <div class="imgbox_1"></div>
                    </div>
            </div>
            <div class="rbox">
                <div class="searchbox">
                    <span>年龄</span>
                    <input class="search_age">
                    <span>-</span>
                    <input class="search_age">
                    <span>&nbsp;&nbsp;&nbsp;性别</span>                 
                    <select class="search_sex" >
                        <option value="men">男</option>
                        <option value="women">女</option>
                    </select>
                    <a href="face-result.html"  target="_blank"><button class="seabtn">搜索</button></a>
                </div>
                <div class="snapbigbox" id="snapbigbox"></div>
            </div>
        </div>

    </div>
</body>
</html>
<script>   
    var re="";
    for(var i=1;i<=20;i++){
        re+='<div class="snapminbox" >'+
                '<div class="one"></div>'+
                '<div class="two"></div>'+
                '<div class="three">'+
                    '<h4>临时抓拍</h4>'+
                    '<p>男</p>'+
                    '<p>26岁</p>'+
                    '<span>抓拍次数：</span>'+
                    '<span>3</span>'+
                '</div>'+
            '</div>';
    }
    document.getElementById('snapbigbox').innerHTML=re;
</script>
