<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
  .tab-content{height:500px;}
  .flex-column  li a {color:black;}
  ul li a:hover{color:#358bfc;}
 
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
 .message  li{position: relative;margin-top: 10px;padding: 25px 225px 25px 30px;background-color: #fff;min-height: 58px;_height: 58px;}
  h5{font-weight:500;color: #333;}
 
  .message   p{color:#999;}
  .message  a{position: absolute;right: 30px;top: 50%;color:#999;margin-top: -18px;display: inline-block;padding: 0 25px;height: 34px;line-height: 34px;border: 1px solid #ddd;border-radius: 18px;font-size: 14px;text-decoration:none;}
</style>
   <script>
    
      
     $(document).ready(function () {
     //个人咨询查看公开
         $.ajax({
				url:"${pageContext.request.contextPath }/consult/selectConsultById.do?mark=1",
				type:"post",
				datatype:"json",
				success:function(data){
				var dataObj = eval("("+data+")");
				for(var i = 0; i<dataObj.length; i++){
				 var consult=dataObj[i];
				 //console.info(consult);
				// console.info(consult.consuleId);
				var consuleId=consult.consuleId;
				 $("#publicConsult").append(" <li><h5>"+consult.description+"</h5><p>"+consult.description+"</p><div><span>"+consult.time+"</span><span>"+consult.type+"</span><span>"+consult.status+"</span></div><a href='consultDetail.jsp?consuleId="+consuleId+"&mark=1'>查看详情</a></li>");
				}
				}
				});
				//个人咨询一对一
				 $.ajax({
				url:"${pageContext.request.contextPath }/consult/selectConsultById.do?mark=2",
				type:"post",
				datatype:"json",
				success:function(data){
				var dataObj = eval("("+data+")");
				for(var i = 0; i<dataObj.length; i++){
				 var consult=dataObj[i];
				 //console.info(consult);
				 var consuleId=consult.consuleId;
				 $("#privateConsult").append(" <li><h5>"+consult.description+"</h5><p>"+consult.description+"</p><div><span>"+consult.time+"</span><span>"+consult.type+"</span><span>"+consult.status+"</span></div><a href='consultDetail.jsp?consuleId="+consuleId+"&mark=2'>查看详情</a></li>");
				}
				}
				});  
           $.ajax({
				url:"${pageContext.request.contextPath }/reply/replyNum.do",
				type:"post",
				datatype:"json",
				success:function(data){
				//console.info(data);
				var num=data;
				if(num>0){
				$("#message").append("<span>"+num+"</span>");
				$("#unread").append("<span>"+num+"</span>");
				$("#unread span").addClass("badge badge-danger");
				$("#message span").addClass("badge");
				}
				}
				});
            replyTable();//消息中心

      });
      function replyTable() {
      $.ajax({
				url:"${pageContext.request.contextPath }/reply/replyInfo.do",
				type:"post",
				datatype:"json",
				success:function(data){
				var dataObj = eval("("+data+")");
				for(var i = 0; i<dataObj.length; i++){
				 var reply=dataObj[i];
				  console.info(reply);
				 if(reply.mark=='0'){
				
				 $("#unreadTable").append(" <tr><td>"+"咨询回复"+"</td><td>"+reply.name+"律师回复了您的问题</td><td>"+reply.time+"</td><td><a href='consultDetail.jsp?consuleId="+reply.consultId+"&reply_id="+reply.replyId+"'>查看详情</a></td>");
				 $("#replyTable").append(" <tr style='color:#333;font-size:14px;font-weight:bold;'><td>"+"咨询回复"+"</td><td>"+reply.name+"律师回复了您的问题</td><td>"+reply.time+"</td><td><a href='consultDetail.jsp?consuleId="+reply.consultId+"&mark="+reply.cmark+"&reply_id="+reply.replyId+"'>查看详情</a></td></tr>");
				 
				 }else{
				  $("#replyTable").append(" <tr><td>"+"咨询回复"+"</td><td>"+reply.name+"律师回复了您的问题</td><td>"+reply.time+"</td><td><a href='consultDetail.jsp?consuleId="+reply.consultId+"&mark="+reply.cmark+"&reply_id="+reply.replyId+"'>查看详情</a></td></tr>");
				 }
				}
				}
				}); 
      }
       
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
      <a class="nav-link  active" data-toggle="pill" href="#home">公开咨询</a>
    </li>
    <li class="nav-item ">
      <a class="nav-link" data-toggle="pill" href="#menu1" >一对一咨询</a>
    </li>
   <li class="nav-item">
      <a class="nav-link" data-toggle="pill" href="#menu3">个人资料</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="pill" href="#menu4" id="message">消息中心</a>
    </li>
  
  </ul>
        </div>
        <div class="col-md-10" style="background-color: #F5F5F4;">
         <div class="tab-content nav_content" >
    
         <div id="home" class="container tab-pane active"><br>
         <h3>我的公开咨询</h3>
         <ul id="publicConsult" class="message"></ul>
         <div id="Pagination"></div>  
    
    </div>
    
    <div id="menu1" class="container tab-pane fade"><br>
      <h3>我的一对一咨询</h3>
         <ul id="privateConsult" class="message"></ul>
    </div>
    <div id="menu3" class="container tab-pane fade"><br>
      <div class="body-content">
    <form method="post" class="form-x" action="user/changePass.do">
      <div class="form-group">
        <div class="label">
          <label for="sitename">原始密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" id="mpass" name="password" size="50" placeholder="请输入原始密码" data-validate="required:请输入原始密码" />       
        </div>
      </div>      
      <div class="form-group">
        <div class="label">
          <label for="sitename">新密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" name="newpass" size="50" placeholder="请输入新密码" data-validate="required:请输入新密码,length#>=5:新密码不能小于5位" />         
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">确认新密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" name="renewpass" size="50" placeholder="请再次输入新密码" data-validate="required:请再次输入新密码,repeat#newpass:两次输入的密码不一致" />          
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>   
        </div>
      </div>      
    </form>
  </div>
    </div>
    <div id="menu4" class="container tab-pane fade"><br>
               <h3>消息中心</h3>
                           <div class="row">
									<div class="col-sm-12">
										<div class="my-lvban-box">
											 <ul class="nav nav-tabs my-lvban-nav"  role="tablist">
												<li class="nav-item active">
													<a class="nav-link" data-toggle="tab" href="#all">
														<i class="green icon-home bigger-110"></i>
														全部消息
													</a>
												</li>

												<li class="">
													<a class="nav-link" data-toggle="tab" href="#unreadtab" id="unread">
														未读消息
													</a>
												</li>

											</ul> 

							<div class="tab-content">
							
							<div id="all" class="tab-pane active">
							<div class="panel-body">
						   <table class="table"  id="replyTable"></table>
					       </div>
				          </div>

							<div id="unreadtab" class="tab-pane">
							<div class="panel-body">
						       <table class="table" id="unreadTable" ></table>
					      </div>
						 </div>
                        </div>
						</div>
					</div><!-- /span -->
					</div>
             </div>
          </div>
         </div>
     </div>
   </div>
  </div>
  </body>
</html>
