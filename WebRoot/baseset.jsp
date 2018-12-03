<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>智安小区-基础配置</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/jquery.dataTables.min.css">
	<link rel="stylesheet" type="text/css" href="css/bmap.css"/>
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/baseset.css" />
	<script type="text/javascript" src="js/apiv2.0.min.js"></script>
	<script type="text/javascript" src="js/jquery.min.js" ></script>
	<script type="text/javascript" src="js/bootstrap.min.js" ></script>
	<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
	
	<script type="text/javascript">
	//datatable
    $(document).ready(function() {
    var t = $('#example').DataTable( {
    searching : false,//datatable搜索
    bLengthChange: false, 
     "pagingType": "full_numbers",
        "columnDefs": [ {
            "searchable": false,
            "orderable": false,
            "targets": 0
        } ],
        "order": [[ 0, 'asc' ]]//序号升排序
    } );
 
    t.on( 'order.dt search.dt', function () {
        t.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
            cell.innerHTML = i+1;
        } );
    } ).draw();
} );
    </script>
<script type="text/javascript">
//图片上传1
	function uplode1(obj) {
		console.log(obj.files[0].name);
		var url = window.URL.createObjectURL(obj.files[0]);
		console.log(url);
		//找到控件
		var filename1 = document.all("filename1");
		//给控件的value赋值
		filename1.value = obj.files[0].name;
		 var Img=document.all("img1");
		Img.src=url; 
	}
//图片上传2（更新）
	function uplode2(obj) {
		console.log(obj.files[0].name);
		var url = window.URL.createObjectURL(obj.files[0]);
		console.log(url);
		//找到控件
		var filename2 = document.all("filename2");
		//给控件的value赋值
		filename2.value = obj.files[0].name;
		 var Img=document.all("img2");
		Img.src=url; 
	}
</script>
  </head>
  
  <body>
<!--     头 -->
        <div class="header">			
            <div class="row">
             	<div class="col-lg-12">
                	<img src="./images/loginPage/top.png" class="img-responsive">
                	<div class="col-xs-3"></div>
                	<div class="col-xs-6" style="margin-top: -55px;">
                    	<a href="index.jsp"><img src="./images/indexPage/index0.png" class="img-responsive pull-left" style="margin-left: -42px;"></a>
                    	<a href="video.jsp"><img src="./images/indexPage/video0.png" class="img-responsive pull-left" style="margin-left: -15px;"></a>
                   		<img src="./images/indexPage/baseset1.png" class="img-responsive pull-right" style="margin-right: -42px;">
                    	<a href="xiaofang.jsp"><img src="./images/indexPage/xiaofang0.png" class="img-responsive pull-right"  style="margin-right: -15px;"></a>
                	</div>
             	</div>
          </div>
     	</div>
