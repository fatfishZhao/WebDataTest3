<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >
  <head>
    <base href="<%=basePath%>">
    
    <title>menu</title>
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
/*     overflow-y: hidden;   */
    } 
	</style>

  </head>
  
  
  
  
  <body onload="alertNum()">
   <%    
    	String warning=(String)request.getAttribute("warning");	   	   
	%>
   <div id="botAgregar"></div>
	<script type="text/javascript">$.AutomLeafStart({leafsfolder:"/WebDataTest3/yezi/",howmanyimgsare:8,initialleafs:10,maxYposition:-10,multiplyclick:true,multiplynumber:2,infinite:true,fallingsequence:6000});$("#botAgregar").on("click",function(){$.AutomLeafAdd({leafsfolder:"/WebDataTest2/yezi/",add:8,})});</script>
     <br>
     <br>
     <br>
     <center><p style="font-family: '微软雅黑';-webkit-text-stroke: 1px #FFF68F;font-weight:bold;font-size:70px;color:#ffcc33">数据采集选项</p></center>
<!--      <center><font color=red size=8>WEB数据采集测试</font></center> -->
    <br>
    <br>
    <br>
	<center><a style="text-decoration:none" title="点我进入登录采集" href=/WebDataTest3/OutServlet?WebType=loginCollect >
	<p style="font-family: '微软雅黑';font-weight:bold;font-size:40px;color:#445cbb">登录采集 &nbsp &nbsp 剩余
	<font color="#cc0033"><%=session.getAttribute("loginNum")%></font>次</p>
	</a></center>
	<br>

	<center><a style="text-decoration:none"  title="点我进入改密采集" href=/WebDataTest3/OutServlet?WebType=changePwdNumCollect >
	<p style="font-family: '微软雅黑';font-weight:bold;font-size:40px;color:#8B4C39">改密采集 &nbsp &nbsp 剩余
	<font color="#cc0033"><%=session.getAttribute("changePwdNum")%></font>次</p>
	</a></center>
	<br>
	<center><a style="text-decoration:none"  title="点我进入秒杀采集" href=/WebDataTest3/OutServlet?WebType=miaoshaCollect >
	<p style="font-family: '微软雅黑';font-weight:bold;font-size:40px;color:#ff6666">秒杀采集 &nbsp &nbsp 剩余
	<font color="#cc0033"><%=session.getAttribute("miaoshaNum")%></font>次</p>
	</a></center>
	<br>
	<center><a style="text-decoration:none"  title="点我进入横向滑动采集" href=/WebDataTest3/OutServlet?WebType=huadongCollect >
	<p style="font-family: '微软雅黑';font-weight:bold;font-size:40px;color:#48D1CC">横向滑动 &nbsp &nbsp 剩余
	<font color="#cc0033"><%=session.getAttribute("huadongNum")%></font>次</p>
	</a></center>	
	<br>
    <center><a style="text-decoration:none"  title="点我进入纵向滑动采集" href=/WebDataTest3/OutServlet?WebType=huaVerCollect >
	<p style="font-family: '微软雅黑';font-weight:bold;font-size:40px;color:#8470FF">纵向滑动 &nbsp &nbsp 剩余
	<font color="#cc0033"><%=session.getAttribute("huaVerNum")%></font>次</p>
	</a></center>	
	<br>
	<br>
	<center><a style="text-decoration:none"  title="点我退出采集系统" href=/WebDataTest3/OutServlet?WebType=outSystem>
	<p style="font-family: '微软雅黑';font-weight:bold;font-size:40px;color:#0ca3d2">退出系统</p>
	</a></center>

  </body>
  	<script>
	function alertNum(){
	  var warning="<%= warning%>";
	  if(warning != "null"){ swal({  title: "注意", text:warning, type: "warning", confirmButtonText: "我知道了", timer: 2000  });}	 
      }
	</script>
</html>
