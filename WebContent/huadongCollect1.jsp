<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>

    <base href="<%=basePath%>">
    
    <title>login</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
    <script src="<%=request.getContextPath() %>/js/fingerprint.js"></script>
   <style>
    	body{ 
    background :#F0FFFF;
    overflow-x: hidden;  
    overflow-y: hidden; 

    }           
        #page-wrap1 {
	 width: 300px;
	margin: 0 auto;
	padding-top: 10px;
	
      }
   #page-wrap2{
	width:480px;
	margin:0 auto;
	padding-top:10px;
   }
#page-wrap3{
	width:640px;
	margin:0 auto;
	padding-top:10px;;
}

.well-class {
	padding: 10px 10px 10px 10px;
	-webkit-border-radius: 20px;
	-moz-border-radius: 20px;
	border-radius: 20px;
	background: -moz-linear-gradient(top, #FFAD86	, 	#FFBD9D	);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0, #FFAD86	),
		color-stop(1, 	#FFBD9D	));
	border: 2px solid #454545;
	overflow: hidden;
	-webkit-user-select: none;
}

.well-class h2 {
	background: -moz-linear-gradient(left, #969696, 0.4, #969696, 0.5, white, 0.6,
		#969696, #969696);
	background: -webkit-gradient(linear, left top, right top, color-stop(0, #969696),
		color-stop(0.4, #969696), color-stop(0.5, white),
		color-stop(0.6, #969696), color-stop(1, #969696));
	-moz-background-clip: text;
	-webkit-background-clip: text;
	-moz-text-fill-color: transparent;
	-webkit-text-fill-color: transparent;
	-webkit-animation: slidetounlock 5s infinite;
	font-size: 33px;
	font-family: "HelveticaNeue-Light", "Helvetica Neue Light",
		"Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
	font-weight: 300;
	padding: 0;
	width: 200%;
	-webkit-text-size-adjust: none;
	overflow-x: hidden;
	margin: 0;
	padding: 0;
}

.ui-draggable {
	background: url(images/arrow_1.png) no-repeat;
	width: 50px;
	height: 33px;
	display: inline-block;
	vertical-align: middle;
	line-height: 1;
}  
#Submit{ 
 	visibility: hidden; 
 }   

.button {
   width: 200px; 
    height: 60px;
        line-height:30px;
  font-family: Georgia;
  color: #ffffff;
  font-size: 28px;
    font-family: '微软雅黑';
  padding: 10px;
  text-decoration: none;
  -webkit-border-radius: 38px;
  -moz-border-radius: 38px;
  border-radius: 38px;
  -webkit-box-shadow: 0px 1px 3px #666666;
  -moz-box-shadow: 0px 1px 3px #666666;
  box-shadow: 0px 1px 3px #666666;
  text-shadow: 1px 1px 3px #666666;
  border: solid #fafafa 1px;
  background: -webkit-gradient(linear, 0 0, 0 100%, from(#A4D3EE), to(#7EC0EE));
  background: -moz-linear-gradient(top, #A4D3EE, #7EC0EE);
}
.button:hover {
  background: #7EC0EE;
}
	</style>
	<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/jquery-ui.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/slidetounlock.js"></script>
	
</head>
<body onload="browerInfo()" onkeydown="keyDown()" onkeyup="keyUp()"  ondrag="mouseDrag(event)" onmousedown="mousedown_sendXML()" onmousemove="mousemove_sendXML()" onmouseup="mouseup_sendXML()">
<br>
<br>


     <center><p style="font-family: '微软雅黑';-webkit-text-stroke: 1px #D1EEEE;font-weight:bold;font-size:60px;color:#7EC0EE">滑动解锁数据采集</p></center>
     
      <div id="page-wrap1">
		<div id="well11" class="well-class">
			<h2>
				<strong id="slider1" class="ui-draggable" style="position: relative;"></strong>
				<span style="font-family: '微软雅黑';font-size: 25px;">滑动浮标至最右</span>
			</h2>
		</div>
	</div>
	<br>
	<div id="page-wrap2">
		<div id="well12" class="well-class">
			<h2>
				<strong id="slider2" class="ui-draggable" style="position: relative;"></strong>
				<span style="font-family: '微软雅黑';font-size: 29px;">滑动浮标至最右</span>
			</h2>
		</div>
	</div>
	<br>
	<div id="page-wrap3">
		<div id="well13" class="well-class">
			<h2>
				<strong id="slider3" class="ui-draggable" style="position: relative;"></strong>
				<span style="font-family: '微软雅黑';">滑动浮标至最右</span>
			</h2>
		</div>
	</div>
	<br>
	<br>
	<form id="form1" name="form1"  method="post" action="/WebDataTest3/MainServlet">
	     <input type="hidden" name="method" value="huadongCollect" />
        <input type="hidden" name="StrData" id="StrData"> 
        <input type="hidden"   name="StrData2" id="StrData2"> 
	<center><p ><input class="button" type="submit"  id="Submit" name="Submit" value="我已完成采集"></p></center>
      </form>
    </div>  


</body>
<script>

  
  var StringData="";
  var strCilent="";
  
//     function refreshcode(){
//       document.getElementById("codeimg").src= "/WebDataTest3/CodeServlet?hehe="+Math.random();
//     }


  
  function browerInfo(){
	  var x=navigator;
	  

	  
	  StringData+="CodeName:"+x.appCodeName+"\n";//浏览器的代码名
	  StringData+="MinorVersion:"+x.appMinorVersion+"\n";//浏览器的次级版本
	  StringData+="AppName:"+x.appName+"\n";//浏览器的名称
	  StringData+="appVersion:"+x.appVersion+"\n";//浏览器的平台和版本信息
	  StringData+="javaEnabled:"+x.javaEnabled+"\n";//表示当前浏览器中是否启用了java
	  StringData+="vendor:"+x.vendor+"\n";//浏览器的品牌
	  StringData+="UA:"+x.userAgent+"\n";//客户机发送服务器的 user-agent 头部的值
	  StringData+="Platform:" + x.platform+"\n";//运行浏览器的操作系统平台。
	  StringData+="OnLine:" + x.onLine+"\n"; //指明系统是否处于脱机模式的布尔值
	  StringData+="PluginNum:" + x.plugins.length+"\n";//浏览器安装的插件数
	  StringData+="Language:" + x.language+"\n";//OS 的自然语言设置
	  StringData+="mimeTypes:" + x.mimeTypes+"\n";// 浏览器支持的所有MIME类型的数组
	  StringData+="Product:" + x.product+"\n";//浏览器产品名称
	  StringData+="ProductSub:" + x.productSub+"\n";//浏览器产品其他信息
	  StringData+="UsingCookie:"+x.cookieEnabled+"\n";//浏览器是否开启cookie
	  StringData+="Screen resolution:"+window.screen.width + "*" + window.screen.height+"\n";//屏幕分辨率
	  StringData+="ColorDepth:"+window.screen.colorDepth+"\n";//颜色质量
	  StringData+="DeviceXDPI:"+window.screen.deviceXDPI+"\n";//像素
      
	  function checkePlugs(pluginname) {
          var f = "-"
          var plugins = navigator.plugins;
          if (plugins.length > 0) {
              for (i = 0; i < navigator.plugins.length; i++) {
                  if (navigator.plugins[i].name.indexOf(pluginname) >= 0) {
                      f = navigator.plugins[i].description.split(pluginname)[1];
                      return f;
                      break;
                  }
              }
          }
          return false;
      }
	  
	  StringData+="Flash Plugin:"+checkePlugs('Shockwave Flash')+"\n";//flash插件情况
  
	  var referer;  
	    if (document.referrer.length > 0) {  
	        referer = document.referrer;  
	    }  
	    try {  
	        if (referer.length == 0 && opener.location.href.length > 0) {  
	            referer = opener.location.href;  
	        }  
	    } catch (e) {  
	        referer = window.location.href;  
	    }  
	  
	    referer = referer.replace('http://', '');
	    StringData+="refer:"+referer+"\n";	    	    
	    var fp1 = new Fingerprint();
	    var fp2 = new Fingerprint({canvas: true});
	    var fp3 = new Fingerprint({ie_activex: true});
	    var fp4 = new Fingerprint({screen_resolution: true});
	    StringData+="\n";
	    StringData+="browser fingerprint with default settings (canvas, screen resolutin, activeX disabled:   "+ fp1.get()+"\n";   
	    StringData+="browser fingerprint with canvas enabled:   "+fp2.get()+"\n";
	    StringData+="browser fingerprint with ie_activex enabled:   "+fp3.get()+"\n";
	    StringData+="browser fingerprint with screen_resolution enabled:   "+fp4.get()+"\n";
	    
	    StringData+="\n";
	    strCilent=StringData;
	    
  }
  
  
//鼠标移动数据获取
  function mousemove_sendXML(){

	  var d = (new Date()).valueOf();		 
	  var e =  window.event || arguments.callee.caller.arguments[0];  
	   var x = e.screenX ;
       var y = e.screenY ;
		
	 StringData=StringData+"huadong"+" "+"mousemove"+" "+x+" "+y+" "+d+"\n";
	 document.getElementById("StrData").value = StringData;
	 
     var clientX=e.clientX;
     var clientY=e.clientY;	 
	   strCilent=strCilent+"huadong"+" "+"mousemove"+" "+clientX+" "+clientY+" "+d+"\n";
	   document.getElementById("StrData2").value = strCilent;	
	  
  }
  
  //鼠标点击数据获取
  //down
  function mousedown_sendXML(){

	  var d = (new Date()).valueOf();
	  var e = window.event || arguments.callee.caller.arguments[0];
	 
	  var x = e.screenX ;
      var y = e.screenY ;
	  
      StringData=StringData+"huadong"+" "+"mousedown"+" "+x+" "+y+" "+d+"\n";
      document.getElementById("StrData").value = StringData;

      var clientX=e.clientX;
      var clientY=e.clientY;	 
	   strCilent=strCilent+"huadong"+" "+"mousedown"+" "+clientX+" "+clientY+" "+d+"\n";
	   document.getElementById("StrData2").value = strCilent;	

	  
  }
  
  var mouseDrag = function(event){
		var e = event || window.event || arguments.callee.caller.arguments[0];
		var d = (new Date()).valueOf();
		var x = e.screenX;
		var y = e.screenY;
		StringData = StringData + "huadong" + " " + "mousedrag" + " " + x + " " + y
				+ " " + d + "\n";
		document.getElementById("StrData").value = StringData;
		
	      var clientX=e.clientX;
	      var clientY=e.clientY;	 
		   strCilent=strCilent+"huadong"+" "+"mousedrag"+" "+clientX+" "+clientY+" "+d+"\n";
		   document.getElementById("StrData2").value = strCilent;

	}
  
  //鼠标点击数据获取
  //up
    function mouseup_sendXML(){

	  var d = (new Date()).valueOf();
	  var e =  window.event || arguments.callee.caller.arguments[0];    	  
	  var x = e.screenX ;
      var y = e.screenY ;
      StringData=StringData+"huadong"+" "+"mouseup"+" "+x+" "+y+" "+d+"\n"; 
      document.getElementById("StrData").value = StringData;
      
      var clientX=e.clientX;
      var clientY=e.clientY;	 
	   strCilent=strCilent+"huadong"+" "+"mouseup"+" "+clientX+" "+clientY+" "+d+"\n";
	   document.getElementById("StrData2").value = strCilent;	
  
  }
  
  var getCoordInDocumentExample = function(){
		  var datacollect = document.getElementById("thisbody");
		  thisbody.onmousemove = function(){
			  mousemove_sendXML();

	   }
	 }

	 
	//击键数据获取
	 function keyDown(){
		    
          var e = window.event || arguments.callee.caller.arguments[0];
            
          var d = (new Date()).valueOf();   		
          if(e.keyCode!=229){
             	StringData=StringData+"register"+" "+"keydown"+" "+e.keyCode+" "+d+"\n"; 
              strCilent=strCilent+"register"+" "+"keydown"+" "+e.keyCode+" "+d+"\n";        	 
           }else{
          	 StringData=StringData+"illegal "+"register"+" "+"keydown"+" "+e.keyCode+" "+d+"\n"; 
               strCilent=strCilent+"illegal "+"register"+" "+"keydown"+" "+e.keyCode+" "+d+"\n";     	 
           }
      		document.getElementById("StrData").value = StringData;
        	 document.getElementById("StrData2").value = strCilent;
               }
	
	
	 function keyUp(){
		    
         var e = window.event || arguments.callee.caller.arguments[0];
         
         var d = (new Date()).valueOf();
          StringData=StringData+"login"+" "+"keyUp"+" "+e.keyCode+" "+d+"\n";
          document.getElementById("StrData").value = StringData;
          
          strCilent=strCilent+"login"+" "+"keyup"+" "+e.keyCode+" "+d+"\n";
          document.getElementById("StrData2").value = strCilent; 

         }
  </script>
  
</html>