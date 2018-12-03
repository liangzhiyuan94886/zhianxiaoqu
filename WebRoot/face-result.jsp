<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>搜索结果</title>  
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="css/face-result.css">
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
        <div class="infobox">
            <form>
                <table class="table" id="infotable">    
                </table>
            </form>
        </div>
    </div>
</body>
</html>
<script>
    var c=5;
    var tr="";
    for(var i=1;i<=c;i++){
        tr+='<tr id="tr'+i+'"></tr>'
    }
    document.getElementById('infotable').innerHTML=tr;
    for(var j=1;j<=c;j++){
        var th="";
        for(var i=1;i<=3;i++){
            th+='<td style="width:20%;">'+
                    '<img src="images/videoPage/img2.jpg">'+
                '</td>'+
                '<td>'+
                    '<div class="three">'+
                        '<p>男</p>'+
                        '<p>26岁</p>'+
                        '<span>抓拍次数：</span>'+
                        '<span>3</span>'+
                    '</div>'+
                '</td>'
        }
        document.getElementById('tr'+j).innerHTML=th; 
    }   
</script>