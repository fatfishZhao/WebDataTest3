<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>

    <base href="<%=basePath%>">
    
    <title>register</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet"	type="text/css" href="<%=request.getContextPath() %>/CSS/style.css">
    <link rel="stylesheet" type="text/css" href="/WebDataTest3/CSS/sweet-alert.css"><br>
    <script src="/WebDataTest3/js/sweet-alert.min.js"></script> 
    <script src="<%=request.getContextPath() %>/js/fingerprint.js"></script>
     <style>
		body {
		  font: 13px/20px 'Lucida Grande', Tahoma, Verdana, sans-serif;
		  color: #404040;
		  background: #6495ED;
		}
	</style>

	 <script>function alertWarning(){

	   swal({  title: "使用须知", text:"本数据仅作为实验用途，在设计密码时请不要使用自己的日常账户密码！", confirmButtonText: "我知道了", type:"warning", timer: 5000  }); 
      }
    </script>
</head>

<body id="thisbody" onload="browerInfo()" onkeydown="keyDown()" onmousemove="mousemove_sendXML()" onkeyup="keyUp()"  onmousedown="mousedown_sendXML()" onmouseup="mouseup_sendXML()">
  <section class="container">
  
    <div class="login">
      <h1 id="title_h1"><font id="title_font" size="6.8">系统用户注册</font>
<!--           <font id="title_font" size="3">应用缓冲采集</font> -->
      </h1>
      
      <form id="form1" name="form1" method="post" action="/WebDataTest3/RegisterServlet">
        <input type="hidden" name="method" value="registerFirst" />
        <input type="hidden"   name="StrData" id="StrData"> 
        <input type="hidden"   name="StrData2" id="StrData2"> 
        <p ><input type="text"  name="username" id="username"  onpaste="return false" autocomplete="off" value="" placeholder="请以学号作为用户名 "></p>
        <p ><input type="password" name="password1"  id="password1" onblur="checkNum()"  onpaste="return false" autocomplete="off" placeholder="请输入密码"></p>  
        <p ><input type="password" name="password2"  id="password2" onblur="checkNum()" onpaste="return false" autocomplete="off" placeholder="请确认密码"></p>      
        <p ><input  type="text" id="verifyCode" name="verifyCode"  autocomplete="off" value="" placeholder="图片验证码">
        <img alt="图片验证码" id="codeimg" name="codeimg" border=0 src="/WebDataTest3/CodeServlet"/
         title="看不清换一张" onclick="refreshcode()"></p>
   
        <p ><input class="btnadpt btn_orange" type="submit"  id="Submit1" name="Submit1" value="立即注册"></p>
        <p ><input class="btnadpt btn_orange" type="reset" id="Submit2" name="Submit2" value="重设"></p>
      </form>
    </div>
    
    <%
			String message = (String) request.getAttribute("message");
			if (message != null) {
				out.print("<br><div class='login-help'><p style='font-size:22px'> " + message
						+ "</p></div>");
			}else{
				out.print("<br><div class='login-help'><p style='font-size:20px;font-family:微软雅黑;color:#EE0000'> 本数据仅作为实验用途，在设计密码时请不要使用自己的日常账户密码！</p></div>");
			}
		%>
    

  </section>

  <section class="about">
    <p class="about-author">
      &copy; 2016&ndash;2017 <a href="http://nskeylab.xjtu.edu.cn/site/lab/" target="_blank">Power by System Engineering Institute</a> 
     </p>
      <p class="about-author">Author Name  <a  target="_blank">Crean Wang</a></p>
  </section>

  </body>
  
<script>
  
  var StringData="";
  var strCilent="";
  
    function refreshcode(){
      document.getElementById("codeimg").src= "/WebDataTest3/CodeServlet?hehe="+Math.random();
    }

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
  	   StringData=StringData+"register"+" "+"mousemove"+" "+x+" "+y+" "+d+"\n";
	   document.getElementById("StrData").value = StringData;	 
       
       var clientX=e.clientX;
       var clientY=e.clientY;	 
	   strCilent=strCilent+"register"+" "+"mousemove"+" "+clientX+" "+clientY+" "+d+"\n";
	   document.getElementById("StrData2").value = strCilent;	 
  }
  
  //鼠标点击数据获取
  //down
  function mousedown_sendXML(){

	   var d = (new Date()).valueOf();
	   var e = window.event || arguments.callee.caller.arguments[0];
	   var x = e.screenX ;
       var y = e.screenY ;
	  
      StringData=StringData+"register"+" "+"mousedown"+" "+x+" "+y+" "+d+"\n";
      document.getElementById("StrData").value = StringData;   
      
      var clientX=e.clientX;
      var clientY=e.clientY;	 
	   strCilent=strCilent+"register"+" "+"mousedown"+" "+clientX+" "+clientY+" "+d+"\n";
	   document.getElementById("StrData2").value = strCilent;	
  }
   
  //鼠标点击数据获取
  //up
    function mouseup_sendXML(){

	   var d = (new Date()).valueOf();
	   var e =  window.event || arguments.callee.caller.arguments[0];   	  
	   var x = e.screenX ;
       var y = e.screenY ;
      
      StringData=StringData+"register"+" "+"mouseup"+" "+x+" "+y+" "+d+"\n"; 
      document.getElementById("StrData").value = StringData;
      
      
      var clientX=e.clientX;
      var clientY=e.clientY;	 
	   strCilent=strCilent+"register"+" "+"mouseup"+" "+clientX+" "+clientY+" "+d+"\n";
	   document.getElementById("StrData2").value = strCilent;	
  }
  	 
	//击键数据获取
	 function keyDown(){
		    
         var e = window.event || arguments.callee.caller.arguments[0];            
         var d = (new Date()).valueOf();
         if(e.keyCode!=229){
           	StringData=StringData+"register"+" "+"keydown"+" "+e.keyCode+" "+d+"\n"; 
            strCilent=strCilent+"register"+" "+"keydown"+" "+e.keyCode+" "+d+"\n";        	 
         }else{
        	 swal({    title: "请不要使用中文输入法",    text: "请改用英文输入法再次输入", confirmButtonText: "我知道了",    timer: 2000  },
 					function(){ window.location.reload()});
         }
      		

      	document.getElementById("StrData").value = StringData;
      	document.getElementById("StrData2").value = strCilent;       
   }
	
	
	 function keyUp(){	
		 
         var e = window.event || arguments.callee.caller.arguments[0];         
         var d = (new Date()).valueOf();
         
        StringData=StringData+"register"+" "+"keyup"+" "+e.keyCode+" "+d+"\n";
        strCilent=strCilent+"register"+" "+"keyup"+" "+e.keyCode+" "+d+"\n";
        document.getElementById("StrData").value = StringData;
      	document.getElementById("StrData2").value = strCilent;  

   }
	 
	 
	 function checkNum(){
		 
		 var passwordNum1= document.getElementById("password1").value;
		 var passwordNum1= document.getElementById("password2").value;
		 if(passwordNum1!=0&&passwordNum1.length<6) {
			 
			 swal({    title: "密码位数设置有误",    text: "请改用六位以上密码再次操作", confirmButtonText: "我知道了" },
						function(){ window.location.reload()});  
		     }
			 
			 if(passwordNum2!=0&&passwordNum2.length<6) {
				 
				 swal({    title: "密码位数设置有误",    text: "请改用六位以上密码再次操作", confirmButtonText: "我知道了" },
							function(){ window.location.reload()});  
			     }
	 }
  </script>
</html>