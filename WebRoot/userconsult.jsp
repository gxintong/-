<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>律师个人中心</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<!-- ace styles -->
		<link rel="stylesheet" href="assets/css/ace.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
        <link href="css/bootstrap-table.css" rel="stylesheet">
		
		<script src="assets/js/ace-extra.min.js"></script>
		  
        
	</head>

	<body>
		<div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="icon-leaf"></i>
							律师个人中心
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->

				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
					
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="assets/avatars/user.jpg" alt="Jason's Photo" /> 
								<span class="user-info">
									<small>Welcome,</small>
									${sessionScope.lawyerLogin.name}
								</span>

								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="#">
										<i class="icon-off"></i>
										Logout
									</a>
								</li>
							</ul>
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>

             <!-- 导航栏 -->
					<ul class="nav nav-list">
						<li>
							<a href="lawinfo.jsp">
								<i class="icon-dashboard"></i>
								<span class="menu-text">系统公告 </span>
							</a>
						</li>
                         <li  class="active">
							<a href="userconsult.jsp">
								<i class="icon-list"></i>
								<span class="menu-text"> 最新咨询</span>
							</a>

						</li>
						<li>
							<a href="profile.jsp">
								<i class="icon-text-width"></i>
								<span class="menu-text"> 个人主页 </span>
							</a>
						</li>

						<li>
							<a href="editinfo.jsp" >
								<i class="icon-desktop"></i>
								<span class="menu-text">个人信息管理 </span>
							</a>
						</li>
