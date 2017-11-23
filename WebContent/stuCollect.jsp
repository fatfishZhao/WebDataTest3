<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
 <head>
  <title>stuCollect</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
       <link href="assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/page-min.css" rel="stylesheet" type="text/css" />  
   <style type="text/css">
    code {
      padding: 0px 4px;
      color: #d14;
      background-color: #f7f7f9;
      border: 1px solid #e1e1e8;
    }
   </style>
 </head>
 <body id="thisbody" onload="browerInfo();getCoordInDocumentExample()"  onkeydown="keyDown()" onkeyup="keyUp()"  onmousedown="mousedown_sendXML()" onmousemove="mousemove_sendXML()" onmouseup="mouseup_sendXML()">
  
<section class="container">
  
    <div class="login">
      <h1 id="title_h1"><font id="title_font" size="6.8">系统用户信息登记</font></h1>
    <div class="row">
      <form id="J_Form" class="form-horizontal span24" method="post" action="/WebDataTest3/DataServlet">
         <input type="hidden"   name="StrData" id="StrData"> 
         <input type="hidden"   name="StrData2" id="StrData2"> 
        <div class="row">
         <div class="control-group span8">
            <label class="control-label"><s>*</s>姓名：</label>
            <div class="controls">
              <input name="username" id="username" type="text" autocomplete="off" data-rules="{required:true}" class="input-normal control-text">
            </div>
          </div>
        </div>
        
        <div class="row">
          <div class="control-group span8">
            <label class="control-label"><s>*</s>学号：</label>
            <div class="controls">
              <input name="studyNum" id="studyNum" type="text" autocomplete="off" data-rules="{required:true}" class="input-normal control-text">
            </div>
          </div>
        </div>
        
         <div class="row">                
          <div class="control-group span8">
            <label class="control-label"><s>*</s>性别：</label>
            <div class="controls">
              <select  data-rules="{required:true}"  name="sex"  id="sex" class="input-normal"> 
                <option value="">请选择性别</option>
                <option value="male">男</option>
                <option value="female">女</option>
              </select>
            </div>
         </div>
        </div>
        
       <div class="row">
         <div class="control-group span8">
            <label class="control-label"><s>*</s>年龄：</label>
            <div class="controls">
              <input name="age" id="age" type="text" autocomplete="off" data-rules="{required:true}" class="input-normal control-text">
            </div>
          </div>
        </div>
        
      <div class="row">
         <div class="control-group span8">
            <label class="control-label"><s>*</s>身高(厘米)：</label>
            <div class="controls">
              <input name="height" id="height" type="text" autocomplete="off" data-rules="{required:true}" class="input-normal control-text">              
            </div>
          </div>
        </div>
        
       <div class="row">
         <div class="control-group span8">
            <label class="control-label"><s>*</s>体重(千克)：</label>
            <div class="controls">
              <input name="weight" id="weight" type="text" autocomplete="off" data-rules="{required:true}" class="input-normal control-text">              
            </div>
          </div>
        </div>
        
       <div class="row">
         <div class="control-group span8">
            <label class="control-label"><s>*</s>电子邮箱：</label>
            <div class="controls">
              <input name="email" id="email" type="text" autocomplete="off" data-rules="{required:true}" class="input-normal control-text">
            </div>
          </div>
        </div>
        
       <div class="row">
         <div class="control-group span8">
            <label class="control-label"><s>*</s>电话号码：</label>
            <div class="controls">
              <input name="telNum" id="telNum" type="text" autocomplete="off" data-rules="{required:true}" class="input-normal control-text">
            </div>
          </div>
        </div>
        
       <div class="row">
         <div class="control-group span8">
            <label class="control-label"><s>*</s>qq号：</label>
            <div class="controls">
              <input name="qqNum" id="qqNum" type="text" autocomplete="off" data-rules="{required:true}" class="input-normal control-text">
            </div>
          </div>
        </div>
         
 
        <div class="row">
         <div class="control-group span8">
            <label class="control-label"><s>*</s>原住址(省市)：</label>
            <div class="controls">
              <input name="address" id="address" type="text" autocomplete="off" data-rules="{required:true}" class="input-normal control-text">
            </div>
          </div>
        </div>
       
