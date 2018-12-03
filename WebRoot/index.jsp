<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<title>智安小区-首页??????</title>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/apiv2.0.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/bmap.css"/>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/echarts.js"></script>	
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/index.css">
  </head> 
<body>
	<div id="allmap"></div>
	<div class="row">
		<div class="col-lg-12">
			<img src="./images/loginPage/top.png" class="img-responsive">
			<div class="col-xs-3"></div>
			<div class="col-xs-6" style="margin-top: -55px;">
				<img src="./images/indexPage/index1.png" class="img-responsive pull-left" style="margin-left: -42px;">
				<a href="video.jsp"><img src="./images/indexPage/video0.png" class="img-responsive pull-left" style="margin-left: -15px;"></a>
				<a href="QueryCommunityInfoServlet"><img src="./images/indexPage/baseset0.png" class="img-responsive pull-right" style="margin-right: -42px;"></a>
				<a href="xiaofang.jsp"><img src="./images/indexPage/xiaofang0.png" class="img-responsive pull-right"  style="margin-right: -15px;"></a>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-3 col-md-3 row_left">
			<div  class="gap">
				<img src="images/indexPage/1.png">
				<span>接入小区统计数</span><br>
				<div>
					<span class="index_span">0</span>
					<span class="index_span">3</span>
					<span class="index_span">3</span>
					<span style="vertical-align:bottom;">家</span>	
				</div>
				<div id="left_1" style="width: 100%;height:150px;"></div>
			</div>
			<div  class="gap">
				<img src="images/indexPage/1.png">
				<span>设备接入情况</span><br>
				<div id="left_2" style="width: 100%;height:150px;"></div>
			</div>
			<div  class="gap">
				<span>设备总量</span><br>
				<div>
					<span class="index_span">1</span>
					<span class="index_span">0</span>
					<span class="index_span">3</span>
					<span class="index_span">0</span>
					<span style="vertical-align:bottom;">个</span>	
				</div>
			</div>
			<div  class="gap">
				<span>设备在线统计情况</span><br>
				<div>
					<div id="online_count_1" class="pull-left online_count"></div>
					<div id="online_count_2" class="pull-left online_count"></div>
					<div id="online_count_3" class="pull-left online_count"></div>
					<div id="online_count_4" class="pull-left online_count"></div>
				</div>
			</div>
			<div  class="gap pull-left">
				<img src="images/indexPage/1.png">
				<span>警告信息</span><br>
				<div class="gap">
				<table class="table  table-condensed" id="tableId">
					<thead>
						<tr style="background-color: #CD3278;">
							<th>时间</th>
							<th>地点</th>
							<th>内容</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>2018-22-12 19:30</td>
							<td>天妃园 35栋</td>
							<td>烟感警报</td>
						</tr>	
						<tr>
							<td>2018-22-12 19:30</td>
							<td>天妃园 35栋</td>
							<td>烟感警报</td>
						</tr>
						<tr>
							<td>2018-22-12 19:30</td>
							<td>天妃园 35栋</td>
							<td>烟感警报</td>
						</tr>
						<tr>
							<td>2018-22-12 19:30</td>
							<td>天妃园 35栋</td>
							<td>烟感警报</td>
						</tr>

					</tbody>
				</table>
				</div>
			</div>
		</div>
	<div class="col-lg-6">
			<div class="col-xs-12 footer navbar-fixed-bottom"  style="margin-bottom: 30px;">
				<div class="container">
					<div class="row">
						<div class="col-xs-5">
							<img src="./images/indexPage/feng1.png" class="pull-right down_img" id="feng" >
						</div>
						<div class="col-xs-2">
							<img src="./images/indexPage/shang1.png" class="center-block down_img" id="shang">
						</div>
						<div class="col-xs-5">
							<img src="./images/indexPage/kai1.png" class="pull-left down_img" id="kai">
						</div>
					</div>
				</div>
			</div>
	</div>
	<div class="col-lg-3 col-md-3 pull-right row_right">
		<div class="pull-right" style="width: 80%;margin-right: 5px;">
			<div class="gap">
				<img src="images/indexPage/1.png">
				<span>出入口流量</span><br>
				<span>今日人流量</span><br>
				<div>
					<span class="index_span">0</span>
					<span class="index_span">3</span>
					<span class="index_span">3</span>
					<span class="index_span">3</span>
					<span style="vertical-align:bottom;">次</span>	
				</div>
				<span>今日车流量</span><br>
				<div>
					<span class="index_span">0</span>
					<span class="index_span">3</span>
					<span class="index_span">3</span>
					<span class="index_span">3</span>
					<span style="vertical-align:bottom;">次</span>	
				</div>
			</div>
			<div  class="gap">
				<img src="images/indexPage/1.png">
				<span>车流量信息</span><br>
				<div id="right_1" style="width: 100%;height:200px;"></div>
			</div>
			<div  class="gap">
				<img src="images/indexPage/1.png">
				<span>实时通行情况</span><br>
				<table class="table  table-condensed">
					<thead>
						<tr style="background-color: #CD3278;">
							<th>时间</th>
							<th>地点</th>
							<th>状态</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>2018-22-12 19:30</td>
							<td>天妃园出口</td>
							<td><img src="images/videoPage/img.png" class="state_img" data-toggle="modal" data-target="#big_img_Modal"></td>
							<td><img src="images/indexPage/cheak.png"></td>
						</tr>	
						<tr>
							<td>2018-22-12 19:30</td>
							<td>天妃园入口</td>
							<td><img src="images/videoPage/img.png" class="state_img" data-toggle="modal" data-target="#big_img_Modal"></td>
							<td><img src="images/indexPage/cheak.png"></td>
						</tr>
						<tr>
							<td>2018-22-12 19:30</td>
							<td>天妃园出口</td>
							<td><img src="images/videoPage/img.png" class="state_img"  data-toggle="modal" data-target="#big_img_Modal"></td>
							<td><img src="images/indexPage/cheak.png"></td>
						</tr>
						<tr>
							<td>2018-22-12 19:30</td>
							<td>天妃园入口</td>
							<td><img src="images/videoPage/img.png" class="state_img" data-toggle="modal" data-target="#big_img_Modal"></td>
							<td><img src="images/indexPage/cheak.png"></td>
						</tr>
						<tr>
							<td>2018-22-12 19:30</td>
							<td>天妃园入口</td>
							<td><img src="images/videoPage/img.png" class="state_img" data-toggle="modal" data-target="#big_img_Modal"></td>
							<td><img src="images/indexPage/cheak.png"></td>
						</tr>
						<tr>
							<td>2018-22-12 19:30</td>
							<td>天妃园入口</td>
							<td><img src="images/videoPage/img.png" class="state_img" data-toggle="modal" data-target="#big_img_Modal"></td>
							<td><img src="images/indexPage/cheak.png"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	</div>
