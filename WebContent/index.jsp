<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >
  <head>
    <base href="<%=basePath%>">
    
    <title>index</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
   <link rel="stylesheet" href="/WebDataTest3/CSS/lrtk.css">
	<script type="text/javascript" src="/WebDataTest3/js/yezi.js"></script>
		<style>
	body{  
    overflow-x: hidden;  
    overflow-y: hidden;  
} 
	</style>
  </head>
  
  
  
  
  <body >
   <%--  <%response.sendRedirect("/WebDataTest/login.jsp"); %> --%>
   <div id="botAgregar"></div>
	<script type="text/javascript">$.AutomLeafStart({leafsfolder:"/WebDataTest3/yezi/",howmanyimgsare:8,initialleafs:10,maxYposition:-10,multiplyclick:true,multiplynumber:2,infinite:true,fallingsequence:6000});$("#botAgregar").on("click",function(){$.AutomLeafAdd({leafsfolder:"/WebDataTest2/yezi/",add:8,})});</script>
     <br>
     <br>
     <br>
     <br>
     <br>
      <br>
      <br>
    
     <center><p style="font-family: '微软雅黑';font-weight:bold;font-size:70px;color:#D52B2B">WEB数据采集测试</p></center>
<!--      <center><font color=red size=8>WEB数据采集测试</font></center> -->
    <br>
    <br>
    <br>
<!-- 	<center><a style="text-decoration:none" href="/WebDataTest3/registerFirst.jsp" title="点我进入系统"> -->
<!-- 	<p style="font-family: '微软雅黑';font-weight:bold;font-size:40px;color:#445cbb">首次使用系统入口</p> -->
<!-- 	</a></center> -->
	<br>
	  <br>
	
	<center><a style="text-decoration:none" href="/WebDataTest3/registerAfter.jsp" title="点我进入系统">
	<p style="font-family: '微软雅黑';font-weight:bold;font-size:45px;color:#445cbb">数据采集系统入口</p>
	</a></center>
  <br>
	  <br>
	   <br>
	<center><a style="text-decoration:none" href="/WebDataTest3/registerFirst.jsp" title="首次使用系统点我进入"><img src="images/xjtu.png"  alt="西安交通大学" /></a></center>

  </body>
</html>
