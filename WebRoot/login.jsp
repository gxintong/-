<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
	<meta http-equiv="pragma" content="no-cache">
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css" type="text/css"></link>
    <link rel="stylesheet" href="css/header.css" type="text/css"></link>
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
  </head>
  <style>
   .page-head .pull-right{height:60px; padding:15px 0;border-bottom:1px solid #d9d9d9;}
  .index-sec-first{height:452px;background:url(images/banner.png) no-repeat center center;background-size:cover;}
   #mynav{position:relative;top:70px; width:410px;margin-right:0;}
  .index-sec-first #mynav .nav-tabs>li{text-align:center;width:190px;}
  .index-sec-first .tab-content{width:380px;height:300px;}
  .index-sec-first .tab-content>.tab-pane{padding:0 30px;}
  .index-sec-first .nav-tabs>li>a{background-color:	#0049a7;font-weight:bold;font-size:15px;color:#fff;margin:0;border:none;border-radius:0;padding:15px;}
  .index-sec-first .nav-tabs>li>a:hover,.index-sec-first .nav-tabs>li>a:focus{border:none;}
  .index-sec-first .nav-tabs>li.active>a{color:#0049a7;background-color:#fff;}
  .index-sec-first .radio-line select{width:100%;}
  .index-sec-first  .radio-line select{width:160px;display:inline-block;margin:10px 0px;}
  .bttn{background-color:#0049a7;color:#fff;}
  </style>
  <body>
     <div>
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
                        <li data-menu="task"><a href="${pageContext.request.contextPath }/case.jsp">成功案例</a></li>
                        <li data-menu="blog"><a href="${pageContext.request.contextPath }/LawKnowledge.jsp">法律常识</a></li>
                    </ul>
                </div>
  </div>
  <div class="index-content">
  <div class="index-sec-first">
  
  <div class="container text-white" id="mynav" >
    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist" id="mytab">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#home">用户登录</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu1">律师登录</a>
    </li>
  </ul>
    <!-- Tab panes -->
  <div class="tab-content bg-white text-dark" >
    <div id="home" class="container tab-pane active"><br>
   
      <form action="${pageContext.request.contextPath }/user/login.do" method="post">
             <div class="form-group form-inline">
               <label for="phone" >手机号码:</label>
              <input type="text" class="form-control" id="phone" name="phone" placeholder="请输入您的手机号码">
              </div>
            <div class="form-group  form-inline">
             <label for="pwd">密码:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="password" class="form-control" id="password"   name="password" placeholder="请输入密码">
              </div>
                 <button type="submit" class="btn btn-block btn-lg bttn">登录</button>
        </form>
    </div>
    <div id="menu1" class="container tab-pane fade"><br>
      <form action="${pageContext.request.contextPath }/user/lawyerlogin.do" method="post">
             <div class="form-group form-inline">
               <label for="phone" >手机号码:</label>
              <input type="text" class="form-control" id="phone1" name="phone" placeholder="请输入您的手机号码">
              </div>
            <div class="form-group  form-inline">
             <label for="pwd">密码:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="password" class="form-control" id="password1"   name="password" placeholder="请输入密码">
              </div>
          <button type="submit" class="btn btn-block btn-lg bttn" >登录</button>
        </form>
       
    </div>
  </div>
    </div> 
   
  
  </div>
  </div>
 </div>
     
    <%
                 String error = (String)session.getAttribute("error");
                 if(error!=null){
                    out.write(error);
                 }
               %> 
     
     
     
  </body>
</html>
