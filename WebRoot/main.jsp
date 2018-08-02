<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="cn.com.dhcc.footPlatform.background.domain.UserInfo"%>
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
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css" type="text/css"></link>
    <link rel="stylesheet" href="css/header.css" type="text/css"></link>
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="plug_in_unit/Bootstrap/js/distpicker.data.js"></script>
    <script type="text/javascript" src="plug_in_unit/Bootstrap/js/distpicker.js"></script>
   <script type="text/javascript" src="plug_in_unit/Bootstrap/js/main.js"></script>
 </head>
  <style>
   .page-head .pull-right{height:60px; padding:15px 0;border-bottom:1px solid #d9d9d9;}
  .index-sec-first{height:452px;background:url(images/banner.png) no-repeat center center;background-size:cover;}
   #mynav{position:relative;top:70px; width:610px; margin:0 auto;}
  .index-sec-first #mynav .nav-tabs>li{text-align:center;width:190px;}
  .index-sec-first .tab-content{width:570px;height:300px;}
  .index-sec-first .tab-content>.tab-pane{padding:0 30px;}
  .index-sec-first .nav-tabs>li>a{background-color:	#0049a7;font-weight:bold;font-size:15px;color:#fff;margin:0;border:none;border-radius:0;padding:15px;}
  .index-sec-first .nav-tabs>li>a:hover,.index-sec-first .nav-tabs>li>a:focus{border:none;}
  .index-sec-first .nav-tabs>li.active>a{color:#0049a7;background-color:#fff;}
  .index-sec-first .radio-line select{width:100%;}
  .index-sec-first  .radio-line select{width:160px;display:inline-block;margin:10px 0px;}
  .bttn{background-color:	#0049a7;color:#fff;}
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
      <a class="nav-link active" data-toggle="tab" href="#home">在线法律咨询</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu1">自选律师咨询</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu2">企业法律顾问</a>
    </li>
  </ul>
    <!-- Tab panes -->
  <div class="tab-content bg-white text-dark" >
    <div id="home" class="container tab-pane active"><br>
    <form  id="myform" action="${pageContext.request.contextPath }/consult/add.do" method="post">
      <p>请详细描述你的法律问题，至少20个字，以便得到律师专业的意见！</p>
      <input type="text" value="1" name="mark" hidden="true">
      <textarea rows="5" class="form-control" name="content"></textarea>
      <div class="radio-line">
         <select class="form-control" name="type">
           <option value="">请选择问题类型</option>
            <!--<option value="0">不限</option> -->
           <option value="买卖合同">买卖合同</option>
           <option value="水电气合同">水电气合同</option>
           <option value="欠款纠纷">欠款纠纷</option>
           <option value="居间与代理">居间与代理</option>
           <option value="质量纠纷">质量纠纷</option>
           <option value="其他合同纠纷">其他合同纠纷</option>
           <option value="婚姻家庭">婚姻家庭</option>
           <option value="邻里纠纷">邻里纠纷</option>
           <option value="人身损害与名誉权">人身损害与名誉权</option>
           <option value="民间借款与赠与">民间借款与赠与</option>
           <option value="交通事故">交通事故</option>
           <option value="交通事故">商标与著作权</option>
           <option value="专利与商业秘密">专利与商业秘密</option>
           <option value="其他知识产权">其他知识产权</option>
           <option value="银行">银行</option>
           <option value="证券基金与期货">证券基金与期货</option>
           <option value="公司上市与投融资">公司上市与投融资</option>
           <option value="公司股权结构">公司股权结构</option>
           <option value="投资与并购">投资与并购</option>
           <option value="公司解散、破产清算与不良资产处置">公司解散、破产清算与不良资产处置</option>
           <option value="劳动人事与社保">劳动人事与社保</option>
           <option value="职业病与工伤">职业病与工伤</option>
           <option value="保险">保险</option>
           <option value="房地产与建设工程">房地产与建设工程</option>
           <option value="招投标">招投标</option>
           <option value="税务">税务</option>
           <option value="信息网络与电子商务">信息网络与电子商务</option>
           <option value="消费者权益保护">消费者权益保护</option>
           <option value="医疗纠纷">医疗纠纷</option>
           <option value="食品与药品安全">食品与药品安全</option>
          </select> 
         <div class="distpicker5"  style="display:inline">
								  <select class="form-control" id="province" name="province"></select>
								  <select class="form-control" id="city"  name="city"></select>
							  </div>
         
         </div>
         <button type="submit" class="btn btn-block btn-lg bttn" >咨询</button>
    </form>
    </div>
    <div id="menu1" class="container tab-pane fade"><br>
      <form  id="lawform" action="${pageContext.request.contextPath }/consult/add.do" method="post">
      <input type="text" value="2" name="mark" hidden="true">
       <label style="font-size:14px;">律师账号：</label><input name="lawyer_id" id="lawyer_id" />
      <p>请详细描述你的法律问题，至少20个字，以便得到律师专业的意见！</p>
      <textarea rows="5" class="form-control" name="content"></textarea>
      <div class="radio-line">
         <select class="form-control" name="type">
           <option value="">请选择问题类型</option>
            <!--<option value="0">不限</option> -->
           <option value="买卖合同">买卖合同</option>
           <option value="水电气合同">水电气合同</option>
           <option value="欠款纠纷">欠款纠纷</option>
           <option value="居间与代理">居间与代理</option>
           <option value="质量纠纷">质量纠纷</option>
           <option value="其他合同纠纷">其他合同纠纷</option>
           <option value="婚姻家庭">婚姻家庭</option>
           <option value="邻里纠纷">邻里纠纷</option>
           <option value="人身损害与名誉权">人身损害与名誉权</option>
           <option value="民间借款与赠与">民间借款与赠与</option>
           <option value="交通事故">交通事故</option>
           <option value="交通事故">商标与著作权</option>
           <option value="专利与商业秘密">专利与商业秘密</option>
           <option value="其他知识产权">其他知识产权</option>
           <option value="银行">银行</option>
           <option value="证券基金与期货">证券基金与期货</option>
           <option value="公司上市与投融资">公司上市与投融资</option>
           <option value="公司股权结构">公司股权结构</option>
           <option value="投资与并购">投资与并购</option>
           <option value="公司解散、破产清算与不良资产处置">公司解散、破产清算与不良资产处置</option>
           <option value="劳动人事与社保">劳动人事与社保</option>
           <option value="职业病与工伤">职业病与工伤</option>
           <option value="保险">保险</option>
           <option value="房地产与建设工程">房地产与建设工程</option>
           <option value="招投标">招投标</option>
           <option value="税务">税务</option>
           <option value="信息网络与电子商务">信息网络与电子商务</option>
           <option value="消费者权益保护">消费者权益保护</option>
           <option value="医疗纠纷">医疗纠纷</option>
           <option value="食品与药品安全">食品与药品安全</option>
          </select> 
         <div class="distpicker5" style="display:inline">
								  <select class="form-control" id="province1" name="province"></select>
								  <select class="form-control" id="city1"  name="city"></select>
							  </div>
         
         </div>
         <button type="submit" class="btn btn-block btn-lg bttn" >咨询</button>
    </form>
    </div>
    <div id="menu2" class="container tab-pane fade"><br>
       <form  id="enterprise" action="${pageContext.request.contextPath }/consult/add.do" method="post">
      <input type="text" value="3" name="mark" hidden="true">
      <p>请详细描述你的法律问题，至少20个字，以便得到律师专业的意见！</p>
      <textarea rows="5" class="form-control" name="content"></textarea>
      <div class="radio-line">
         <select class="form-control" name="type">
           <option value="">请选择问题类型</option>
            <!--<option value="0">不限</option> -->
           <option value="买卖合同">买卖合同</option>
           <option value="水电气合同">水电气合同</option>
           <option value="欠款纠纷">欠款纠纷</option>
           <option value="居间与代理">居间与代理</option>
           <option value="质量纠纷">质量纠纷</option>
           <option value="其他合同纠纷">其他合同纠纷</option>
           <option value="婚姻家庭">婚姻家庭</option>
           <option value="邻里纠纷">邻里纠纷</option>
           <option value="人身损害与名誉权">人身损害与名誉权</option>
           <option value="民间借款与赠与">民间借款与赠与</option>
           <option value="交通事故">交通事故</option>
           <option value="交通事故">商标与著作权</option>
           <option value="专利与商业秘密">专利与商业秘密</option>
           <option value="其他知识产权">其他知识产权</option>
           <option value="银行">银行</option>
           <option value="证券基金与期货">证券基金与期货</option>
           <option value="公司上市与投融资">公司上市与投融资</option>
           <option value="公司股权结构">公司股权结构</option>
           <option value="投资与并购">投资与并购</option>
           <option value="公司解散、破产清算与不良资产处置">公司解散、破产清算与不良资产处置</option>
           <option value="劳动人事与社保">劳动人事与社保</option>
           <option value="职业病与工伤">职业病与工伤</option>
           <option value="保险">保险</option>
           <option value="房地产与建设工程">房地产与建设工程</option>
           <option value="招投标">招投标</option>
           <option value="税务">税务</option>
           <option value="信息网络与电子商务">信息网络与电子商务</option>
           <option value="消费者权益保护">消费者权益保护</option>
           <option value="医疗纠纷">医疗纠纷</option>
           <option value="食品与药品安全">食品与药品安全</option>
          </select> 
         <div class="distpicker5"  style="display:inline">
								  <select class="form-control" id="province2" name="province"></select>
								  <select class="form-control" id="city2"  name="city"></select>
							  </div>
         
         </div>
         <button type="submit" class="btn btn-block btn-lg bttn" >咨询</button>
    </form>
    </div>
  </div>
    </div> 
   
  
  </div>
  </div>
 </div>

</body>
</html>
