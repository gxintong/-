<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>数据库管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  <link rel="stylesheet" href="<%=basePath %>jquery-easyui-1.5/themes/gray/easyui.css" type="text/css"></link>
  <link rel="stylesheet" href="<%=basePath %>css/dbManager.css" type="text/css"></link>
  <script type="text/javascript" src="<%=basePath %>jquery-easyui-1.5/jquery.min.js"></script>
  <script type="text/javascript" src="<%=basePath %>jquery-easyui-1.5/jquery.easyui.min.js"></script>
  
  <script type="text/javascript" src="<%=basePath %>jquery-easyui-1.5/plugins/jquery.menu.js"></script>
  <script type="text/javascript" src="<%=basePath %>jquery-easyui-1.5/plugins/jquery.linkbutton.js"></script>
  <script type="text/javascript" src="<%=basePath %>jquery-easyui-1.5/plugins/jquery.menubutton.js"></script>
  
  <script type="text/javascript" src="<%=basePath %>js/dbManager.js"></script>
  </head>
  <body>
  <div class="top"></div>
  <div id="buttonDiv">
	  <a id="add" href="javascript:void(0)" >添加</a>    
	  <a id="edit" href="javascript:void(0)" >修改</a>  
	  <a id="drop" href="javascript:void(0)" >删除</a>  
	  <a id="submit" href="javascript:void(0)" >执行</a>  
  </div>
  	<input id="searchText" type="text">
	 <ul class="easyui-datalist" title="table list" lines="true" style="width:20%;height:70%">
		<li value="AL">Alabama</li>
		<li value="AK">Alaska</li>
		<li value="AZ">Arizona</li>
		<li value="AR">Arkansas</li>
		<li value="CA">California</li>
		<li value="CO">Colorado</li>
		<li value="CT">Connecticut</li>
		<li value="DE">Delaware</li>
		<li value="FL">Florida</li>
		<li value="GA">Georgia</li>
		<li value="HI">Hawaii</li>
		<li value="ID">Idaho</li>
		<li value="IL">Illinois</li>
		<li value="IN">Indiana</li>
		<li value="IA">Iowa</li>
		<li value="KS">Kansas</li>
		<li value="KY">Kentucky</li>
		<li value="LA">Louisiana</li>
		<li value="ME">Maine</li>
		<li value="MD">Maryland</li>
		<li value="MA">Massachusetts</li>
		<li value="MI">Michigan</li>
		<li value="MN">Minnesota</li>
		<li value="MS">Mississippi</li>
		<li value="MO">Missouri</li>
		<li value="MT">Montana</li>
		<li value="NE">Nebraska</li>
		<li value="NV">Nevada</li>
		<li value="NH">New Hampshire</li>
		<li value="NJ">New Jersey</li>
		<li value="NM">New Mexico</li>
		<li value="NY">New York</li>
		<li value="NC">North Carolina</li>
		<li value="ND">North Dakota</li>
		<li value="OH">Ohio</li>
		<li value="OK">Oklahoma</li>
		<li value="OR">Oregon</li>
		<li value="PA">Pennsylvania</li>
		<li value="RI">Rhode Island</li>
		<li value="SC">South Carolina</li>
		<li value="SD">South Dakota</li>
		<li value="TN">Tennessee</li>
		<li value="TX">Texas</li>
		<li value="UT">Utah</li>
		<li value="VT">Vermont</li>
		<li value="VA">Virginia</li>
		<li value="WA">Washington</li>
		<li value="WV">West Virginia</li>
		<li value="WI">Wisconsin</li>
		<li value="WY">Wyoming</li>
	</ul>
     <textarea id="sqltext" class="sqltext"></textarea> 
     <div id="tab">
     	<div title="222">222</div>
     	<div title="aaaaaa">222</div>
     </div>
  </body>
</html>