<!-- 搜索+新增信息modelbox -->
     		<div class="bigbox">
     			<div class="tab center-block">
     				<div class=manager>
     					<h4>社区管理</h4>
     				</div>
     				<div class="search">
     					<p>社区名称</p>
     					<form action="QueryCommunityInfoByLikeServlet" method="post">
     						<input name="inpuntsearch" id="inpuntsearch" />
     						<input type="submit" class="searchbtn" value="搜索">
     					</form>
     					<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myadd">新增</button>
						<div class="modal fade" id="myadd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content add">
									<!-- header -->
									<div class="headlabel" style="font-size: 23px;margin-top: 20px;">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times</button>
										<span>新增社区</span>
									</div>
									<!-- body -->
									<div class="add_body">
										<form action="AddCommunityInfoServlet" method="post" enctype="multipart/form-data" class="form-horizontal" role="form">
											<table class="editbox">
												<tr>
													<td class="td1">经纬度</td>
													<td class="td2"><input type="text" id="add_longitude" name="add_longitude" class="add_longitude" /></td>
													<td class="td2"><input type="text" id="add_dimension" name="add_dimension" class="add_dimension" /></td>
													<td><img src="images/fireControlPage/4.png" id="add_img" data-toggle="modal" data-target="#mapbox"></td>
												</tr>
												<tr>
													<td>社区名称</td>
													<td colspan=2><input type="text" id="uname" name="comName" class="add-name" style="width: 100%;"/></td>
												</tr>
												<tr>
													<td>社区类型</td>
													<td colspan=2 ><select name="comType" class="add-type" style="width: 100%;color: #fff">
														<option value="">--请选择社区类型--</option>
														<option value="商业小区">商业小区</option>
														<option value="开放式老旧小区">开放式老旧小区</option>
														<option value="封闭式老旧小区">封闭式老旧小区</option>
													</select></td>
												</tr>
												<tr>
													<td>地址</td>
													<td colspan=2><input type="text" class="add-addrass" name="comAddress" style="width: 100%;color: #fff"/></td>
												</tr>
												<tr>
													<td>所属区域</td>
													<td colspan=2><select class="add-area" name="comRegion" style="width: 100%;color:#fff">
														<option value="">--请选择社区区域--</option>
														<option value="长丰社区">长丰社区</option>
														<option value="天妃社区">天妃社区</option>
														<option value="港龙社区">港龙社区</option>
														<option value="四牌楼社区">四牌楼社区</option>
														<option value="中山社区">中山社区</option>
														<option value="南大街社区">南大街社区</option>
														<option value="雅山社区">雅山社区</option>
														<option value="南湾社区">南湾社区</option>
											</select></td>
												</tr>
												<tr>
													<td>联系人</td>
													<td colspan=2><input type="text" class="add-person" name="comContacts" style="width: 100%;"/></td>
												</tr>
												<tr>
													<td>联系电话</td>
													<td colspan=2><input type="text" class="add-phone" name="comTel" style="width: 100%;"/></td>
												</tr>
												<tr>
													<td>社区图片</td>
													<td colspan=2>
														<input type="hidden" name="filename" id="filename1" />
														<input type="file" class="file-input" name="uploadFile" onchange="uplode1(this)" style="width: 100%;"/>
													</td>
												</tr>
											</table>
									<div>
										<img alt="" src="" id="img1" class="img2"> 
										
									</div>
									<!-- foot -->
									<div class="footbtn-add">
										<button type="submit" class="btn btn-primary">确定</button>
										<button class="btn btn-default" data-dismiss="modal">取消</button>
									</div>
									</form>
									</div>
									
									
								</div>
							</div>
						</div>
     				</div>
     				<div class="form">
     					<table id="example" class="table table-hover">
     						<thead>
     							<tr>
     								<th>序号</th>
     								<th>社区名称</th>
     								<th>社区类型</th>
     								<th>地址</th>
     								<th>所属区域</th>
     								<th>联系人</th>
     								<th>联系号码</th>
     								<th>操作</th>	
     							</tr>
     						</thead>
     						<tbody>
     							<c:forEach var="info" items="${sessionScope.cominfo}">
     							  <tr>
     								<td></td>
     								<td>${info.c_name}</td>
     								<td>${info.c_type}</td>
     								<td>${info.c_address}</td>
     								<td>${info.c_region}</td>
     								<td>${info.c_contacts}</td>
     								<td>${info.c_tel}</td>
     								<td class="actionBtn">
     									<input class="${info.c_id}" type="hidden" id="comDetails" value="${info.c_id}">
										<button onclick="onclickByid('${info.c_id}')" class="seebtn btn-primary btn-lg" data-toggle="modal" data-target="#mysee">查看</button>|
										<button onclick="onclickByid('${info.c_id}')" class="editbtn btn-primary btn-lg" data-toggle="modal" data-target="#myedit">编辑</button>|
     									<a href="javascript:if(confirm('确定要删除吗?'))location='DeleteCommunityInfoByIdServlet?id=${info.c_id}'" style="color:#fff"><button>删除</button></a>
     								</td>	
     							  </tr>
     							</c:forEach>
     						</tbody>		
     					</table>
     				</div>
     			</div>	
     		</div>
