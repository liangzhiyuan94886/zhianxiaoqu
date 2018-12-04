<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>智安小区-社区消防？？？？？？？？？？？？</title> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/xiaofang.css">
	<script type="text/javascript" src="js/echarts.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
  </head>
  <body>
	<div>
    <div class="row">
        <div class="col-lg-12">
            <img src="./images/loginPage/top.png" class="img-responsive">
            <div class="col-xs-3"></div>
            <div class="col-xs-6" style="margin-top: -55px;">
                <a href="index.jsp"><img src="./images/indexPage/index0.png" class="img-responsive pull-left" style="margin-left: -42px;"></a>
                <a href="video.jsp"><img src="./images/indexPage/video0.png" class="img-responsive pull-left" style="margin-left: -15px;"></a>
                <a href="QueryCommunityInfoServlet"><img src="./images/indexPage/baseset0.png" class="img-responsive pull-right" style="margin-right: -42px;"></a>
                <img src="./images/indexPage/xiaofang1.png" class="img-responsive pull-right"  style="margin-right: -15px;">
            </div>
        </div>
    </div>
	</div>
	<div class="middle-div">
	<!-- 左边--- -->
		<div class="left-div">
			<p><img src="images/indexPage/1.png">&nbsp;
			<span class="title-span">今日报警次数统计</span></p>
			<div class="left-div-top" id="bar1"></div>
			<!-- 报警信息统计 -->
		<div class="table-div">
				<p><img src="images/indexPage/1.png">&nbsp;
				<span class="title-span">报警信息统计</span></p>
				<table>
					<thead>
						<tr>
							<td>设备名称</td>
							<td>地点</td>
							<td>离线时间</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>无线烟感设备</td>
							<td>天妃西苑 35幢</td>
							<td>2018-11-11 11:11</td>
						</tr><tr>
							<td>无线烟感设备</td>
							<td>天妃南苑 22幢</td>
							<td>2018-11-11 11:11</td>
						</tr>
						<tr>
							<td>水箱液位感应</td>
							<td>染店苑 1幢</td>
							<td>2018-11-11 11:11</td>
						</tr>
						<tr>
							<td>水箱液位感应</td>
							<td>染店苑 6幢</td>
							<td>2018-11-11 11:11</td>
						</tr>
						<tr>
							<td>无线烟感设备</td>
							<td>天妃西苑 1幢</td>
							<td>2018-11-11 11:11</td>
						</tr>
						<tr>
							<td>紧急报警设备</td>
							<td>天妃北苑 10幢</td>
							<td>2018-11-11 11:11</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		
		<!-- 中间--- -->
		<div class="mid-div">
			<p><img src="images/indexPage/1.png">&nbsp;
			<span class="title-span">设备接入情况统计</span></p>
			<div class="mid-div-top">
				<div class="mid-div1">
					<div class="mid-div-left1">
						<span>社区消防</span><br>
						<span>接入社区</span>
					</div>
					<div class="mid-div-right">
						<span class="min-span">13</span>
						<span>个</span>
					</div>
				</div>
				<div class="mid-div2">
					<div class="mid-div-left">
						<span>接入设备</span>
					</div>
					<div class="mid-div-right">
						<span class="min-span">1000</span>
						<span>个</span>
					</div>
				</div>
				<div class="mid-div3">
					<div class="mid-div-left">
						<span>在线设备</span>
					</div>
					<div class="mid-div-right">
						<span class="min-span">960</span>
						<span>个</span>
					</div>
				</div>
				<div class="mid-div4">
					<div class="mid-div-left">
						<span>设备在线率</span>
					</div>
					<div class="mid-div-right">
						<span class="min-span">96</span>
						<span>%</span>
					</div>
				</div>
			</div>
			<!-- 离线设备统计 -->
			<div class="table-div">
				<p><img src="images/indexPage/1.png">&nbsp;
				<span class="title-span">离线设备统计</span></p>
				<table>
					<thead>
						<tr>
							<td>设备名称</td>
							<td>地点</td>
							<td>离线时间</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>无线烟感设备</td>
							<td>天妃西苑 35幢</td>
							<td>2018-11-11 11:11</td>
						</tr><tr>
							<td>无线烟感设备</td>
							<td>天妃西苑 35幢</td>
							<td>2018-11-11 11:11</td>
						</tr>
						<tr>
							<td>电子摄像头</td>
							<td>天妃南苑 3幢</td>
							<td>2018-11-11 11:11</td>
						</tr>
						<tr>
							<td>紧急报警设备</td>
							<td>天妃西苑 11幢</td>
							<td>2018-11-11 11:11</td>
						</tr>
						<tr>
							<td>无线烟感设备</td>
							<td>天妃西苑 15幢</td>
							<td>2018-11-11 11:11</td>
						</tr>
						<tr>
							<td>紧急报警设备</td>
							<td>染店预苑 1幢</td>
							<td>2018-11-11 11:11</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- 右边--- -->
		<div class="right-div" id="bar2">
		</div>
	</div>
	<!-- 底部--- -->
	<div>
		<div class="bottom-div" id="bar3"></div>
	</div>
