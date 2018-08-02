<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dbManagerLogin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <script type="text/javascript" src="<%=basePath%>jquery-easyui-1.5/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
			var info = $('#loginInfo').val();
			if(!(info==""||info==null)&&info!="success")
				alert(info);
		});
	</script>

 </head>
  
  <body>
  	<form action="${pageContext.request.contextPath }/dbManagerLoginController/login.do" method="post">
  		<label>URL:</label><input type="text" name="url" value="jdbc:mysql://localhost/law?characterEncoding=utf8">
	    <label>dirver:</label><input type="text" name="driver" value="com.mysql.jdbc.Driver">
	    <label>username:</label><input type="text" name="username" value="root">
	    <label>password:</label><input type="text" name="password" value="tong123..">
	    <input type="submit" value="提交">
  	</form>
    <input id="loginInfo" type="hidden" value="${ dbInfo.info}">
  </body>
</html>
