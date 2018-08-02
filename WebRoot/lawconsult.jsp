<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>法律咨询</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css" type="text/css"></link>
    <link rel="stylesheet" href="css/header.css" type="text/css"></link>
    <link href="https://cdn.bootcss.com/bootstrap-table/1.12.1/bootstrap-table.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-table/1.12.1/locale/bootstrap-table-zh-CN.min.js"></script>
  </head>
  <script type="text/javascript">          
   function initTable() {  
        //先销毁表格  
        $('#consultTable').bootstrapTable('destroy');  
        //初始化表格,动态从服务器加载数据  
        $("#consultTable").bootstrapTable({  
            method: "post",  //使用post请求到服务器获取数据  
            url: "${pageContext.request.contextPath }/consult/consultInfo.do", //获取数据的Servlet地址  
            //toolbar: '#toolbar',              //工具按钮用哪个容器
            striped: true,                      //是否显示行间隔色
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination: true,                   //是否显示分页（*）
            sortable: true,                     //是否启用排序
            sortOrder: "asc",                   //排序方式
            sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber: 1,                      //初始化加载第一页，默认第一页,并记录
            pageSize: 10,                     //每页的记录行数（*）
            pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
            search:false,
            height:600,                      //是否显示表格搜索
            showColumns: true,                  //是否显示所有的列（选择显示的列）
           // showRefresh: true,                  //是否显示刷新按钮
            minimumCountColumns: 2,             //最少允许的列数
            clickToSelect: true,                //是否启用点击选中行
            uniqueId: "consult_id",  //每一行的唯一标识，一般为主键列
            onLoadSuccess: function(){  //加载成功时执行  
            },  
            onLoadError: function(){  //加载失败时执行  
            }  
          });  
      }  
  
      $(document).ready(function () { 
          //调用函数，初始化表格  
          initTable();  
      });
  
  function loadTable(){
    	$.ajax({  
            type : 'post',  
            async:false, 
            url : 'consult/consultInfo.do',
            data:{
              type:$('#type').val(),
	          status:$('#status').val(),
	          mark:$('#mark').val()
            },
            dataType : 'json',  
            success : function(datas) {
            	$('#consultTable').bootstrapTable('load', datas);
            } 
        });   
        }
  </script>
  <style>
  .mynav{margin-top:50px;background:#fff;}
 .btn1{width:90px;height:35px;margin-left:5px;background:#0000AA;color:#fff;font-weight:bold; font-size:13px;border-radius:10px;}
 #search{width:100%;min-width:1200px;height:55px;background:#DCDCDC; padding-top:10px;padding-left:70px;margin-top:10px;}
.lb_wbox {
    margin: 0 auto;
    min-width: 1200px;
    width: 1240px;
    text-align: left;
}
.lb_inavbar {
    padding: 16px 0;
    height: 100px;
    overflow: hidden;
}.lb_inavbar .bar1 {
    display: inline-block;
    float: left;
    width: 740px;
    height: 90px;
    background-color: #f1f6fb;
}.lb_inavbar .bar2 {
    display: inline-block;
    float: right;
    width: 460px;
    height: 90px;
    background-color: #f1f6fb;
}
</style>

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
                        <li class="active" data-menu="zx"><a href="${pageContext.request.contextPath }/lawconsult.jsp">法律咨询</a></li>
                        <li data-menu="task"><a href="${pageContext.request.contextPath }/case.jsp">成功案例</a></li>
                        <li data-menu="blog"><a href="${pageContext.request.contextPath }/LawKnowledge.jsp">法律常识</a></li>
                    </ul>
                </div>
  </div>
  <!-- header结束 -->
   <div >
  <div class="lb_inavbar">
    <div class="lb_wbox">
        <div class="bar1">
            <a href="http://www.lvban365.com.cn/" target="_blank" rel="nofollow"><img src="images/navBar1.jpg" width="100%" height="100%" alt="" original="images/navBar1.jpg"></a>
        </div>
        <div class="bar2">
            <a href="http://www.lvban365.net/" target="_blank" rel="nofollow"><img src="images/navBar2.jpg" width="100%" height="100%" alt="" original="images/navBar2.jpg"></a>        </div>
        <div class="clear"></div>
    </div>
</div>
   
   
    </div> 
  <!-- 搜索 -->
  <div id="search">
             <form id="form1" method="post"  class="form-inline">
                       <em>咨询类别：</em>
                                <div class="regdiv">
                                     <select name="type" id="type" class="form-control">
                                        <option value="">不限</option>
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
                                        <option value="商标与著作权">商标与著作权</option>
                                        <option value="专利与商业秘密">专利与商业秘密</option>
                                        <option value="其他知识产权">其他知识产权</option>
                                        <option value="银行">银行</option>
                                        <option value="证券基金与期货">证券基金与期货</option>
                                        <option value="公司上市与投融资">公司上市与投融资</option>
                                        <option value="劳动人事与社保<">劳动人事与社保</option>
                                        <option value="保险">保险</option>
                                        <option value="税务">税务</option>
                                        <option value="电子商务">电子商务</option>
                                        <option value="消费者权益保护">消费者权益保护</option>
                                        <option value="不正当竞争">不正当竞争</option>
                                    </select>
                                </div>
                               <em> 咨询状态：</em><select name="status" id="status" class="form-control">
                                         <option value="">不限</option>
                                         <option value="1">已回复</option>
                                         <option value="0">未回复</option>
                                        </select>
                               <em> 咨询类型：</em><select name="mark" id="mark" class="form-control">
                                         <option value="">不限</option>
                                         <option value="1">公开咨询</option>
                                         <option value="2">一对一咨询</option>
                                        </select>
                                <input class="btn1"  type="button"  onclick="loadTable();" value="搜索">
                                <div class="clear"></div>
                            </form>
   </div>
 <!-- 搜索结束 -->
 <table class="table table-hover" id="consultTable"  
       data-pagination="true"  
       data-show-refresh="true"  
       data-show-toggle="true"  
       data-showColumns="true">  
       <thead>  
          <tr>            
              <th data-field="consuleId" >咨询号</th>
              <th data-field="type" >咨询类别</th>  
              <th data-field="mark" >咨询类型</th>                                             
              <th data-field="description" >标题</th>  
              <th data-field="content">回答</th>  
              <th data-field="status" >状态</th> 
              <th data-field="time" >时间 </th>
             <!--  <th class="col-xs-2" data-field="action" data-formatter="actionFormatter" data-events="actionEvents">Action</th>      -->
          </tr>  
       </thead>  
       <tbody>  
       </tbody>  
</table>  
 
  </body>
</html>
