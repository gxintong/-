<%@ page language="java" import="java.util.*" pageEncoding="Utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String eid=request.getParameter("eid");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'caseDetail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css" type="text/css"></link>
    <link rel="stylesheet" href="css/header.css" type="text/css"></link>
    <link rel="stylesheet" href="css/caseDetail.css" type="text/css"></link>
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
  </head>
      <script>
       function  caseInfo() {
         var eid="<%=eid%>";
             $.ajax({
                type: "POST",
                url: "lawexample/caseDetail.do",
                cache: false,
                data:{eid:eid},
                dataType:"json",
                success: function(data) {
                console.info(data);
                    $("h2").append(data.etitile);
                    $("#lawyer").append(data.lawyerId);
                    $("#time").append(data.time);
                    $("#type").append(data.type);
                     $("#caseDes").append(data.caseDes);
                    $("#process").append(data.process);
                    $("#result").append(data.result);
                },
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                    
                }
            });
       }
     $(document).ready(function () { 
          //调用函数，初始化表格  
          caseInfo();
          
      });
    
    </script>
  <body>
  <%@include file="header.jsp" %>
   <div class="page-head">
   <div class="pull-left" >
   <a href="#"><span><img src="images/logo.png" style="width:250px;height:115px"></img></span></a>
   </div>
  <div class="pull-right" style="width:500px;">
                    <ul style="margin-right:30px;">
                        <li data-menu="index"><a href="main.jsp">首页</a></li>
                        <li data-menu="lawyersearch"><a href="${pageContext.request.contextPath }/lawyerSearch.jsp">找律师</a></li>
                        <li data-menu="zx"><a href="${pageContext.request.contextPath }/lawconsult.jsp">法律咨询</a></li>
                        <li data-menu="task" class="active"><a href="${pageContext.request.contextPath }/case.jsp">成功案例</a></li>
                        <li data-menu="blog"><a href="${pageContext.request.contextPath }/LawKnowledge.jsp">法律常识</a></li>
                    </ul>
                </div>
  </div>
   <div class="w990 ma bor-k g-mn mt30">
        <div class="c-d-tit pr">      
            <h2 class="tc"></h2>
            <p class="s-c999 tc mt20"><span id="lawyer">发布者：</span><em>|</em><span id="time">时间：</span><em>|</em><span id="type"></span></p>
        </div>
        <div class="case-detail f14 lh28">
    <p><strong>案件描述</strong></p><p id="caseDes"></p>
    <p><strong>承办过程</strong></p><p id="process"></p>
    <p><strong>审理结果：</strong></p><p id="result"></p>
        </div>
    </div>

  </body>
</html>