<!-- 编辑信息modelbox -->
			<div class="modal fade" id="myedit" tabindex="-1" role="dialog" aria-labelledby="myeditModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content add">
						<!-- header -->
						<div class="headlabel"  style="font-size: 23px;margin-top: 20px;">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times</button>
							<span>编辑社区</span>
						</div>
						<!-- body -->
						<div class="add_body">
							<form action="UpdateCommunityInfoServlet" method="post" enctype="multipart/form-data" class="form-horizontal" role="form">
								<table class="editbox">
									<tr>
										<td class="td1"><input type="hidden" id="span0" name="c_id" /> 经纬度</td>
										<td class="td2"><input type="text" id="edit_longitude" name="edit_longitude" class="edit_longitude" /></td>
										<td class="td2"><input type="text" id="edit_dimension" name="edit_dimension" class="edit_dimension" /></td>
										<td><img src="images/fireControlPage/4.png"  id="edit_img"  data-toggle="modal" data-target="#mapbox"></td>
									</tr>
									<tr>
										<td>社区名称</td>
										<td colspan=2><input type="text" id="comName" name="c_name" class="add-name"  style="width: 100%;"/></td>
									</tr>
									<tr>
										<td>社区类型</td>
										<td  colspan=2><select id="comType" name="c_type" class="add-type" style="width: 100%;color:#fff">
											<option value="商业小区">商业小区</option>
											<option value="开放式老旧小区">开放式老旧小区</option>
											<option value="封闭式老旧小区">封闭式老旧小区</option>
										</select></td>
									</tr>
									<tr>
										<td>地址</td>
										<td  colspan=2><input type="text" id="comAddress" name="c_address" class="add-addrass" style="width: 100%;"/></td>
									</tr>
									<tr>
										<td>所属区域</td>
										<td  colspan=2><select id="comRegion" name="c_region" class="add-area" style="width: 100%;color:#fff">
											<option value="长丰社区">长丰社区</option>
											<option value="天妃社区">天妃社区</option>
											<option value="港龙社区">港龙社区</option>
											<option value="四牌楼社区">四牌楼社区</option>
											<option value="中山社区">中山社区</option>
											<option value="南大街社区">南大街社区</option>
											<option value="雅山社区">雅山社区</option>
											<option value="南湾社区">南湾社区</option>
										</select></td>
									</tr>
									<tr>
										<td>联系人</td>
										<td  colspan=2><input type="text" id="comContacts" name="c_contacts" class="add-person"  style="width: 100%;"/></td>
									</tr>
									<tr>
										<td>联系电话</td>
										<td  colspan=2><input type="text" id="comTel" name="c_tel" class="add-phone"  style="width: 100%;"/></td>
									</tr>
									<tr>
										<td>社区图片</td>
										<td  colspan=2>
											<input type="hidden" name="filename" id="filename2"/>
											<input type="file" onchange="uplode2(this)" name="uploadFile" class="btnphoto" style="width: 100%;"/>
										</td>
									</tr>
								</table>
								<div>
									<img alt="" src="" id="img2" class="img2"> 
								</div>
						<!-- foot -->
						<div class="footbtn-add">
							<button class="btn btn-default " data-dismiss="modal">取消</button>
							<input type="submit" value="确定" class="btn btn-primary "/>
						</div>
						</form>
						</div>
					</div>
				</div>
			</div>
<!-- 查看详情modelbox -->
				<div class="modal fade" id="mysee" tabindex="-1" role="dialog" aria-labelledby="myseeModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content add">
							<!-- header -->
							<div class="headlabel"   style="font-size: 23px;margin-top: 20px;">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times</button>
								<span>查看社区信息</span>
							</div>
							<!-- body -->
							<div class="add_body">
									<table class="editbox">
										<tr>
											<td class="td1">经纬度</td>
											<td class="td2"><span id="span1"></span></td>
											<td class="td2"><span id="span2"></span></td>
											<td><img src="images/fireControlPage/4.png"  id="check_img"  data-toggle="modal" data-target="#mapbox"></td>
										</tr>
										<tr>
											<td>社区名称</td>
											<td colspan=2><span id="span3"></span></td>
										</tr>
										<tr>
											<td>社区类型</td>
											<td colspan=2><span id="span4"></span></td>
										</tr>
										<tr>
											<td>地址</td>
											<td colspan=2><span id="span5"></span></td>
										</tr>
										<tr>
											<td>所属区域</td>
											<td colspan=2><span id="span6"></span></td>
										</tr>
										<tr>
											<td>联系人</td>
											<td colspan=2><span id="span7"></span></td>
										</tr>
										<tr>
											<td>联系电话</td>
											<td colspan=2><span id="span8"></span></td>
										</tr>
										<tr>
											<td>社区图片</td>
											<td colspan=2><span id="span9"></span></td>
										</tr>
									</table>
									<img alt="" id=img-look src="" class="img2">
							</div>
							<!-- foot -->
							<div class="footbtn-add">
								<button class="btn btn-default " data-dismiss="modal">关闭</button>
							</div>
						</div>
					</div>
				</div>
