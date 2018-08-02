<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>法律咨询平台</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css" type="text/css"></link>
     <link rel="stylesheet" href="css/header.css" type="text/css"></link>
    <link rel="stylesheet" href="css/regist.css" type="text/css"></link>
    <script type="text/javascript" src="plug_in_unit/Bootstrap/js/jquery-1.11.0.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="plug_in_unit/other/jquery.validate.min.js"></script></head>
    <script type="text/javascript" src="plug_in_unit/other/messages_zh.min.js"></script>
    <script type="text/javascript" src="js/validate.js"></script>
    <script type="text/javascript" src="plug_in_unit/Bootstrap/js/distpicker.data.js"></script>
    <script type="text/javascript" src="plug_in_unit/Bootstrap/js/distpicker.js"></script>
   <script type="text/javascript" src="plug_in_unit/Bootstrap/js/main.js"></script>
 
 <script type="text/javascript">
 </script>
 <style>
 .error{color:red;}
 .my-lvban-con .lawyer-form select{width:100%;}
 .my-lvban-con .lawyer-form select{width:160px;display:inline-block;margin:10px 0px;} 
 
</style>
  <body>
   <%@include file="header.jsp" %>
    <div class="page-head">
   <div class="pull-left" >
   <a href="#"><span><img src="images/logo.png" style="width:250px;height:115px"></img></span></a>
   </div>
  <div class="pull-right" style="width:500px;">
                    <ul style="margin-right:30px;">
                        <li class="active" data-menu="index"><a href="main.jsp">首页</a></li>
                        <li data-menu="lawyersearch"><a href="${pageContext.request.contextPath }/lawyerSearch.jsp">找律师</a></li>
                        <li data-menu="zx"><a href="${pageContext.request.contextPath }/lawconsult.jsp">法律咨询</a></li>
                        <li data-menu="task"><a href="#">成功案例</a></li>
                        <li data-menu="blog"><a href="${pageContext.request.contextPath }/LawKnowledge.jsp">法律常识</a></li>
                    </ul>
                </div>
  </div>
     <div class="my-lvban-con">
				<div class="section-box registcontent"  style="width: 1025px;height:500px">
					<div class="my-lvban-box">
	                <ul class="nav nav-tabs my-lvban-nav" >
                      <li class="nav-item active" >
                        <a class="nav-link" data-toggle="tab" href="#home">个人用户注册</a>
                        </li>
                    <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#menu1">律师用户注册</a>
                    </li>
                    </ul>
                    <div class="tab-content">
                           <div id="home" class="container tab-pane active"><br>
                           <div class="join_form">
							 <form class="user-form" action="${pageContext.request.contextPath }/user/regist.do" method="post">
								
								<input type="hidden" name="role" value="0">
								<div class="form-group form-inline">
                                <label for="phone" >手机号码:</label>
                                <input type="text" class="form-control" id="phone" name="phone" placeholder="请输入您的手机号码">
                                </div>
                               <div class="form-group  form-inline">
                               <label for="pwd">密码:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <input type="password" class="form-control" id="password"   name="password" placeholder="请输入密码">
                               </div>
                               <div class="form-group  form-inline">
                               <label for="pwd">确认密码:</label>
                               <input type="password" class="form-control" id="confirm_password" name="confirm_password" required placeholder="请再次输入密码">
                               </div>
                               <button type="submit" class="btn">注册</button>
			                  </form>
				            </div>
                        </div>
                        
                        <div id="menu1" class="container tab-pane fade"><br>
                              <div class="join_form">
                              <form class="lawyer-form" action="${pageContext.request.contextPath }/user/lawregist.do" method="post"> 
                              <div class="pull-left">
				               <input type="hidden" name="role" value="1">
				               <div class="form-group form-inline">
                                <label for="phone">手机号码:</label>
                               <input type="text" class="form-control" id="phone2" name="phone" placeholder="请输入您的手机号码">
                              </div>
                              <div class="form-group form-inline">
                                <label for="user_name">真实姓名:</label>
                               <input type="text" class="form-control" id="user_name" name="user_name" placeholder="请输入您的真实姓名">
                              </div>
                               <div class="form-group form-inline">
                                 <label for="pwd">密码:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <input type="password" class="form-control" id="password2" name="password" placeholder="请输入密码">
                               </div>
                                <div class="form-group form-inline">
                              <label for="pwd">确认密码:</label>
                              <input type="password" class="form-control" id="confirm_password2" name="confirm_password" placeholder="请再次输入密码">
                             </div>
                             <div class="form-group form-inline">
                              <label for="license">执业证号:</label>
                              <input type="text" class="form-control" id="license" name="license" placeholder="请输入执业证号">
                              </div>
                             
                              </div>
                              <div class="pull-right" >
                               <div class="form-group form-inline">
                              <label for="firm">执业律所:</label>
                              <input type="text" class="form-control" id="firm" name="firm" placeholder="请输入执业律所">
                               </div> 
                              <div data-toggle="distpicker" class="form-group form-inline">
                                <label for="address">所在地址:</label>
								<div class="form-group form-inline">
								  <select class="form-control" id="province" name="province"></select>
								</div>
								<div class="form-group form-inline">
								  <select class="form-control" id="city"  name="city"></select>
								</div>
							  </div>
                              
                               </div>
                                  <button type="submit" class="btn" >注册</button>
			              </form>
                            </div>
		                 </div>
		                 </div>
                    </div>
		        </div>
	 </div>
  </body>
</html>