<!-- 大图模态框（Modal） -->
	<div class="modal fade  text-center" id="big_img_Modal" tabindex="-1" role="dialog" aria-labelledby="big_img_Modal" aria-hidden="true">
	    <div class="modal-dialog"  style="display: inline-block; width: 80%;height: 850px; z-index: 99999999;">
	        <div class="modal-content">
	            <div class="modal-body">
	            		<img src="images/videoPage/img.png" alt="big" class="img-rounded img-thumbnail" style="width: 100%;height: 100%; background-size: cover;" >
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
	</div>
<!-- 小区详情模态框（Modal） -->
	<div class="modal fade  text-center" id="xiaoqu_Modal" tabindex="-1" role="dialog" aria-labelledby="big_img_Modal" aria-hidden="true" style="margin-top: 100px;">
	    <div class="modal-dialog"  style="display: inline-block; width: 800px;height: 550px; z-index: 99999999;">
	        <div class="modal-content">
	            <div class="modal-body" style="padding: 0px;">
	            	<div id="frame1">
					<div class="container" id="frame">
						<div class="row" style="margin-left: 10px;">
							<div class="col-md-5" style="height: 500px;">
								<div class="row" style="height: 50%;">
									<div class="col-md-12">
										<div>
											<span class="pull-left" ><h1 id="c_name"></h1></span>
											<span class="pull-right" style="margin-top:30px;"><h4 id="c_type"></h4></span>
										</div>
										<div>
											<img alt="" id="Img1" src="" class="img1">
										</div>
									</div>
									<div class="col-md-12" style="margin-top: 10px;"> 
										<table align="left">
											<tr>
												<td><h4>小区建造时间：</h4></td>
												<td><h4 class="h4" id="c_yrb"></h4></td>
											</tr>
											<tr>
												<td><h4>小区建筑面积：</h4></td>
												<td><h4 class="h4" id="c_acreage"></h4>m<sup>2</sup></td>
											</tr>
											<tr>
												<td><h4>小区楼栋数：</h4></td>
												<td><h4 class="h4" id="c_loudong"></h4></td>
											</tr>
											<tr>
												<td><h4>小区物业单位：</h4></td>
												<td><h4 class="h4" id="c_property"></h4></td>
											</tr>
											<tr>
												<td><h4>小区联系人：</h4></td>
												<td><h4 class="h4" id="c_contacts"></h4><span id="c_tel"></span></td>
											</tr>
										</table>
									</div>
								</div>
								<div class="row" style="height: 50%;">
									<div class="col-md-12">
									</div>
								</div>
							</div>
							<div class="col-md-7" style="height: 500px;">
								<h4 class="pull-left">小区人员情况</h4>
								<div class="col-md-12" id="top" style="width: 400px; height: 216px;"></div>
								<h4 class="pull-left">小区房屋情况</h4>
								<div class="col-md-12" id="bottom" style="width: 450px; height: 216px;"></div>
							</div>
						</div>
					</div>
					</div>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
	</div>
