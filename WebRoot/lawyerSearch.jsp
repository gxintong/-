<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>找律师</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css" type="text/css"></link>
    <link rel="stylesheet" href="css/header.css" type="text/css"></link>
    <link rel="stylesheet" href="css/lawyerSearch.css" type="text/css"></link>
    <link href="https://cdn.bootcss.com/bootstrap-table/1.12.1/bootstrap-table.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-table/1.12.1/locale/bootstrap-table-zh-CN.min.js"></script>
    <script type="text/javascript" src="plug_in_unit/Bootstrap/js/distpicker.data.js"></script>
    <script type="text/javascript" src="plug_in_unit/Bootstrap/js/distpicker.js"></script>
    <script type="text/javascript" src="plug_in_unit/Bootstrap/js/main.js"></script>
   </head>
 <script type="text/javascript">            
      function initTable() {  
        //先销毁表格  
        $('#LawyerTable').bootstrapTable('destroy');  
        //初始化表格,动态从服务器加载数据  
        $("#LawyerTable").bootstrapTable({  
            method: "post",  //使用post请求到服务器获取数据  
            url: "${pageContext.request.contextPath }/lawyer/lawyerInfo.do", //获取数据的Servlet地址  
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
            search:false,                      //是否显示表格搜索
            showColumns: true,
            minimumCountColumns: 2,             //最少允许的列数
            clickToSelect: true,                //是否启用点击选中行
            //height: 500, 
            uniqueId: "userId", 
             columns: [{
                    field: 'userId',
                    title: '律师账号',
                    align: 'center',
                },
                {
                    field: 'name',
                    title: '律师姓名',
                    align: 'center',
                },{
                    field: 'province',
                    title: '所在省',
                    align: 'center',
                },{
                    field: 'city',
                    title: '所在市',
                    align: 'center',
                },{
                    field: 'phone',
                    title: '电话',
                    align: 'center',
                },{
                    field: 'license',
                    title: '执业证号',
                    align: 'center',
                },{
                    field: 'firm',
                    title: '律所',
                    align: 'center',
                },{
                    field: 'major',
                    title: '专业方向',
                    align: 'center',
                }] ,
            onClickRow: function(row,element,field){ 
            var lawyer_id=row.userId;
             window.location.href = "lawyerinfo.jsp?lawyer_id="+lawyer_id;
            },
            onLoadSuccess: function(){  //加载成功时执行  
            },  
            onLoadError: function(){  //加载失败时执行  
            }  
          });  
      }  
  
      $(document).ready(function(){ 
          //调用函数，初始化表格  
          initTable();  
        /*  $('#LawyerTable').bootstrapTable('hideColumn', 'userId');*/   
      });
      function loadTable(){
    	$.ajax({  
            type : 'post',  
            async:false, 
            url : 'lawyer/lawyerInfo.do',
            data:{
              name:$('#user_name').val(),
	          province:$('#province2').val(),
	       	  city:$('#city2').val(),
	       	  major:$('#specid').val()
            },
            dataType : 'json',  
            success : function(datas) {
            	$('#LawyerTable').bootstrapTable('load', datas);
            } 
        });   
        }
      
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
                        <li  class="active" data-menu="lawyersearch"><a href="${pageContext.request.contextPath }/lawyerSearch.jsp">找律师</a></li>
                        <li data-menu="zx"><a href="${pageContext.request.contextPath }/lawconsult.jsp">法律咨询</a></li>
                        <li data-menu="task"><a href="${pageContext.request.contextPath }/case.jsp">成功案例</a></li>
                        <li data-menu="blog"><a href="${pageContext.request.contextPath }/LawKnowledge.jsp">法律常识</a></li>
                    </ul>
                </div>
  </div>
   <div class="first_tuijian">
     <ul>
      <li><div class="tuijian"><div class="item-img"><a href ="lawyerinfo.jsp?lawyer_id=law13841861396"><img src="images/userheader (4).png"></img></div></a><div class="item-name">高萃律师</div><div class="item-id">（law13841861396）</div><div class="item-number">执业证12102201111467653</div><div class="item-unit">辽宁兴中律师事务所</div></div></li>
      <li><div class="tuijian"><div class="item-img"><a href ="lawyerinfo.jsp?lawyer_id=law13866778862"><img src="images/userheader (2).png"></img></div></a><div class="item-name">王艳社律师</div><div class="item-id">（law13866778862）</div><div class="item-number">执业证11306200210112915</div><div class="item-unit">河北凯歌律师事务所</div></div></li>
      <li><div class="tuijian"><div class="item-img"><a href ="lawyerinfo.jsp?lawyer_id=law15541861209"><img src="images/userheader (3).png"></img></div></a><div class="item-name">王新磊律师</div><div class="item-id">（law15541861209）</div><div class="item-number">执业证16301201011705896</div><div class="item-unit">黑龙江泽顺律师事务所 </div></div></li>
      <li><div class="tuijian"><div class="item-img"><a href ="lawyerinfo.jsp?lawyer_id=law18242989407"><img src="images/userheader (1).png"></img></div></a><div class="item-name">穆鹏律师</div><div class="item-id">（law18242989407）</div><div class="item-number">执业证11410201110612325</div><div class="item-unit">山西佳讯律师事务所</div></div></li>
      <li><div class="tuijian"><div class="item-img"><a href ="lawyerinfo.jsp?lawyer_id=law234234"><img src="images/userheader (9).png"></img></div></a><div class="item-name">李伟铎律师</div><div class="item-id">（law234234）</div><div class="item-number">执业证16301201011705896</div><div class="item-unit">广东王芬律师事务所</div></div></li>
      <li><div class="tuijian"><div class="item-img"><a href ="lawyerinfo.jsp?lawyer_id=law13889828417"><img src="images/userheader (5).png"></img></div></a><div class="item-name">马卓律师</div><div class="item-id">（law13889828417）</div><div class="item-number">执业证13205201110613240</div><div class="item-unit">江苏文诚律师事务所</div></div></li>
      </ul>
        </div>  
        <div  id="search">
             <form id="form1" method="post"  class="form-inline">
                     <em>地区选择：</em>
                     <div class="regdiv">
                     <div  class="distpicker5" style="display:inline">
								  <select class="form-control" id="province2" name="province"></select>
								  <select class="form-control" id="city2"  name="city"></select>
							  </div>
                        </div>
                       <em>专业方向：</em>
                                <div class="regdiv">
                                    <select name="specid" id="specid" class="form-control">
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
                                <input class="form-control" name="name" id="user_name" type="text"  placeholder="律师名">
                                <input class="btn1" id="searchLawyer"   type="button"  onclick="loadTable();" value="搜索">
                            </form>
   </div>
     
		    <table class="table" id="LawyerTable" data-show-refresh="true" >  </table>  
<div>
    </div>
  </body>
</html>
