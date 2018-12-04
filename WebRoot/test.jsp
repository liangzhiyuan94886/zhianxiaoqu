<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>test</title>
    
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
  
  <body>
    <div id="top"></div>
    <div id="firstPieChart" style="border:1px red solid;"></div>
  </body>
<script type="text/javascript">

//function loadOneColumn() {
    var myChart = echarts.init(document.getElementById('firstPieChart'));
    // 显示标题，图例和空的坐标轴
    myChart.setOption({
        color: ['#ff7d27', '#47b73d', '#fcc36e', '#57a2fd', "#228b22"],//饼图颜色
        title: {
            text: '信息发布排行',
            subtext: '纯属虚构',
            x:'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },        
        legend: {
            orient: 'vertical',
            x: 'left',
            data: []
        },        
        toolbox: {
            show: true,
            feature: {
                mark: { show: true },
                dataView: { show: true, readOnly: false },
                magicType: {
                    show: true,
                    type: ['pie', 'funnel'],
                    option: {
                        funnel: {
                            x: '25%',
                            width: '50%',
                            funnelAlign: 'left',
                            max: 1548
                        }
                    }
                },
                restore: { show: true },
                saveAsImage: { show: true }
            }
        },         
        series: [{
            name: '发布排行',
            type: 'pie',
            radius: '55%',
            center: ['50%', '60%'],            
            data: []
        }]        
    });
    myChart.showLoading();    //数据加载完之前先显示一段简单的loading动画
    var names = [];    //类别数组（用于存放饼图的类别）
    var brower = [];
var id =85;
    $.ajax({
        type: 'get',
        url: "QueryCommunityInfoById",//请求数据的地址
		data : {"id":id},
        dataType: "json",        //返回数据形式为json
        success: function (result) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            $.each(result.list, function (index, item) {
                names.push(item.department);    //挨个取出类别并填入类别数组 
                brower.push({
                    name: item.department,
                    value: item.num
                });
            });
            myChart.hideLoading();    //隐藏加载动画
            myChart.setOption({        //加载数据图表                
                legend: {                    
                    data: names
                },
                series: [{                    
                    data: brower
                }]
            });
        },
        error: function (errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
            myChart.hideLoading();
        }
    });
//};
loadOneColumn();
</script>
</html>