<!--接入小区统计数-->
	<script type="text/javascript">
		var myChart = echarts.init(document.getElementById('left_1'),'light');
		option = {
		    tooltip: {
		        trigger: 'item',
		        formatter: "{c} ({d}%)"
		    },
		    legend: {
		        orient: 'vertical',
		        color:'#FFF5EE',
		        x: 'left',
		        y: 'center',
		        data:['商品房小区','开放式小区','封闭式小区'],
		        textStyle:{color:'#FFF5EE'}
		    },
		    series: [
		        {
		            name:'访问来源',
		            type:'pie',
		            right:'0',
		            radius: ['60%', '80%'],
		            avoidLabelOverlap: false,
		            label: {
		                normal: {
		                    show: false,
		                    position: 'center',
		                    color:'#FFF5EE'
		                },
		                emphasis: {
		                    show: true,
		                    textStyle: {
		                        fontSize: '15',
		                        fontWeight: 'bold'
		                    }
		                }
		            },
		            data:[
		                {value:1, name:'商品房小区'},
		                {value:2, name:'开放式小区'},
		                {value:3, name:'封闭式小区'},
		            ]
		        }
		    ]
		};
		myChart.setOption(option);
	</script>
<!--设备接入情况-->
	<script type="text/javascript">
		var myChart = echarts.init(document.getElementById('left_2'),'light');
		option = {
		    tooltip: {
		        trigger: 'item',
		        formatter: "{a} <br/>{b}: {c} ({d}%)"
		    },
		    legend: {
		        orient: 'vertical',
		        color:'#FFF5EE',
		        x: 'left',
		        y: 'center',
		        data:['监控摄像头','无限烟感','液位传感器','无限烟感2','液位传感器2'],
		        textStyle:{color:'#FFF5EE'}
		    },
		    series: [
		        {
		            name:'访问来源',
		            type:'pie',
		            radius: ['60%', '80%'],
		            avoidLabelOverlap: false,
		            label: {
		                normal: {
		                    show: false,
		                    position: 'center',
		                    color:'#FFF5EE'
		                },
		                emphasis: {
		                    show: true,
		                    textStyle: {
		                        fontSize: '15',
		                        fontWeight: 'bold'
		                    }
		                }
		            },
		            data:[
		                {value:1, name:'监控摄像头'},
		                {value:2, name:'无限烟感'},
		                {value:3, name:'液位传感器'},
		                {value:4, name:'无限烟感2'},
		                {value:5, name:'液位传感器2'},
		            ]
		        }
		    ]
		};
		myChart.setOption(option);
	</script>
