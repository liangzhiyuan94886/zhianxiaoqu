<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">   
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="UTF-8">
	<title>系统选择首页----</title>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">  
	<link rel="stylesheet" type="text/css" href="css/login.css"> 
  </head> 
  <body>
	<div class="row">
		<div class="col-lg-12">
			<img src="./images/loginPage/top.png" class="img-responsive">
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="container">
				<div class="row">
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div id="login_image" class="img-responsive center-block"> 
									<div class="row">
										<div class="col-lg-12 menu_img_all">
											<div class="col-sm-3" id="menu_1" >
												<a href="index.jsp"><img src="./images/loginPage/index0.png" class="img_all center-block" id="menu_img_1" url></a>
											</div>
											<div class="col-sm-3" id="menu_2">
												<a href="video.jsp"><img src="./images/loginPage/video0.png" class="img_all center-block" id="menu_img_2"></a>
											</div>
											<div class="col-sm-3" id="menu_3">
												<a href="xiaofang.jsp"><img src="./images/loginPage/xiaofang0.png" class="img_all center-block" id="menu_img_3"></a>
											</div>
											<div class="col-sm-3" id="menu_4">
												<a href="QueryCommunityInfoServlet"><img src="./images/loginPage/baseset0.png" class="img_all pull-right" id="menu_img_4"></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
  </body>
 <script type="text/javascript">
	$("#menu_img_1").mouseover(
        function(){
            $("#menu_img_1").attr("src","./images/loginPage/index1.png");
        }
    );
    $("#menu_img_1").mouseout(
        function(){
            $("#menu_img_1").attr("src","./images/loginPage/index0.png");
        }
    );
    	$("#menu_img_2").mouseover(
        function(){
            $("#menu_img_2").attr("src","./images/loginPage/video1.png");
        }
    );
    $("#menu_img_2").mouseout(
        function(){
            $("#menu_img_2").attr("src","./images/loginPage/video0.png");
        }
    );
    	$("#menu_img_3").mouseover(
        function(){
            $("#menu_img_3").attr("src","./images/loginPage/xiaofang1.png");
        }
    );
    $("#menu_img_3").mouseout(
        function(){
            $("#menu_img_3").attr("src","./images/loginPage/xiaofang0.png");
        }
    );
    	$("#menu_img_4").mouseover(
        function(){
            $("#menu_img_4").attr("src","./images/loginPage/baseset1.png");
        }
    );
    $("#menu_img_4").mouseout(
        function(){
            $("#menu_img_4").attr("src","./images/loginPage/baseset0.png");
        }
    );
</script>
</html>
