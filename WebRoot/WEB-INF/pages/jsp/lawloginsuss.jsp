<%@page import="cn.com.dhcc.footPlatform.background.domain.LawyerInfo"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

                LawyerInfo user =(LawyerInfo)request.getSession().getAttribute("lawyerLogin");
                 String role_id="";
                 if(user!=null){
                 String password=user.getPassword();
                 String phone= user.getPhone();
                  role_id=user.getRoleId();
                  System.out.print(phone);
                  System.out.print(role_id);
                   if(role_id.equals("1002")){
                 response.sendRedirect("../lawinfo.jsp");
                 }else{
                 response.sendRedirect("../error.jsp");
                 } 
                 }
               %> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'lawloginsuss.jsp' starting page</title>
    
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
    This is my JSP page. <br>
  </body>
</html>