<!--设备在线统计情况online_count_1-->
	<script type="text/javascript">
		var myChart = echarts.init(document.getElementById('online_count_1'),'light');
		option = {
		    tooltip: {
		        trigger: 'item',
		        selectedMode: false,
		        position: [10, 10],
		        show:false
		    },
		    legend: {
		        orient: 'horizontal',
		        x: 'center',
		        y: 'bottom',
		        itemWidth:0,
		        itemHeight:0,
		        data:['总量'],
		        textStyle:{color:'#FFF5EE'},
		       
		    },
		    series: [
		        {
		            type:'pie',
		            radius: ['60%', '80%'],
		            avoidLabelOverlap: false,
		            hoverAnimation: false,
		            label: {
		                normal: {
		                    show: true ,
		                    position: 'center',
		                    color:'#FFF5EE',
		                    formatter: "{d}%",
		                }
		            },
		            data:[
		                {value:1, name:'总量'}
		            ]
		        }
		    ]
		};
		myChart.setOption(option);
	</script>
<!--设备在线统计情况online_count_2-->
	<script type="text/javascript">
		var myChart = echarts.init(document.getElementById('online_count_2'),'light');
		option = {
		    tooltip: {
		        trigger: 'item',
		        selectedMode: false,
		        position: [10, 10],
		        show:false
		    },
		    legend: {
		        orient: 'horizontal',
		        x: 'center',
		        y: 'bottom',
		        itemWidth:0,
		        itemHeight:0,
		        data:['监控'],
		        textStyle:{color:'#FFF5EE'}
		    },
		    series: [
		        {
		            type:'pie',
		            radius: ['60%', '80%'],
		            avoidLabelOverlap: false,
		            hoverAnimation: false,
		            label: {
		                normal: {
		                    show: true ,
		                    position: 'center',
		                    color:'#FFF5EE',
		                    formatter: "{d}%",
		                }
		            },
		            data:[
		                {value:1, name:'监控'}
		            ]
		        }
		    ]
		};
		myChart.setOption(option);
	</script>	
<!--设备在线统计情况online_count_3-->
	<script type="text/javascript">
		var myChart = echarts.init(document.getElementById('online_count_3'),'light');
		option = {
		    tooltip: {
		        trigger: 'item',
		        selectedMode: false,
		        position: [10, 10],
		        show:false
		    },
		    legend: {
		        orient: 'horizontal',
		        x: 'center',
		        y: 'bottom',
		        itemWidth:0,
		        itemHeight:0,
		        data:['消防'],
		        textStyle:{color:'#FFF5EE'},
		    },
		    series: [
		        {
		            type:'pie',
		            radius: ['60%', '80%'],
		            avoidLabelOverlap: false,
		            hoverAnimation: false,
		            label: {
		                normal: {
		                    show: true ,
		                    position: 'center',
		                    color:'#FFF5EE',
		                    formatter: "{d}%",
		                }
		            },
		            data:[
		                {value:1, name:'消防'}
		            ]
		        }
		    ]
		};
		myChart.setOption(option);
	</script>
<!--设备在线统计情况online_count_4-->
	<script type="text/javascript">
		var myChart = echarts.init(document.getElementById('online_count_4'),'light');
		option = {
		    tooltip: {
		        trigger: 'item',
		        selectedMode: false,
		        position: [10, 10],
		        show:false
		    },
		    legend: {
		        orient: 'horizontal',
		        x: 'center',
		        y: 'bottom',
		        itemWidth:0,
		        itemHeight:0,
		        data:['出入口'],
		        textStyle:{color:'#FFF5EE'}
		    },
		    series: [
		        {
		            type:'pie',
		            radius: ['60%', '80%'],
		            avoidLabelOverlap: false,
		            hoverAnimation: false,
		            label: {
		                normal: {
		                    show: true ,
		                    position: 'center',
		                    color:'#FFF5EE',
		                    formatter: "{d}%",
		                }
		            },
		            data:[
		                {value:1, name:'出入口'}
		            ]
		        }
		    ]
		};
		myChart.setOption(option);
	</script>
