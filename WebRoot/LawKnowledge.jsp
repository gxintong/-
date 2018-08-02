<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <title>法律常识</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/main.css" type="text/css"></link>
  <link rel="stylesheet" href="css/lawKnowledge.css" type="text/css"></link>
  <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
  <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
 <script src="https://cdn.bootcss.com/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-table/1.12.1/locale/bootstrap-table-zh-CN.min.js"></script>
</head>
<script type="text/javascript">          
    function initTable() {  
        //先销毁表格  
        $('#Lawknowldge').bootstrapTable('destroy');  
        //初始化表格,动态从服务器加载数据  
        $("#Lawknowldge").bootstrapTable({  
            method: "post",  //使用post请求到服务器获取数据  
            url: "${pageContext.request.contextPath }/lawknowledge/selectLawknowledge.do", //获取数据的Servlet地址  
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
            refresh:true,
            uniqueId: "userId", 
             columns: [ 
              	 {field: 'articalId',title: '常识号',align: 'center',},
                 {field: 'name',title: '发布人',align: 'center',},
                 {field: 'type',title: '类型',align: 'center',},
                 {
                    field: 'time',
                    title: '发布时间',
                    align: 'center',
                },
                {
                    field: 'title',
                    title: '标题',
                    align: 'center',
                }] ,
            onClickRow: function(row,element,field){ 
            var articalId=row.articalId;
             window.location.href = "knowledgeDetail.jsp?articalId="+articalId;
            },
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
   function work(target) {  
        //e.preventDefault();  
        var type=$(target).text();
         $.ajax({  
            type : 'post',  
            async:false, 
            url : 'lawknowledge/selectLawknowledge.do',
            data:{
              type:type
            },
            dataType : 'json',  
            success : function(datas) {
            	$('#Lawknowldge').bootstrapTable('load', datas);
            } 
        });
    }  
     
  </script>
<body>
 <%@include file="header.jsp" %>
 <div>
  <div style="margin-left:60px;" >
   <a href="javascript:void(0);"  onclick="work(this)"><span><img src="images/logo.png" style="width:250px;height:115px"></img></span></a>
   </div>
   </div>
  <div class="mynav">
  <div style="width:1000px;margin:0 auto">
   <ul class="nav nav-pills nav-justified">
    <li class="nav-item">
      <a class="nav-link" href="javascript:void(0);" onclick="work(this)">婚姻家庭</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="javascript:void(0);"  onclick="work(this)">刑事辩护</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="javascript:void(0);"  onclick="work(this)">交通事故</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="javascript:void(0);"  onclick="work(this)">合同纠纷</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="javascript:void(0);"  onclick="work(this)">房产纠纷</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="javascript:void(0);"  onclick="work(this)">知识产权</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="javascript:void(0);"  onclick="work(this)">劳动纠纷</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="javascript:void(0);"  onclick="work(this)">债务债权</a>
    </li>
  </ul>
	</div>
	
  </div>
  
  <!-- 分类导航结束 -->
           <div class="content">
            <div class="left_content">
              <div class="l-sub-tit">热门专长</div>
                 <div class="l-sn">
                   <div class="pl15 pr15" style="height: 460px">
                  <dl>
				  <dt> <a target="_blank" href="javascript:void(0);"  onclick="work(this)" title="结婚"><b class="s-be">结婚</b></a></dt>
				  <dd>
				 <a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="结婚条件">结婚条件</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="结婚程序">结婚程序</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="结婚登记">结婚登记</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="结婚证">结婚证</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:85px" title="婚前婚后协议">婚前婚后协议</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="复婚再婚">复婚再婚</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="结婚彩礼">结婚彩礼</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="同居">同居</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="扶养">扶养</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="婚姻自由">婚姻自由</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="计划生育">计划生育</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:85px" title="婚姻登记条例">婚姻登记条例</a> </dd>
				 </dl>
				 <dl>
				  <dt> <a target="_blank" href="javascript:void(0);"  onclick="work(this)" title="离婚"><b class="s-be">离婚</b></a></dt>
				  <dd>
				 <a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="离婚条件">离婚条件</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="离婚程序">离婚程序</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="协议离婚">协议离婚</a><a target="_blank" href="/laws/hunyinjiating/lihun/lhxys/" style="width:85px" title="离婚协议书">离婚协议书</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="离婚证">离婚证</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="诉讼离婚">诉讼离婚</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:85px" title="离婚起诉书">离婚起诉书</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="离婚调解">离婚调解</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="离婚证据">离婚证据</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="离婚案例">离婚案例</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="离婚赔偿">离婚赔偿</a> </dd>
				 </dl>
				 <dl>
				  <dt> <a target="_blank" href="javascript:void(0);"  onclick="work(this)" title="子女抚养"><b class="s-be">子女抚养</b></a></dt>
				  <dd>
				 <a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="抚养权">抚养权</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="抚养费">抚养费</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="监护权">监护权</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="探视权">探视权</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:85px" title="社会抚养费">社会抚养费</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="亲子鉴定">亲子鉴定</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:85px" title="监护权变更">监护权变更</a> </dd>
				 </dl>
				 <dl>
				  <dt> <a target="_blank" href="javascript:void(0);"  onclick="work(this)" title="夫妻财产"><b class="s-be">夫妻财产</b></a></dt>
				  <dd>
				 <a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="婚前财产">婚前财产</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)"style="width:85px" title="婚后个人财产">婚后个人财产</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:85px" title="婚后共同财产">婚后共同财产</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:55px" title="夫妻债务">夫妻债务</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:85px" title="离婚财产分割">离婚财产分割</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:85px" title="夫妻财产协议">夫妻财产协议</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:85px" title="夫妻财产公证">夫妻财产公证</a> </dd>
				 </dl>
				 <dl>
				  <dt> <a target="_blank" href="javascript:void(0);"  onclick="work(this)" title="家庭暴力"><b class="s-be">家庭暴力</b></a></dt>
				  <dd>
				 <a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:85px" title="家庭暴力常识">家庭暴力常识</a><a target="_blank"href="javascript:void(0);"  onclick="work(this)"style="width:85px" title="家庭冷暴力">家庭冷暴力</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:85px" title="家庭暴力法规">家庭暴力法规</a><a target="_blank" href="javascript:void(0);"  onclick="work(this)" style="width:85px" title="家庭暴力案例">家庭暴力案例</a> </dd>
				 </dl>
                </div>
                    </div>
           </div>
           <div class="middle_content">
           <!-- 轮播图 -->
           <div id="demo" class="carousel slide" data-ride="carousel">
				  <ul class="carousel-indicators">
				    <li data-target="#demo" data-slide-to="0" class="active"></li>
				    <li data-target="#demo" data-slide-to="1"></li>
				    <li data-target="#demo" data-slide-to="2"></li>
				  </ul>
				  
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="images/lunbo1.jpg"></img>
				   
				    </div>
				    <div class="carousel-item">
				    <img src="images/lunbo4.jpg"></img>
				    </div>
				    <div class="carousel-item">
				    <img src="images/lunbo5.jpg"></img>
				    </div>
				  </div>
				  
				  <a class="carousel-control-prev" href="#demo" data-slide="prev">
				    <span class="carousel-control-prev-icon"></span>
				  </a>
				  <a class="carousel-control-next" href="#demo" data-slide="next">
				    <span class="carousel-control-next-icon"></span>
				  </a>
				 
              </div>
           <!-- 文章 -->
           <ul class="art-list art-list-c2">
                        <li><p class="pr20"><a href="knowledgeDetail.jsp?articalId=4" target="_blank" title="夫妻离婚财产登记需要的资料">夫妻离婚财产登记需要的资料</a></p></li>
                        <li><p class="pl20"><a href="/laws/488601.aspx" target="_blank" title="劳动合同变更协商不一致怎么办">劳动合同变更协商不一致怎么办</a></p></li>
                        <li><p class="pr20"><a href="/laws/488600.aspx" target="_blank" title="二手房屋买卖合同定金协议书如何书写">二手房屋买卖合同定金协议书如何书写</a></p></li>
                        <li><p class="pl20"><a href="/laws/488599.aspx" target="_blank" title="承包合同分类有哪些">承包合同分类有哪些</a></p></li>
                        <li><p class="pr20"><a href="/laws/488597.aspx" target="_blank" title="交通事故中的精神病鉴定">交通事故中的精神病鉴定</a></p></li>
                        <li><p class="pl20"><a href="/laws/488596.aspx" target="_blank" title="公司合并概述是什么">公司合并概述是什么</a></p></li>
           </ul>
           
           </div>
           <div class="right-content">
           <div class="tit"><span  style="font-size:16px;padding:10px;">热门文章</span></div>
           <div class="artical">
         <ul class="art-list">
                                <li><em class="s-ce52">1</em><a  href="knowledgeDetail.jsp?articalId=4" target="_blank" title="民政局离婚协议书范本（2018最新版本）">民政局离婚协议书范本（2018最新版本）</a></li>
                                <li><em class="s-cf60">2</em><a href="/laws/163092.aspx" target="_blank" title="女方先提出离婚会怎么样，谁先提出离婚谁吃亏？">女方先提出离婚会怎么样，谁先提出离婚谁吃亏？</a></li>
                                <li><em class="s-cffd">3</em><a href="/laws/435118.aspx" target="_blank" title="上诉离婚的程序及费用是怎么算的">上诉离婚的程序及费用是怎么算的</a></li>
                                <li><em>4</em><a href="/laws/180991.aspx" target="_blank" title="股份公司与有限责任公司有何不同">股份公司与有限责任公司有何不同</a></li>
                                <li><em>5</em><a href="/laws/129038.aspx" target="_blank" title="借条应写内容,如何区别借条和欠条">借条应写内容,如何区别借条和欠条</a></li>
                                <li><em>6</em><a href="/laws/132235.aspx" target="_blank" title="工伤赔偿项目有哪些">工伤赔偿项目有哪些</a></li>
                                <li><em>7</em><a href="/laws/80679.aspx" target="_blank" title="2018新婚姻法离婚财产分割有什么规定">2018新婚姻法离婚财产分割有什么规定</a></li>
                                <li><em>8</em><a href="/laws/400328.aspx" target="_blank" title="诈骗多少钱才立案">诈骗多少钱才立案</a></li>
                                <li><em>9</em><a href="/laws/83936.aspx" target="_blank" title="交通法规新规定(2018年最新全文)">交通法规新规定(2018年最新全文)</a></li>
                                <li><em>10</em><a href="/laws/87783.aspx" target="_blank" title="2018年最新婚姻法离婚条件的规定有哪些">2018年最新婚姻法离婚条件的规定有哪些</a></li>
                            </ul>
           
           
           </div>
           </div>
           <div>
             <table class="table" id="Lawknowldge" data-show-refresh="true">
         </div>     
     	   </div>
  

</body>
</html>