</body>
<!-- 今日报警饼图 -->
 <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('bar1'));
        // 指定图表的配置项和数据
         option = {
          title: {
        text: '13',
        x: '25%',
        y: 'center',
        textStyle : {
        	color: '#ffffff',
        }
    },
    tooltip: {
        trigger: 'item',
        formatter: "{a} <br/>{b}: {c} ({d}%)",
    },
    color:['#44b7d3','#e42b6d'],
    legend: {
        orient: 'vertical',
        x: '60%',
        top: '35px',
        data:['无线烟感','水箱液位'],
        textStyle: {
        	color: '#ffffff',
        }
    },
    series: [
        {
            name:'访问来源',
            type:'pie',
            radius: ['50%', '80%'],
            center: ['30%','50%'],
            avoidLabelOverlap: false,
            label: {
                normal: {
                    show: false,
                    position: 'center'
                },
                emphasis: {
                    show: true,
                    textStyle: {
                    }
                } 
            },
            labelLine: {
                normal: {
                    show: false
                }
            },
            data:[
                {value:5, name:'无线烟感'},
                {value:8, name:'水箱液位'}
            ]
        }
    ]
};
                    

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
<!-- 本月报警柱状图 -->
<script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('bar2'));
        // 指定图表的配置项和数据
          option = {
   		 title : {
        text: '本月报警次数统计',
        textStyle: {
            color: 'white'          // 主标题文字颜色
        },
    },
       grid: {
        x: 65,
    },
    tooltip : {
        trigger: 'axis'
    },
    legend: {
        data:['本月'],
        textStyle: {
            color: '#ffffff'          // 图例文字颜色
        }
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            dataView : {show: true, readOnly: false},
            magicType: {show: true, type: ['line', 'bar']},
            restore : {show: true},
            saveAsImage : {show: true}
        },
         iconStyle:{
               normal:{
               //color:'#37b1f5',//设置颜色
               borderColor: '#37b1f5',
              }
          }
    },
    calculable : true,
    xAxis : [
        {
            type : 'value',
            boundaryGap : [0, 0.01],
            /* splitLine:{//网格线
			show:false
		}, */
            axisLabel: {
                 show: true,
                 textStyle: {
                 color: '#ffffff'
                 }
            },
            axisLine:{
            lineStyle:{ 
            color:'#ffffff',
             }
           }
           
        }
    ],
    yAxis : [
        {
            type : 'category',
            data : ['天妃东苑','天妃西苑','天妃西苑','天妃南苑','天妃北苑','染店苑','总计(次)'],
            axisLabel: {
                   show: true,
                   textStyle: {
                   color: '#ffffff'
                   }
              },
             axisLine:{ 
            lineStyle:{ 
            color:'#ffffff',
             }
           }
        }
    ],
    series : [
        {
            name:'本月',
            type:'bar',
            data:[12, 22, 33, 44, 55, 66,77],
             itemStyle: {//颜色渐变效果
                    emphasis: {
                    }, normal: {
                        color: new echarts.graphic.LinearGradient(
                            0, 0, 1, 0,
                            [
                                {offset: 0, color: '#3977E6'},
                                {offset: 1, color: '#37BBF8'}

                            ]
                        )
                    } }
        },
    ],
   };
                    

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
   <!--  近30日统计 -->
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('bar3'));
        // 指定图表的配置项和数据
          option = {
    	color: ['#37b1f5'],
    	title : {
        text: '近30日报警趋势变化',
        textStyle: {
            color: 'white'       // 主标题文字颜色
        },
    },
    tooltip : {
        trigger: 'axis'
    },
    legend: {
        data:['报警次数'],
        textStyle: {
            color: '#ffffff'          // 图例文字颜色
        }
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            dataView : {show: true, readOnly: false},
            magicType : {show: true, type: ['line', 'bar']},
            restore : {show: true},
            saveAsImage : {show: true},
        },
        iconStyle:{
               normal:{
               borderColor: '#37b1f5',
              }
          }
    },
    calculable : true,
    xAxis : [
        {
            type : 'category',
            boundaryGap : false,
            data : ['1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31'],
            axisLabel: {
                   show: true,
                   textStyle: {
                   color: '#ffffff'
               }
            },
            axisLine:{ 
            lineStyle:{ 
            color:'#ffffff',
             }
           }
}
    ],
    yAxis : [
        {
            type : 'value',
            splitLine:{
			show:false
		},
            axisLabel : {
                formatter: '{value} 次',
                show: true,
                   textStyle: {
                   color: '#ffffff'
               }
            },
            axisLine:{ 
            lineStyle:{ 
            color:'#ffffff',
             }
           }
        }
        
    ],
    series : [
        {
            name:'报警次数',
            type:'line',
            data:[3, 16, 20, 13, 12, 11, 10,1, 11, 10, 7, 12, 16, 10,18, 8, 15, 13, 12, 13, 10,11, 11, 15, 13, 12, 13, 10,2,6,8],
            markLine : {
                data : [
                    {type : 'average', name: '平均值'}
                ]
            }
        },
        
    ]
};
                    
                                    

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
</html>