<!--车流量信息-->
	<script type="text/javascript">
		var myChart = echarts.init(document.getElementById('right_1'),'light');
		option = {
			tooltip: {
		        trigger: 'item',
		        formatter: "{b}: {c}"
		    },
		    legend: {

		        textStyle:{color:'#FFF5EE'}
		    },
		    xAxis: {
		        type: 'category',
		        boundaryGap: false,
		        data: ['星期一','星期二','星期三', '星期四','星期五', '星期六','星期日'],
		        axisLine:{
		        	lineStyle:{
		        		color:'#FFF5EE',
		        	}
		        },
		        axisLabel:{
		        	interval:'0',
		        },
		    },
		    yAxis: {
		        type: 'value',
		        show:false,
		    },
		    series: [{
		        data: [820, 500, 901, 100, 500, 1330, 500],
		        type: 'line',
		        areaStyle: {},
		        textStyle:{color:'#FFF5EE'},
		    }]
		};
		myChart.setOption(option);
	</script>
	
<script type="text/javascript">
	$("#2").click(function(){
		$('#xiaoqu_Modal').modal('toggle');
	});
</script>

<!--地图-->
	<script type="text/javascript">
		// 百度地图API功能
		var map = new BMap.Map("allmap");    // 创建Map实例
		var point = new BMap.Point(121.095279, 30.623503);    // 创建点坐标
		map.centerAndZoom(point, 18);                     // 初始化地图,设置中心点坐标和地图级别。  
		map.setCurrentCity("乍浦");          // 设置地图显示的城市 此项是必须设置的
		map.enableScrollWheelZoom();     //开启鼠标滚轮缩放
		map.enableKeyboard();                         // 启用键盘操作。
		var mapStyle={  style : "midnight" };  		  //主题
		map.setMapStyle(mapStyle);

		//点
		var myIcon1 = new BMap.Icon("./images/indexPage/feng.png", new BMap.Size(56,85));
		var myIcon2 = new BMap.Icon("./images/indexPage/shang.png", new BMap.Size(56,85));
		var myIcon3 = new BMap.Icon("./images/indexPage/kai.png", new BMap.Size(56,85));

						$.ajax({
                        type : "post",
                        async : false,
                        url : "QueryLongitudeAndLatitudeServlet",
                        data : {},
                        dataType : "json",
                        success : function(data) {
                        var jsonObj=eval(data);
								 for(var i=0;i<jsonObj.length;i++){
								 	var Point = new BMap.Point(jsonObj[i].c_longitude,jsonObj[i].c_latitude);
									//将新增的marker对象放入数组
									if(jsonObj[i].c_type=="封闭式老旧小区"){
										var marker = new BMap.Marker(Point,{icon:myIcon1}); //创建标注
										map.addOverlay(marker);  							//标注添加到地图
										$('#feng').click(function(){						//封闭式小区切换开关	
											if ($(this).attr('src') == './images/indexPage/feng1.png'){
												$(this).attr('src', './images/indexPage/feng0.png');
												map.removeOverlay(marker);
											}else{
												$(this).attr('src', './images/indexPage/feng1.png');
												map.addOverlay(marker);
											}
										});
									}else if(jsonObj[i].c_type=="商业小区"){
										var marker = new BMap.Marker(Point,{icon:myIcon2});	//创建标注
										map.addOverlay(marker);								//标注添加到地图
										$('#shang').click(function(){						//商业小区切换开关
											if($(this).attr('src')=='./images/indexPage/shang1.png'){
												$(this).attr('src','./images/indexPage/shang0.png');
												map.removeOverlay(marker);
											}else{
												$(this).attr('src','./images/indexPage/shang1.png');
												map.addOverlay(marker);
											}
										});
									}else{
										var marker = new BMap.Marker(Point,{icon:myIcon3});	//创建标注
										map.addOverlay(marker);								//标注添加到地图
										$('#kai').click(function(){							//开放式小区切换开关
											if($(this).attr('src')=='./images/indexPage/kai1.png'){
												//map.clearOverlays();
												map.removeOverlay(marker);
												$(this).attr('src','./images/indexPage/kai0.png');
											}else{
												$(this).attr('src','./images/indexPage/kai1.png');
												map.addOverlay(marker);
											}
										});
									}
									marker.addEventListener("click", function(){			//标注监听
										$('#xiaoqu_Modal').modal('toggle');					//调起模态框展示
										var longitude = $(this)[0].HA.lng;
										var latitude = $(this)[0].HA.lat;
										//根据监听事件获得经纬度，查询小区信息
										$.ajax({
                        type : "post",
                        async : false,
                        url : "QueryCommunityInfoById",
                        data : {"longitude":longitude,"latitude":latitude,},
                        dataType : "json",
                        success : function(data) {
                        console.log(data);
                        var jsonObj=eval(data);
								 for(var i=0;i<jsonObj.length;i++){
								//指定赋值
							 	document.getElementById("c_name").innerHTML = jsonObj[i].c_name;
							 	document.getElementById("c_type").innerHTML = jsonObj[i].c_type;
							 	document.getElementById("c_yrb").innerHTML = jsonObj[i].c_yrb;
							 	document.getElementById("c_acreage").innerHTML = jsonObj[i].c_acreage;
							 	document.getElementById("c_loudong").innerHTML = jsonObj[i].c_loudong;
							 	document.getElementById("c_property").innerHTML = jsonObj[i].c_property;
							 	document.getElementById("c_contacts").innerHTML = jsonObj[i].c_contacts;
							 	document.getElementById("c_tel").innerHTML = jsonObj[i].c_tel;
							  	var Img1 = document.all("Img1");
							  	//给处图片赋值路径
								Img1.src="${pageContext.request.contextPath}/upload/"+jsonObj[i].c_image;
								//console.log(Img.src);
							};
                    }
                }); 
                
    /* 小区人员情况echart */          
         var myChart = echarts.init(document.getElementById('top'),'light');
		option = {
			tooltip : {
		        trigger: 'item',
		        formatter: "{b} : {c} (人)"
		    },
		    xAxis: {
		        type: 'category',
		        data: ['党员', '低保', '残疾', '重点上访'],
		        axisLine:{
		        	lineStyle:{
		        		color:'#FFF5EE',
		        	}
		        },
		    },
		    yAxis: {
		    	name:'小区总人数：',
		        type: 'value',
		        axisLine:{
		        	lineStyle:{
		        		color:'#FFF5EE',
		        	}
		        },
		    },
		    series: [
                {
                    name:'收入',
                    type:'bar',
                    barWidth: '60%',
                    data:(
                    function(){
                       var arr=[];
                        $.ajax({
                        type : "post",
                        async : false, 
                        url : "QueryCommunityInfoById",
                        data : {"longitude":longitude,"latitude":latitude,},
                        dataType : "json",
                        success : function(data) {
                        var jsonObj=eval(data);
								for(var i=0;i<jsonObj.length;i++){
								arr.push(jsonObj[i].c_partymember);
								arr.push(jsonObj[i].c_dibao);
								arr.push(jsonObj[i].c_disability);
								arr.push(jsonObj[i].c_visit);
								}
                    },
                    error : function(errorMsg) {
                    alert("系统繁忙！图表请求数据失败啦!");
                    }
                   });
                   return arr;
                    }
                    )()
                }]
		};
		myChart.setOption(option);
		
/* 小区房屋情况 */		
var myChart = echarts.init(document.getElementById('bottom'),'light');
   		myChart.setOption({
    title : {
        x:'center'
    },
    tooltip : {
        trigger: 'item',
        formatter: "{b} : {c} ({d}%)"
    },
    legend: {
        orient: 'vertical',
        left: 'left',
        data: [],
        textStyle :{
        	color: '#fff'
        }
    },
    series : [
        {
            name: '访问来源',
            type: 'pie',
            radius : '55%',
            center: ['50%', '60%'],
            data:[],
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }
    ]
});
myChart.showLoading();// 加载动画
                        $.ajax({
                        type : "post",
                        async : false,
                        url : "QueryCommunityInfoById",
                        data : {"longitude":longitude,"latitude":latitude,},
                        dataType : "json",
                        success : function(data) {
                        console.log(data);
                        var jsonObj=eval(data);
								 for(var i=0;i<jsonObj.length;i++){
							 	 myChart.hideLoading();
							 	 //填入数据
							 	  myChart.setOption({
							       legend: {
							           data: ['自住房','出租房','空置房']
							           },
							       series:{data: [
							                {value:jsonObj[i].c_zizhufang, name:'自住房'},
							                {value:jsonObj[i].c_chuzufang, name:'出租房'},
							                {value:jsonObj[i].c_kongzhifang, name:'空置房'}
							            ]}
							   });
							};
                    }
                });
										
									});
							};
                    	}
                	});
		

	</script>
    
</body>
</html>