<!-- 地图 -->
				<div class="modal fade" id="mapbox" tabindex="-1" role="dialog" aria-labelledby="myseeModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content mapbox">
							<button type="button" class="close" id="mapbox_close" data-dismiss="modal" aria-hidden="true">&times</button>
							<div id="map" style="width: 100%;height: 100%;"></div>
						</div>
					</div>
				</div>
  </body>
  <script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("map");    // 创建Map实例
	var point = new BMap.Point(121.09541,30.623783);    // 创建点坐标
	map.centerAndZoom(point, 18);                     // 初始化地图,设置中心点坐标和地图级别。  
	map.setCurrentCity("乍浦");          // 设置地图显示的城市 此项是必须设置的
	map.enableScrollWheelZoom();     //开启鼠标滚轮缩放
	map.enableKeyboard();                         // 启用键盘操作。
	var mapStyle={  style : "midnight" };  		  //主题
	map.setMapStyle(mapStyle);
	var myIcon1 = new BMap.Icon("./images/首页/组-10.png", new BMap.Size(56,85));

	$(function(){
		$("img").click(function(){
			var id = $(this).attr("id");
			if (id=="add_img") {
				map.addEventListener("click", function(e){   
		        //通过点击百度地图，可以获取到对应的point, 由point的lng、lat属性就可以获取对应的经度纬度     
			        var lng = e.point.lng;
			        var lat = e.point.lat;
				    $("input[name='add_longitude']").val(lng);
				    $("input[name='add_dimension']").val(lat);
				    $("#mapbox_close").click();
			    });
			}
			else if (id=="edit_img") {
				map.addEventListener("click", function(e){   
		        //通过点击百度地图，可以获取到对应的point, 由point的lng、lat属性就可以获取对应的经度纬度     
			        var lng = e.point.lng;
			        var lat = e.point.lat;
				    $("input[name='edit_longitude']").val(lng);
				    $("input[name='edit_dimension']").val(lat);
				    $("#mapbox_close").click();
			    });
			}
			else{
				var x = $("input[name='check_longitude']").val();
				var y = $("input[name='check_dimension']").val();
				var pt = new BMap.Point(x,y);
				var marker = new BMap.Marker(pt1,{icon:myIcon1});  // 创建标注
				map.addOverlay(marker); 	
			}
		});
	});
</script>
<!--   通过id查看详情 -->
    <script type="text/javascript">
		function onclickByid(a){
			//根据id查看
			var id = $("."+""+a+"").val();
                        $.ajax({
                        type : "post",
                        async : false, //同步执行
                        url : "QueryCommunityInfoByIdServlet",
                        data : {"id":id,},
                        dataType : "json", //返回数据形式为json
                        success : function(data) {
                        console.log(data);
                         var jsonObj=eval(data);
								 for(var i=0;i<jsonObj.length;i++){
								//指定赋值
							 	document.getElementById("span1").innerHTML = jsonObj[i].c_longitude;
							 	document.getElementById("span2").innerHTML = jsonObj[i].c_latitude;
							 	document.getElementById("span3").innerHTML = jsonObj[i].c_name;
							 	document.getElementById("span4").innerHTML = jsonObj[i].c_type;
							 	document.getElementById("span5").innerHTML = jsonObj[i].c_address;
							 	document.getElementById("span6").innerHTML = jsonObj[i].c_region;
							 	document.getElementById("span7").innerHTML = jsonObj[i].c_contacts;
							 	document.getElementById("span8").innerHTML = jsonObj[i].c_tel;
							  	var Img2=document.all("img2");
							  	//console.log(jsonObj[i].c_image);给编辑处图片赋值路径
								Img2.src="${pageContext.request.contextPath}/upload/"+jsonObj[i].c_image;
								//console.log(Img.src);
								//给详情处图片赋值路径
								var Img1=document.all("img-look");
								Img1.src="${pageContext.request.contextPath}/upload/"+jsonObj[i].c_image;
							 	//给编辑的input赋值
							 	$("#span0").val(jsonObj[i].c_id);
							 	$("#edit_longitude").val(jsonObj[i].c_longitude);
							 	$("#edit_dimension").val(jsonObj[i].c_latitude);
							 	$("#comName").val(jsonObj[i].c_name);
							 	$("#comType").val(jsonObj[i].c_type);
							 	$("#comAddress").val(jsonObj[i].c_address);
							 	$("#comRegion").val(jsonObj[i].c_region);
							 	$("#comContacts").val(jsonObj[i].c_contacts);
							 	$("#comTel").val(jsonObj[i].c_tel);
							};
                    }
                });
		};
    </script> 
</html>
