<%@ page language="java" import="java.util.*" pageEncoding="Utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String articalId=request.getParameter("articalId");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'knowledgeDetail.jsp' starting page</title>
    
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
         var articalId="<%=articalId%>";
             $.ajax({
                type: "POST",
                url: "lawknowledge/selectLawknowledge.do",
                cache: false,
                data:{articalId:articalId},
                dataType:"json",
                success: function(data) {
                console.info(data);
                    //console.info(data[0].content);
                    $(".case-detail").append(data[0].content);
                     $("#time").append(data[0].time);
                    $("#type").append(data[0].type);
                    $("#lawyer").append(data[0].lawyerId);
                    $("h2").append(data[0].title);
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
                        <li data-menu="task"><a href="${pageContext.request.contextPath }/case.jsp">成功案例</a></li>
                        <li data-menu="blog" class="active"><a href="${pageContext.request.contextPath }/LawKnowledge.jsp">法律常识</a></li>
                    </ul>
                </div>
  </div>
   <div class="w990 ma bor-k g-mn mt30">
        <div class="c-d-tit pr">      
            <h2 class="tc"></h2>
            <p class="s-c999 tc mt20"><span id="lawyer">发布者：</span><em>|</em><span id="time">时间：</span><em>|</em><span id="type"></span></p>
        </div>
        <div class="case-detail f14 lh28">
        </div>
    </div>

  </body>
</html>
