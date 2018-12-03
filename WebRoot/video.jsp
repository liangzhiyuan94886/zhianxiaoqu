<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<title>智安小区------视频监控</title> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/videostyle.css" />
    <script type="text/javascript" src="js/jquery.min.js" ></script>
    <script type="text/javascript" src="js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="js/dtree.js"></script>
  </head>
<body onLoad="init();">
    <div class="header">
        <div class="row">
            <div class="col-lg-12">
                <img src="./images/loginPage/top.png" class="img-responsive">
                <div class="col-xs-3"></div>
                <div class="col-xs-6" style="margin-top: -55px;">
                    <a href="index.jsp"><img src="./images/indexPage/index0.png" class="img-responsive pull-left" style="margin-left: -42px;"></a>
                    <img src="./images/indexPage/video1.png" class="img-responsive pull-left" style="margin-left: -15px;">
                    <a href="QueryCommunityInfoServlet"><img src="./images/indexPage/baseset0.png" class="img-responsive pull-right" style="margin-right: -42px;"></a>
                    <a href="xiaofang.jsp"><img src="./images/indexPage/xiaofang0.png" class="img-responsive pull-right"  style="margin-right: -15px;"></a>
                </div>
            </div>
        </div>
    </div>
    <div class="leftbox">
        <p class="tit1">实时视频</p>
        <div class="dtree">
            <script type="text/javascript">
                d = new dTree('d');
                d.add(0,-1,'  ');
                d.add(1,0,'星火西苑');
                d.add(2,0,'星火东苑');
                d.add(3,0,'戚殿苑' );
                d.add(5,1,'摄像头1');
                d.add(6,1,'摄像头2');
                d.add(7,1,'摄像头3');
                d.add(8,1,'摄像头4');
                d.add(9,2,'摄像头1');
                d.add(10,2,'摄像头2');
                d.add(11,2,'摄像头3');
                d.add(12,2,'摄像头4');
                d.add(13,2,'摄像头5');
                d.add(14,3,'摄像头1');
                d.add(15,3,'摄像头2');
                d.add(16,3,'摄像头3');
                d.add(17,3,'摄像头4');
                d.add(18,3,'摄像头5');
				d.add(18,3,'摄像头5');
				d.add(18,3,'摄像头5');
				d.add(18,3,'摄像头5');
				d.add(18,3,'摄像头5');
                document.write(d);
            </script>
        </div>
        <a class="tit1" href="#" target="_self" onclick="StartPlayView()">人脸识别</a>
    </div>
    <div class="rightbox">
        <div class="outvideobox" id="outvideobox">
            <object classid="clsid:04DE0049-8359-486e-9BE7-1144BA270F6A" id="PlayViewOCX"  width="1024" height="768" name="ocx" >
            </object>
        </div>

    </div>
<!-- 全屏 -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div style="width:100%;height: 100%;background-image: url(images/videoPage/img.png);background-size: cover;">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        </div>
    </div><!-- /.modal -->
</body>
</html>
<script>

    var previewXml = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" + 
      "<Message>" + 
      "<Camera>" +
      "<Id>110</Id>" +
      "<IndexCode>33048281001310013388</IndexCode>" +
      "<Name>343#东北角向西</Name>" +
      "<ChanNo>0</ChanNo>" +
      "<Matrix Code=\"0\" Id=\"0\" />" +
      "</Camera>" +
      "<Dev regtype=\"0\" devtype=\"10070\">" +
      "<Id>331</Id>" +
      "<IndexCode>33048281001310924818</IndexCode>" +
      "<Addr IP=\"172.19.5.2\" Port=\"8000\" />" +
      "<Auth User=\"admin\" Pwd=\"zpxq1234\" />" +
      "</Dev>" +
      "<Vag IP=\"172.19.0.253\" Port=\"7302\" />" +
      "<Voice>" +
      "<Encode>0</Encode>" +
      "</Voice>" +
      "<Media Protocol=\"0\" Stream=\"0\" />" +
      "<Privilege Priority=\"0\" Code=\"0\" />" +
      "<Option>" +
      "<Talk>null</Talk>" +
      "<PreviewType>0</PreviewType>" +
      "</Option>" +
      "</Message>";
      console.log(previewXml);

    function StartPlayView()
    {
        var OCXobj = document.getElementById("PlayViewOCX");
		//var previewXml = document.getElementById("config").value;
		var ret = OCXobj.StartTask_Preview_InWnd(previewXml,0);
    }
    function init(){
   	    var OCXobj = document.getElementById("PlayViewOCX");
   	    OCXobj.SetOcxMode(0);
    }
</script>