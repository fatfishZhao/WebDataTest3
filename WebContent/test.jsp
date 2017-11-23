<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
   <link rel="stylesheet" href="/WebDataTest3/CSS/lrtk.css">
   <link rel="stylesheet" type="text/css" href="/WebDataTest3/CSS/sweet-alert.css">
	<script src="/WebDataTest3/js/sweet-alert.min.js"></script> 
</head>
<body>
<button onclick="yes()">yes</button>
<button onclick="no()">no</button>
</body>
<script type="text/javascript">
function yes(){
	swal({    title: "已认证的用户", 
		text: "恭喜通过用户识别检测,认证可信度为XXX",  
		type: "success",  
		showCancelButton: false,   
		confirmButtonColor: "#DD6B55", 
		confirmButtonText: "现在登录", 
		closeOnConfirm: false,  
		closeOnCancel: false
		});
}

function no(){
	swal({    title: "有问题的用户", 
		text: "您没有通过用户识别检测，可能是机器登录",  
		type: "error",  
		showCancelButton: false,   
		confirmButtonColor: "#DD6B55", 
		confirmButtonText: "我再试试", 
		closeOnConfirm: false,  
		closeOnCancel: false
		});
}
</script>
</html>