<!-- 
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text"> 我的回复</span>
								<b class="arrow icon-angle-down"></b>
							</a>
						</li> -->

						
								<li>
									<a href="lawexample.jsp">
										<i class="icon-double-angle-right"></i>
										案例发布
									</a>
								</li>

								<li>
									<a href="lawknowledgeAdd.jsp">
										<i class="icon-double-angle-right"></i>
										法律常识发布
									</a>
								</li>
							

						<!-- <li>
							<a href="calendar.html">
								<i class="icon-calendar"></i>

								<span class="menu-text">
									消息中心
									<span class="badge badge-transparent tooltip-error" title="2&nbsp;Important&nbsp;Events">
										<i class="icon-warning-sign red bigger-130"></i>
									</span>
								</span>
							</a>
						</li> -->
					</ul><!-- /.nav-list -->

					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>

				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="#">Home</a>
							</li>
							<li>
								<a href="#">公开咨询</a>
							</li>
						</ul><!-- .breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="icon-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- #nav-search -->
					</div>
                                 
					<div class="page-content">
						<div class="page-header">
							<h1>
								公众咨询
							</h1>
						</div><!-- /.page-header -->
						 <div class="row">
									<div class="col-sm-12">
										<div class="tabbable">
											<ul class="nav nav-tabs" id="myTab">
												<li class="active">
													<a data-toggle="tab" href="#home">
														<i class="green icon-home bigger-110"></i>
														公开咨询
													</a>
												</li>

												<li class="">
													<a data-toggle="tab" href="#profile">
														一对一咨询
														<!-- <span class="badge badge-danger">4</span> -->
													</a>
												</li>

											</ul>

							<div class="tab-content">
							<div id="home" class="tab-pane active">
							<div class="panel-body">
						       <table data-toggle="table" id="consultTable"  data-show-refresh="false" data-show-toggle="false" data-show-columns="false" data-search="true" data-select-item-name="toolbar1" data-pagination="true" data-sort-name="name" data-sort-order="desc">
						               <thead>
						           <tr>            
						              <th data-field="consuleId" >咨询号 </th>
						              <th data-field="type" >类型</th>
						              <th data-field="mark" >标识</th>                           
						              <th data-field="description">咨询内容</th>  
						              <th data-field="userId">用户</th>  
						              <th data-field="status" >状态</th> 
						              <th data-field="time" >时间 </th>
                         <th class="col-xs-2" data-field="action" data-formatter="actionFormatter" data-events="actionEvents">回复</th>
                           </tr>  
						    </thead>
						</table>
					</div>
				</div>

							<div id="profile" class="tab-pane">
							<div class="panel-body">
						       <table data-toggle="table" id="singleconsultTable"  data-show-refresh="false" data-show-toggle="false" data-show-columns="false" data-search="true" data-select-item-name="toolbar1" data-pagination="true" data-sort-name="name" data-sort-order="desc">
						               <thead>
						           <tr>            
						              <th data-field="consuleId" >咨询号 </th>
						              <th data-field="type" >类型</th>                                               
						              <th data-field="description">咨询内容</th>  
						              <th data-field="userId">用户</th>  
						              <th data-field="status" >状态</th> 
						              <th data-field="time" >时间 </th>
                                      <th class="col-xs-2" data-field="action" data-formatter="actionFormatter" data-events="actionEvents">回复</th>
				         <script>
				           function actionFormatter(value, row, index) {
				            var id = row.consuleId;
				            var content=row.description;
				            var receiver=row.userId;
				            var status=row.status;
				            var result = "";
				            result += "<a href='javascript:;' class='btn btn-info  btn-sm' onclick=\"reply('" + id + "','" + content + "','" + receiver + "')\" title='查看'><span class='glyphicon glyphicon-plus' aria-hidden='true'>添加回复</span></a>";
				            return result;
				        } 
				         </script>
                           </tr>  
						    </thead>
						</table>
					    </div>
						</div>
											</div>
										</div>
									</div><!-- /span -->
								</div>
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					添加回复
				</h4>
			</div>
			<form id="myForm" method="post">
			<div class="modal-body">
			<div><p id="content"></p>
			<input type="text" value="2" name="mark" hidden="true">
			<input id="consult_id" name="consultId" hidden="true">
			<input id="receiver" name="receiver" hidden="true" ></div>
			<div><textarea name="content" style="height:100px;" class="autosize-transition form-control"></textarea></div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button"  onclick="addreply();"class="btn btn-primary">
					提交
				</button>
			</div>
			</form>
			<script>
			function addreply(){
           var form = document.getElementById('myForm');  
           var formdata = new FormData(form); 
             $.ajax({
		     type: "POST",
		     url: "consult/reply.do",
		     data: formdata,
		     cache: false,
             processData: false,  
             contentType: false,  
		     dataType:"json",
		     success: function(result) {
		     console.info(result.code);
		     if(result.code==0){
		       location.reload();
		       alert("添加成功");
		     }
		    },
		     error: function(XMLHttpRequest, textStatus, errorThrown) {
		                    
		        }
		 });
         }
			
			</script>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
			</div><!-- /.main-container-inner -->

		</div><!-- /.main-container -->
		<script src="assets/js/ace.min.js"></script>
       <script src="js/jquery-1.11.1.min.js"></script>
	  <script src="js/bootstrap.min.js"></script>
		<script src="https://cdn.bootcss.com/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-table/1.12.1/locale/bootstrap-table-zh-CN.min.js"></script>
		
		<script type="text/javascript">          
   function initTable() {  
        //先销毁表格  
        $('#consultTable').bootstrapTable('destroy'); 
        $('#singleconsultTable').bootstrapTable('destroy');  
        //初始化表格,动态从服务器加载数据  
        $("#consultTable").bootstrapTable({  
            method: "post",  //使用post请求到服务器获取数据  
            url: "${pageContext.request.contextPath }/consult/consultInfo.do?mark=1", //获取数据的Servlet地址  
            //toolbar: '#toolbar',              //工具按钮用哪个容器
            striped: true,                      //是否显示行间隔色
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            sortable: true,                     //是否启用排序
            sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber: 1,                      //初始化加载第一页，默认第一页,并记录
            pageSize: 10,                     //每页的记录行数（*）
            pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
            minimumCountColumns: 2,             //最少允许的列数
            clickToSelect: true,                //是否启用点击选中行
            uniqueId: "consule_id",  //每一行的唯一标识，一般为主键列
            onLoadSuccess: function(){  //加载成功时执行  
            },  
            onLoadError: function(){  //加载失败时执行  
            }  
          });  
          $("#singleconsultTable").bootstrapTable({  
            method: "post",  //使用post请求到服务器获取数据  
            url: "${pageContext.request.contextPath }/consult/consultInfo.do?mark=2", //获取数据的Servlet地址  
            //toolbar: '#toolbar',              //工具按钮用哪个容器
            striped: true,                      //是否显示行间隔色
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            sortable: true,                     //是否启用排序
            sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber: 1,                      //初始化加载第一页，默认第一页,并记录
            pageSize: 10,                     //每页的记录行数（*）
            pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
            minimumCountColumns: 2,             //最少允许的列数
            clickToSelect: true,                //是否启用点击选中行
            uniqueId: "consule_id",  //每一行的唯一标识，一般为主键列
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
      function reply(id,content,userId){
         $('#myModal').modal('show');
         $("#consult_id").val(id);
         $("#receiver").val(userId);
          $("#content").empty();
         $("#content").append(content);
       }
  
  </script>
	</body>
</html>
