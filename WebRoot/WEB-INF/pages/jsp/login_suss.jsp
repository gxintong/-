<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="cn.com.dhcc.footPlatform.background.domain.UserInfo"%>
 <%
                UserInfo user =(UserInfo)request.getSession().getAttribute("userLogin");
                 String role_id="";
                 if(user!=null){
                 String password=user.getPassword();
                 String phone= user.getPhone();
                  role_id=user.getRoleId();
                  System.out.print(phone);
                  System.out.print(role_id);
                   if(role_id.equals("1000")){
                 response.sendRedirect("../admin.jsp");
                 }else{
                 response.sendRedirect("../main.jsp");
                 } 
                 }
               %> 
                  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'login_suss.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
         
  </body>
</html>