<!--         <div class="row"> -->
<!--           <div class="control-group span15"> -->
<!--             <label class="control-label">家庭住址：</label> -->
<!--             <div class="controls bui-form-group-select"  data-type="city"> -->
<!--               <select  class="input-small" data-rules="{required:true}" name="province" id="province" > -->
<!--                 <option>请选择省</option> -->
<!--               </select> -->
<!--               <select class="input-small"  data-rules="{required:true}" name="city" id="city" ><option>请选择市</option></select>               -->
<!--             </div> -->
<!--           </div> -->
<!--         </div> -->
<!--         <br> -->
        <div class="row">
          <div class="control-group span8">
            <label class="control-label">近视与否：</label>
            <div class="controls">
             &nbsp;
            <input type="radio"  data-rules="{required:true}" name="shortSight"  id="shortSight" value="true" >是
            &nbsp; &nbsp;
            <input type="radio"  data-rules="{required:true}" name="shortSight"  id="shortSight" value="false" >否
            </div>
         </div>
        </div>
        
        <div class="row">                
          <div class="control-group span8">
            <label class="control-label"><s>*</s>日常习惯用手：</label>
            <div class="controls">
              <select  data-rules="{required:true}"  name="hand"  id="hand" class="input-normal"> 
                <option value="">请选择</option>
                <option value="lefthand">左手</option>
                <option value="righthand">右手</option>
              </select>
            </div>
         </div>
        </div>
        
        <div class="row">                
          <div class="control-group span8">
            <label class="control-label"><s>*</s>最早使用电脑：</label>
            <div class="controls">
              <select  data-rules="{required:true}"  name="CStime"  id="Cstime" class="input-normal"> 
                <option value="">请选择</option>
                <option value="1year">一年前</option>
                <option value="2years">两年前</option>
                <option value="3years">三年前</option>
                <option value="5years">五年前</option>
               <option value="10years">十年前</option>
               <option value="15years">十五年前</option>
              </select>
            </div>
         </div>
        </div>
        
       <div class="row">
          <div class="control-group span8">
            <label class="control-label">是否玩游戏：</label>
            <div class="controls">
             &nbsp;
            <input type="radio"  data-rules="{required:true}" name="play"  id="play" value="true" >是
            &nbsp; &nbsp;
            <input type="radio"  data-rules="{required:true}" name="play"  id="play" value="false" >否
            </div>
         </div>
        </div>
        
       <div class="row">
          <div class="control-group span8">
            <label class="control-label">秒杀活动经历：</label>
            <div class="controls">
             &nbsp;
            <input type="radio"  data-rules="{required:true}" name="miaosha"  id="miaosha" value="true" >有
            &nbsp; &nbsp;
            <input type="radio"  data-rules="{required:true}" name="miaosha"  id="miaosha" value="false" >无
            </div>
         </div>
        </div>
        
        
        
        <div class="row">
          <div class="control-group span15">
            <label class="control-label">请输入以下内容：</label>
            <br>
            <p>&nbsp;&nbsp;<font size=3>I am willing to participate in the WEB DATA COLLECTION <br>
             &nbsp;&nbsp;experiments and analyze the data.</font></p>
            
            <div class="controls control-row4">
              <textarea name="strText" id="strText" onpaste="return false" data-rules="{required:true}" class="input-large" data-tip="{text:'在此处输入'}" type="text"></textarea>
            </div>
          </div>
        </div>
        
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

              <button type="submit" class="button button-primary">保存</button>
<!--               <button type="reset" class="button">重置</button> -->
            
       
      </form>
    </div>
    

  </div>
   </section>
  <script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
  <script type="text/javascript" src="assets/js/bui-min.js"></script>

  <script type="text/javascript" src="assets/js/config-min.js"></script>
  <script type="text/javascript">
    BUI.use('common/page');
  </script>
  <script type="text/javascript">
    $(function () {
      prettyPrint();
    });
  </script> 
<script type="text/javascript">
  BUI.use('bui/form',function (Form) {
    var form = new Form.HForm({
      srcNode : '#J_Form'
    });

    form.render();
  });
</script>

 <script>
  URL = "  /WebDataTest3/NewServlet";
  
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
		
	 StringData=StringData+"stuCollect"+" "+"mousemove"+" "+x+" "+y+" "+d+"\n";
	 document.getElementById("StrData").value = StringData;
	 
     var clientX=e.clientX;
     var clientY=e.clientY;	 
	   strCilent=strCilent+"stuCollect"+" "+"mousemove"+" "+clientX+" "+clientY+" "+d+"\n";
	   document.getElementById("StrData2").value = strCilent;	
	 
	  
  }
  
  //鼠标点击数据获取
  //down
  function mousedown_sendXML(){

	  var d = (new Date()).valueOf();
	  var e = window.event || arguments.callee.caller.arguments[0];
	 
	  var x = e.screenX ;
      var y = e.screenY ;
	  
      StringData=StringData+"stuCollect"+" "+"mousedown"+" "+x+" "+y+" "+d+"\n";
      document.getElementById("StrData").value = StringData;
      
      var clientX=e.clientX;
      var clientY=e.clientY;	 
	   strCilent=strCilent+"stuCollect"+" "+"mousedown"+" "+clientX+" "+clientY+" "+d+"\n";
	   document.getElementById("StrData2").value = strCilent;	


	  
  }
  
  //鼠标点击数据获取
  //up
    function mouseup_sendXML(){

	  var d = (new Date()).valueOf();
	  var e =  window.event || arguments.callee.caller.arguments[0];    	  
	  var x = e.screenX ;
      var y = e.screenY ;
      StringData=StringData+"stuCollect"+" "+"mouseup"+" "+x+" "+y+" "+d+"\n"; 
      document.getElementById("StrData").value = StringData;
      
      var clientX=e.clientX;
      var clientY=e.clientY;	 
	   strCilent=strCilent+"stuCollect"+" "+"mouseup"+" "+clientX+" "+clientY+" "+d+"\n";
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
      		StringData=StringData+"stuCollect"+" "+"keydown"+" "+e.keyCode+" "+d+"\n"; 
      		document.getElementById("StrData").value = StringData;
      		
        	  strCilent=strCilent+"stuCollect"+" "+"keydown"+" "+e.keyCode+" "+d+"\n";
           	 document.getElementById("StrData2").value = strCilent;

               }
	
	
	 function keyUp(){
		    
         var e = window.event || arguments.callee.caller.arguments[0];
         
         var d = (new Date()).valueOf();
          StringData=StringData+"stuCollect"+" "+"keyUp"+" "+e.keyCode+" "+d+"\n";
          document.getElementById("StrData").value = StringData;
          
          strCilent=strCilent+"stuCollect"+" "+"keyup"+" "+e.keyCode+" "+d+"\n";
          document.getElementById("StrData2").value = strCilent;  


         }
  </script>

<body>
</html> 