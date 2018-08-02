<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String consuleId=request.getParameter("consuleId");
String mark=request.getParameter("mark");
String reply_id=request.getParameter("reply_id");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户中心</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/header.css" type="text/css"></link>
  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/bootstrap-table.css" type="text/css"></link>
  <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
   <script type="text/javascript" src="js/jquery.pagination.js"></script>
  <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
  <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/bootstrap-table.js"></script>
 
  <style>
  .content{background:#F5F5F4;width:100%;height:600px;}
  .tab-content{height:500px;width:920px;background-color: #fff;min-height: 500px;    padding: 35px 30px;}
  .flex-column  li a {color:black;}
  ul li a:hover{color:#358bfc;}
  /* .message  li{position: relative;margin-top: 10px;padding: 25px 225px 25px 30px;background-color: #fff;min-height: 58px;_height: 58px;} */
  h5{font-weight:500;color: #333;}
  .message   span{margin-right:15px;color:#999;}
  .message   p{color:#999;}
  .message  a{position: absolute;right: 30px;top: 50%;color:#999;margin-top: -18px;display: inline-block;padding: 0 25px;height: 34px;line-height: 34px;border: 1px solid #ddd;border-radius: 18px;font-size: 14px;text-decoration:none;}
  .table{font-size:13px;color:#666;}
  .heise{color:#333;font-size:14px;font-weight:bold;}
  .table a:hover{color:red;}
  .table a{color:#358bfc;display: inline-block;padding: 0 25px;height: 34px;line-height: 34px;text-decoration:none;}
  .message  a:hover{ border-color: #358bfc; color: #fff; background-color: #358bfc;}
  .badge{ background-color: #777;float:right;margin-top:3px;}
  .nav-item  a:focus .badge{background-color: #fff;color:#007bff;}
  .my-lvban-box{background-color:#fff;width:1015px;height:500px;} 
  .my-lvban-box ul li{text-align:center;} 
  .nav-tabs{border:none;}
  .my-lvban-nav.nav-tabs>li{margin-bottom:0;}
   .my-lvban-nav.nav-tabs>li>a{font-size:18px;color:#333;margin:0;border:none;border-bottom:2px solid transparent;border-radius:0;padding:10px 20px;}/*border:none;重要，去掉tab边框 */
  .my-lvban-nav.nav-tabs>.active>a{color:#0049a7;background-color:#fff;border-bottom:3px solid #358bfc}
  .my-lvban-nav.nav-tabs>li>a:hover,.my-lvban-nav.nav-tabs>li>a:focus{color:#0049a7;border:none;border-bottom:3px solid #358bfc} 
  .form-x .form-group:after, .form-inline:after{clear:both;content:" ";display:block;height:0;overflow:hidden;visibility:hidden;}
  .form-x .form-group .label{float:left;width:15%;text-align:right;padding:7px 7px 7px 0;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;}
  .form-x .form-button { margin-left:10%;}
  .form-x .form-button{margin-left:15%;}
  .form-x .form-group .field {
    float: left;
    width: 85%;
}
.input{font-size:14px;padding:10px;border:solid 1px #ddd; width:100%;line-height:20px;display:block; border-radius:3px; -webkit-appearance:none;}
.w50 { width:25%; float:left;}
.button{border:solid 1px #ddd;width:120px;background:transparent;border-radius:4px;font-size:14px;padding:6px 15px;margin:0;display:inline-block;line-height:20px;transition:all 1s cubic-bezier(0.175, 0.885, 0.32, 1) 0s;}
.icon-check-square-o{background: #007bff;color:#fff;}
.lawyer-answer {
    position: relative;
    padding: 25px 30px 30px 20px;
    border-top: 1px solid #f5f5f5;
}
.lawyer-answer .answer-type{
    width: 64px;
    height: 24px;
    line-height: 24px;
    text-align: center;
    background-color: #ddd;
    color: #fff;
    
    }
    .lawyer-answer .rcontent{ 
    line-height: 24px!important;
    font-size: 14px!important;
    }

.lawyer-answer .answer-law-info {
   padding-left:60px;
    position: relative;
    line-height: 40px;
    color: #aaa;
    font-size:13px;
}
.mt10 {
    margin-top: 10px!important;
}
.mr10 {
    margin-right: 10px!important;
}
.mr30{margin-right: 30px!important;}
.s-caaa {
    color: #aaa;
}
.lawyer-answer .answer-law-info {
    position: relative;
    line-height: 40px;
    color: #aaa;
}
.s-cf52 {
    color: #f52f2f;
}
</style>
   <script>
    
      
     $(document).ready(function () {
     var consuleId="<%=consuleId%>";
     var mark="<%=mark%>";
     //个人咨询查看公开
         $.ajax({
				url:"${pageContext.request.contextPath }/consult/selectConsultById.do",
				type:"post",
				datatype:"json",
				data:{consuleId:consuleId,
				      mark:mark},
				success:function(data){
				var dataObj = eval("("+data+")");
				for(var i = 0; i<dataObj.length; i++){
				 var consult=dataObj[i];
				 console.info(consult);
				 var consuleId=consult.consuleId;
				 $("#publicConsult").append(" <li><h5>"+consult.description+"</h5><p>"+consult.description+"</p><div><span style='color:#464a4e;'>"+consult.time+"</span><span>"+consult.type+"</span><span>"+consult.status+"</span></div></li>");
				}
				}
				});
				$.ajax({
				url:"${pageContext.request.contextPath }/reply/replyInfo.do",
				type:"post",
				datatype:"json",
				data:{consuleId:consuleId},
				success:function(data){
				var dataObj = eval("("+data+")");
				for(var i = 0; i<dataObj.length; i++){
				 var reply=dataObj[i];
				 console.info(reply);
				 $(".lawyer-answer").append("<span class='answer-type mr10'>律师回复</span><span class='rcontent'>"+reply.content+"</span><div class='answer-law-info mt10'><a class='mr10'>"+reply.name+"律师</a><span class='mr30' style='color:#999;'>"+reply.time+"回复</span><span>律师电话:<em style='color:red'>"+reply.phone+"</em>（咨询请说明来源法律咨询平台）</span></div>");
				}
				}
				});
				
     var  reply_id="<%=reply_id%>";
     $.ajax({
		 url:"${pageContext.request.contextPath }/reply/changeMark.do",
		 type:"post",
		 datatype:"json",
		 data:{reply_id:reply_id},
		 success:function(data){
		}
		}); 
  });  
    
     
     </script>
  <body>
  <div>
  <%@include file="header.jsp" %>
  </div>
  <!-- header结束 -->
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
                        <li data-menu="blog"><a href="${pageContext.request.contextPath }/LawKnowledge.jsp">法律常识</a></li>
                        
                    </ul>
                </div>
  </div>
  <div class="content">
  
  <div class="container">
    <div class="row">
        <div class="col-md-2" style="background-color: #fff;margin-top:25px;">
        <ul class="nav nav-pills  flex-column" role="tablist" style="margin-top:15px;">
     <li class="nav-item ">
      <a class="nav-link  active"  href="userinfo.jsp">公开咨询</a>
    </li>
    <li class="nav-item ">
      <a class="nav-link" href="userinfo.jsp">一对一咨询</a>
    </li>
   <li class="nav-item">
      <a class="nav-link" href="userinfo.jsp">个人资料</a>
    </li>
    <li class="nav-item">
      <a class="nav-link"  href="userinfo.jsp" id="message">消息中心</a>
    </li>
  
  </ul>
        </div>
        <div class="col-md-10" style="background-color: #F5F5F4;">
        
         <div id="home" class="container tab-pane active"><br>
         <h3>咨询详情</h3>
          <div class="tab-content nav_content" >
         <ul id="publicConsult" class="message"></ul>
         <div class="lawyer-answer caina"></div> 
         </div>
         <div id="Pagination"></div>  
    </div>
    
          </div>
         </div>
     </div>
   </div>
  </div>
  </body>
</html>
