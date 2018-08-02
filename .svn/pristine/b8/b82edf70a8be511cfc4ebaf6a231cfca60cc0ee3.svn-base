<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'changePass.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <script type="text/javascript" src="<%=basePath%>plug_in_unit/other/jquery-1.12.3.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/changePass.js"></script>
  </head>
  
  <body>
      <form action="${pageContext.request.contextPath}/user/changePass.do" method="post">
        <table>
           <tr>
              <td>请输入新密码:</td>
              <td><input type="password" name="password"></td>
           </tr>
           <tr>
              <td>请再次输入密码:</td>
              <td><input type="password" name="conPassword"></td>
           </tr>
           <tr>
               <td></td>
               <td align="right"><input type="submit" value="修改" onclick="return ifSame()"></td> 
           </tr>
        </table>      
       
      </form>
  </body>
</html>
