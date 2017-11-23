<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >
  <head>
    <base href="<%=basePath%>">
    
    <title>out</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
   <link rel="stylesheet" href="/WebDataTest3/CSS/lrtk.css">
   <link rel="stylesheet" type="text/css" href="/WebDataTest3/CSS/sweet-alert.css">
	<script type="text/javascript" src="/WebDataTest3/js/yezi.js"></script>
	<script src="/WebDataTest3/js/sweet-alert.min.js"></script> 
	<style>
	body{  
    overflow-x: hidden;  
    overflow-y: hidden; 

    } 
	</style>

  </head>
  
  
  
  
  <body >

   <div id="botAgregar"></div>
	<script type="text/javascript">$.AutomLeafStart({leafsfolder:"/WebDataTest3/yezi/",howmanyimgsare:8,initialleafs:10,maxYposition:-10,multiplyclick:true,multiplynumber:2,infinite:true,fallingsequence:6000});$("#botAgregar").on("click",function(){$.AutomLeafAdd({leafsfolder:"/WebDataTest2/yezi/",add:8,})});</script>
     <br>
     <br>
     <br>
     <br>
     <br>
      <br>
     <br>
     <center><img src="images/logo.png" style= "width: 222px;
  height: 222px;"  alt="西安交通大学" /></center>
     
      <br>
      <br>    
     <center><p style="font-family: '微软雅黑';font-weight:bold;font-size:80px;color:#ff4500">感谢您完成Web数据采集</p></center>
<!--      <center><font color=red size=8>WEB数据采集测试</font></center> -->
    <br>
     <center><p style="font-family: '微软雅黑';font-weight:bold;font-size:65px;color:#ffcc33">请关闭浏览器以退出登录</p></center>
    <br>
    <br>
    <br>


  </body>

</html>