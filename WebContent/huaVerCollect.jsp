<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<%=request.getContextPath() %>/js/fingerprint.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery-ui.min.js"></script>

<style>

    	body{ 
    background :#E6E6FA;

    }           
     
  .draggable{
    background: url(images/arrow_2.png) no-repeat; 
    width: 33px; 
    height: 50px; 
    float: left;
  }
  #wrapper2{
  	height:400px;
	margin:0 auto;
	padding-top:10px;;
  }
  
    #wrapper3{
  	height:500px;
	margin:0 auto;
	padding-top:10px;;
  }
  
  .containment-wrapper { 
  width: 35px; 
  height:300px;
   border:2px solid #ccc;
    padding: 10px;
     -webkit-border-radius: 30px;
     
        	padding: 10px 10px 10px 10px;
	-webkit-border-radius: 20px;
	-moz-border-radius: 20px;
	border-radius: 20px;
	background: -moz-linear-gradient(top, #CD96CD	, 	#CD96CD	);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0, #CD96CD	),
		color-stop(1, 	#CD96CD	));
	border: 2px solid #454545;
	overflow: hidden;
	-webkit-user-select: none;}
     
     
  h3 { clear: left; }
  
   .well-class{

   width: 40%;
   height:60%;
   position:absolute; top:25%;left:50%;
   
   }
  .well-class h2 {
	background: -moz-linear-gradient(left, #CD5555, 0.4, #CD5555, 0.5, #CD5555, 0.6,
		#CD5555, #CD5555);
	background: -webkit-gradient(linear, left top, right top, color-stop(0, #CD5555),
		color-stop(0.4, #CD5555), color-stop(0.5, #CD5555),
		color-stop(0.6, #CD5555), color-stop(1, #CD5555));
	-moz-background-clip: text;
	-webkit-background-clip: text;
	-moz-text-fill-color: transparent;
	-webkit-text-fill-color: transparent;
	-webkit-animation: slidetounlock 5s infinite;
	font-size: 38px;
	font-family: "微软雅黑";
	font-weight: 900;
	padding: 0;
	width: 100%;
	-webkit-text-size-adjust: none;
	overflow-x: hidden;
	margin: 0;
	padding: 0;
/* 	border:1px solid #000; */
/* 	line-height:10px; */
	text-align: center;
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
  background: -webkit-gradient(linear, 0 0, 0 100%, from(#6495ED), to(#6495ED));
  background: -moz-linear-gradient(top, #6495ED, #6495ED);
  position:absolute;top:80%; left:30%;

}
.button:hover {
  background: #7EC0EE;
}

#Submit{ 
  	visibility: hidden;  
 }
  </style>
  <script>
  var flag=0,flag1=0,flag2=0,flag3=0;
  
  $(function() {
    
	  $( "#draggable1" ).draggable({axis:"y", containment: "#containment-wrapper", scroll: false ,
	      drag: function(event, ui) {
	      },
	      stop: function(event, ui) {
	        var x=event.offsetX;
	        if (ui.position.top > 210&&ui.position.top<223) {$(this).fadeOut(100,function(){
				flag++;
				if(flag==3){
				var sub = document.getElementById("Submit");
				sub.style.visibility="visible";
				}
	        });}else{$(this).animate({top: 0});}
	      }});
	  
	  $( "#draggable2" ).draggable({axis:"y", containment: "#containment-wrapper", scroll: false ,
	      drag: function(event, ui) {
	      },
	      stop: function(event, ui) {
	        var x=event.offsetX;
	        if (ui.position.top > 310&&ui.position.top<324) {$(this).fadeOut(100,function(){
	        	flag++;
				if(flag==3){
				var sub = document.getElementById("Submit");
				sub.style.visibility="visible";
				}
	        });}else{$(this).animate({top: 0});}
	      }});
	  
	  $( "#draggable3" ).draggable({axis:"y", containment: "#containment-wrapper", scroll: false ,
	      drag: function(event, ui) {
	      },
	      stop: function(event, ui) {
	        var x=event.offsetX;
	        if (ui.position.top > 410&&ui.position.top<424) {$(this).fadeOut(100,function(){
	        	flag++;
				if(flag==3){
				var sub = document.getElementById("Submit");
				sub.style.visibility="visible";
				}
	        });}else{$(this).animate({top: 0});}
	      }});
    
    
  });
  </script>
</head>
<body onload="browerInfo()" onkeydown="keyDown()" onkeyup="keyUp()"  ondrag="mouseDrag(event)" onmousedown="mousedown_sendXML()" onmousemove="mousemove_sendXML()" onmouseup="mouseup_sendXML()">

<center><p style="font-family: '微软雅黑';-webkit-text-stroke: 1px #E5E5E5;font-weight:bold;font-size:60px;color:#6495ED">纵向滑动解锁数据采集</p></center>

<div class="containment-wrapper" id="wrapper1" style="position:absolute; top:25%;left:15%;">

  <div id="draggable1" class="draggable" style="position: relative;"> </div>
  <canvas id="myCanvas1" width="32" height="48" style="border:1px solid #3d3d3d;position:absolute;top:230px;left:10px;">

</div>
<div class="well-class" id="useText">
<h2 style="line-height:100px;font-size: 43px; ">使用说明</h2>
<h2 style="line-height:60px; ">请将滑块移动到滑动条标示的方形区域内，滑块消失则完成采集。</h2>
<h2 style="line-height:85px; ">请完成左侧三次采集任务。</h2>


<form id="form1" name="form1"  method="post" action="/WebDataTest3/MainServlet">
  <input type="hidden" name="method" value="huaVerCollect" />
  <input type="hidden" name="StrData" id="StrData"> 
  <input type="hidden"   name="StrData2" id="StrData2"> 
  <input class="button" type="submit"  id="Submit" name="Submit" value="我已完成采集">
 </form>


</div>

<div class="containment-wrapper" id="wrapper2" style="position:absolute; top:25%;left:25%;">

  <div id="draggable2" class="draggable" style="position: relative;"> </div>
  <canvas id="myCanvas2" width="32" height="48" style="border:1px solid #3d3d3d;position:absolute;top:330px;left:10px;"></canvas> </div>

<div class="containment-wrapper" id="wrapper3" style="position:absolute; top:25%;left:35%;">

  <div id="draggable3" class="draggable" style="position: relative;"> </div>
  <canvas id="myCanvas3" width="32" height="48" style="border:1px solid #3d3d3d;position:absolute;top:430px;left:10px;">

</div>
</body>>
<script>

  
  var StringData="";
  var strCilent="";
  
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
		
	 StringData=StringData+"HDVertical"+" "+"mousemove"+" "+x+" "+y+" "+d+"\n";
	 document.getElementById("StrData").value = StringData;
	 
     var clientX=e.clientX;
     var clientY=e.clientY;	 
	   strCilent=strCilent+"HDVertical"+" "+"mousemove"+" "+clientX+" "+clientY+" "+d+"\n";
	   document.getElementById("StrData2").value = strCilent;	
	  
  }
  
  //鼠标点击数据获取
  //down
  function mousedown_sendXML(){

	  var d = (new Date()).valueOf();
	  var e = window.event || arguments.callee.caller.arguments[0];
	 
	  var x = e.screenX ;
      var y = e.screenY ;
	  
      StringData=StringData+"HDVertical"+" "+"mousedown"+" "+x+" "+y+" "+d+"\n";
      document.getElementById("StrData").value = StringData;

      var clientX=e.clientX;
      var clientY=e.clientY;	 
	   strCilent=strCilent+"HDVertical"+" "+"mousedown"+" "+clientX+" "+clientY+" "+d+"\n";
	   document.getElementById("StrData2").value = strCilent;	

	  
  }
  
  var mouseDrag = function(event){
		var e = event || window.event || arguments.callee.caller.arguments[0];
		var d = (new Date()).valueOf();
		var x = e.screenX;
		var y = e.screenY;
		StringData = StringData + "HDVertical" + " " + "mousedrag" + " " + x + " " + y
				+ " " + d + "\n";
		document.getElementById("StrData").value = StringData;
		
	      var clientX=e.clientX;
	      var clientY=e.clientY;	 
		   strCilent=strCilent+"HDVertical"+" "+"mousedrag"+" "+clientX+" "+clientY+" "+d+"\n";
		   document.getElementById("StrData2").value = strCilent;

	}
  
  //鼠标点击数据获取
  //up
    function mouseup_sendXML(){

	  var d = (new Date()).valueOf();
	  var e =  window.event || arguments.callee.caller.arguments[0];    	  
	  var x = e.screenX ;
      var y = e.screenY ;
      StringData=StringData+"HDVertical"+" "+"mouseup"+" "+x+" "+y+" "+d+"\n"; 
      document.getElementById("StrData").value = StringData;
      
      var clientX=e.clientX;
      var clientY=e.clientY;	 
	   strCilent=strCilent+"HDVertical"+" "+"mouseup"+" "+clientX+" "+clientY+" "+d+"\n";
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
             	StringData=StringData+"HDVertical"+" "+"keydown"+" "+e.keyCode+" "+d+"\n"; 
              strCilent=strCilent+"HDVertical"+" "+"keydown"+" "+e.keyCode+" "+d+"\n";        	 
           }else{
          	 StringData=StringData+"illegal "+"HDVertical"+" "+"keydown"+" "+e.keyCode+" "+d+"\n"; 
               strCilent=strCilent+"illegal "+"HDVertical"+" "+"keydown"+" "+e.keyCode+" "+d+"\n";     	 
           }
      		document.getElementById("StrData").value = StringData;
        	 document.getElementById("StrData2").value = strCilent;
               }
	
	
	 function keyUp(){
		    
         var e = window.event || arguments.callee.caller.arguments[0];
         
         var d = (new Date()).valueOf();
          StringData=StringData+"HDVertical"+" "+"keyUp"+" "+e.keyCode+" "+d+"\n";
          document.getElementById("StrData").value = StringData;
          
          strCilent=strCilent+"HDVertical"+" "+"keyup"+" "+e.keyCode+" "+d+"\n";
          document.getElementById("StrData2").value = strCilent; 

         }
  </script>


</html>