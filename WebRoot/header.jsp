<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@page import="cn.com.dhcc.footPlatform.background.domain.UserInfo"%>

<style>
*{margin:0;padding:0;}
 a{text-decoration:none;color:#fff;font-family:"Helvetica Neue",Helvetica,Arial,sans-serif;}
 a:hover{text-decoration: underline;color:#fff;}
 .page-top{height:30px;line-height:30px;font-size:11px;background-color:#333;color:#fff;}
 .section{width:100%;min-width:1200px;}
 .section-box{margin:0 auto;width:1210px;height:30px;overflow:visible;}
</style>
 
  <div class="page-top">
   <div class="section-box">
    <div class="pull-left">
   <span style="padding-left:5px;">法律咨询平台</span>
   </div>
  <div class="pull-right" id="login_box">
  <ul>
   <li><a href="main.jsp">首页</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
 <%
 UserInfo user =(UserInfo)request.getSession().getAttribute("userLogin");
   //if(user!=null)
   //out.print(user.getPhone().toString());
    %>
      <%
    if(user!=null){
    
     %>
                       <li><a>${sessionScope.userLogin.phone}用户</a>&nbsp;&nbsp;|
                        </li>
                        <li>&nbsp;&nbsp;<a href="${pageContext.request.contextPath }/userinfo.jsp">个人中心 </a>&nbsp;&nbsp;|</li>
                        <li>&nbsp;&nbsp;<a href="${pageContext.request.contextPath }/user/logout.do">注销</a>&nbsp;&nbsp;|
                        </li>
  <%
     
     }else{
      %>
                <li><a href="login.jsp" id="login_cur_name">用户登录</a>&nbsp;&nbsp;|</li>
                <li>&nbsp;&nbsp;<a href="${pageContext.request.contextPath }/regist.jsp">免费注册</a>&nbsp;&nbsp;|</li>
                       
  <%
     }
      %>
  <% 
Date dt=new Date();
SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日");
String today=sdf.format(dt);

 %>
  
  <li>&nbsp;&nbsp;<a><%=today%></a></li>
  </ul>
  </div>
  </div>
   </div>
 