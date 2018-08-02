<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="cn.com.dhcc.footPlatform.background.domain.LawyerInfo"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
/* HttpSession session = request.getSession();
LawyerInfo lawyerInfo=(LawyerInfo)session.getAttribute("lawyerLogin");
String userId=lawyerInfo.getUserId();
String name=lawyerInfo.getName(); */
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
	<head>
		
		<title>律师信息页面</title>
	    <meta http-equiv="Content-Type" content="multipart/form-data; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
       
		<!-- basic styles -->

		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="assets/css/jquery-ui-1.10.3.custom.min.css" />
		<link rel="stylesheet" href="assets/css/jquery.gritter.css" />
		<link rel="stylesheet" href="assets/css/select2.css" />
		<link rel="stylesheet" href="assets/css/bootstrap-editable.css" />
		<link rel="stylesheet" href="assets/css/ace.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<script src="assets/js/ace-extra.min.js"></script>
	</head>
	<body>
		<div class="navbar navbar-default" id="navbar" style="height:45px;">
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
<a class="button" style="width:100px;height:30px;color:fff;background:#red;line-height:30px;" href="user/lawyerlogout.do">退出登录</a>
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
 </div>
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

					

					<ul class="nav nav-list">
						<li >
							<a href="lawinfo.jsp">
								<i class="icon-dashboard"></i>
								<span class="menu-text">系统公告 </span>
							</a>
						</li>
                         <li>
							<a href="userconsult.jsp">
								<i class="icon-list"></i>
								<span class="menu-text"> 最新咨询</span>
							</a>

						</li>
						<li class="active">
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
							
							<li class="active">个人主页</li>
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
							<h1>我的主页</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<div>
									<div id="user-profile-1" class="user-profile row">
										<div class="col-xs-12 col-sm-3 center">
											<div>
												<span class="profile-picture">
													<img id="avatar" class="editable img-responsive" alt="头像" src="" />
												</span>

												<div class="space-4"></div>

												<div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
													<div class="inline position-relative">
															<i class="icon-circle light-green middle"></i>
															${sessionScope.lawyerLogin.name}
															<span class="white">律师</span>
														
													</div>
												</div>
											</div>

											<div class="space-6"></div>

											<div class="profile-contact-info">
												<div class="profile-contact-links align-left">
													<a class="btn btn-link" href="#">
														<i class="icon-envelope bigger-120 pink"></i>
														发消息
													</a>
												</div>

											</div>
										</div>

										<div class="col-xs-12 col-sm-9">
											<div class="space-12"></div>
                                        <!-- 个人信息 -->
											<div class="profile-user-info profile-user-info-striped">
												<div class="profile-info-row">
													<div class="profile-info-name">姓名 </div>

													<div class="profile-info-value">
														<span class="editable" id="username">${sessionScope.lawyerLogin.name}</span>
													</div>
												</div>

												<div class="profile-info-row">
													<div class="profile-info-name">地址 </div>

													<div class="profile-info-value">
														<i class="icon-map-marker light-orange bigger-110"></i>
														<span class="editable" id="country">${sessionScope.lawyerLogin.province}</span>
														<span class="editable" id="city">${sessionScope.lawyerLogin.city}</span>
													</div>
												</div>

												<div class="profile-info-row">
													<div class="profile-info-name">电话</div>

													<div class="profile-info-value">
														<span class="editable" id="age">${sessionScope.lawyerLogin.phone}</span>
													</div>
												</div>
                                               <div class="profile-info-row">
													<div class="profile-info-name">执业律所</div>

													<div class="profile-info-value">
														<span class="editable" id="age">${sessionScope.lawyerLogin.firm}</span>
													</div>
												</div>
												<div class="profile-info-row">
													<div class="profile-info-name">执业证号</div>

													<div class="profile-info-value">
														<span class="editable" id="age">${sessionScope.lawyerLogin.license}</span>
													</div>
												</div>
												<div class="profile-info-row">
													<div class="profile-info-name">律所地址 </div>

													<div class="profile-info-value">
														<span class="editable" id="firmaddress">${sessionScope.lawyerLogin.firmaddress}</span>
													</div>
												</div>
											</div>

											<div class="space-20"></div>

											</div>
											<div class="hr hr2 hr-double"></div>

											<div class="space-6"></div>
										</div>
									</div>
								</div>
			</div><!-- /.col -->
		</div><!-- /.row -->
		<!-- 个人描述及专业方向 -->
		<div class="row">
			<div class="col-xs-12 col-sm-6">
				<div class="widget-box transparent">
					<div class="widget-header widget-header-small">
						<h4 class="smaller">
							<i class="icon-check bigger-110"></i>
							律师简介
						</h4>
					</div>

					<div class="widget-body">
						<div class="widget-main">
							<p>
							${sessionScope.lawyerLogin.city}
							${sessionScope.lawyerLogin.personalDescription}
							</p>
						</div>
					</div>
				</div>
			</div>

			<div class="col-xs-12 col-sm-6">
				<div class="widget-box transparent">
					<div class="widget-header widget-header-small header-color-blue2">
						<h4 class="smaller">
							<i class="icon-lightbulb bigger-120"></i>
							专业方向
						</h4>
					</div>

					<div class="widget-body">
						<div class="widget-main padding-16">
							<div class="clearfix">
								<div class="grid3 center" id="major0">
									<div class="easy-pie-chart percentage easyPieChart" data-percent="45" data-color="#CA5952" style="width: 72px; height: 72px; line-height: 72px; color: rgb(202, 89, 82);">
										<span class="percent">50</span>%
									<canvas width="72" height="72"></canvas></div>
									<div class="space-2" ></div>
									<%-- ${sessionScope.lawyerLogin.major} --%>
								</div>

								<div class="grid3 center" id="major1">
									<div class="center easy-pie-chart percentage easyPieChart" data-percent="90" data-color="#59A84B" style="width: 72px; height: 72px; line-height: 72px; color: rgb(89, 168, 75);">
										<span class="percent">90</span>%
									<canvas width="72" height="72"></canvas></div>

									<div class="space-2" id="major1"></div>
								</div>

								<div class="grid3 center" id="major2" >
									<div class="center easy-pie-chart percentage easyPieChart" data-percent="80" data-color="#9585BF" style="width: 72px; height: 72px; line-height: 72px; color: rgb(149, 133, 191);">
										<span class="percent">80</span>%
									<canvas width="72" height="72"></canvas></div>

									<div class="space-2" id="major2"></div>
								</div>
							</div>
							<div class="hr hr-16"></div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="page-header">
							<h1>
								我的发布
								<small>
									<i class="icon-double-angle-right"></i>
									成功案例 &amp; 法律常识
								</small>
							</h1>
						</div>
						
	                    <div class="row">
									<div class="col-sm-12">
										<div class="tabbable">
											<ul class="nav nav-tabs" id="myTab">
												<li class="active">
													<a data-toggle="tab" href="#home">
														<i class="green icon-home bigger-110"></i>
														法律案例
													</a>
												</li>

												<li class="">
													<a data-toggle="tab" href="#profile">
														法律常识
														<!-- <span class="badge badge-danger">4</span> -->
													</a>
												</li>

											</ul>

							<div class="tab-content">
							<div id="home" class="tab-pane active">
							<div class="panel-body">
						       <table data-toggle="table" id="exampleTable"  data-show-refresh="false" data-show-toggle="false" data-show-columns="false" data-search="true" data-select-item-name="toolbar1" data-pagination="true" data-sort-name="name" data-sort-order="desc">
						 </table>
					     </div>
				       </div>
							<div id="profile" class="tab-pane">
							<div class="panel-body">
						       <table data-toggle="table" id="knowledgeTable"  data-show-refresh="false" data-show-toggle="false" data-show-columns="false" data-search="true" data-select-item-name="toolbar1" data-pagination="true" data-sort-name="name" data-sort-order="desc">
						       </table>
					    		</div>
							</div>
						</div>
					</div>
									</div><!-- /span -->

									<div class="vspace-xs-6"></div>
								</div>
		
	</div><!-- /.page-content -->
</div><!-- /.main-content -->
</div><!-- /.main-container-inner -->

<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
	<i class="icon-double-angle-up icon-only bigger-110"></i>
</a>
		</div><!-- /.main-container -->

		

		<script src="assets/js/jquery.min.js"></script>
		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>
		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/typeahead-bs2.min.js"></script>
		<script src="assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="assets/js/jquery.gritter.min.js"></script>
		<script src="assets/js/bootbox.min.js"></script>
		<script src="assets/js/jquery.slimscroll.min.js"></script>
		<script src="assets/js/jquery.easy-pie-chart.min.js"></script>
		<script src="assets/js/jquery.hotkeys.min.js"></script>
		<script src="assets/js/bootstrap-wysiwyg.min.js"></script>
		<script src="assets/js/select2.min.js"></script>
		<script src="assets/js/date-time/bootstrap-datepicker.min.js"></script>
		<script src="assets/js/fuelux/fuelux.spinner.min.js"></script>
		<script src="assets/js/x-editable/bootstrap-editable.min.js"></script>
		<script src="assets/js/x-editable/ace-editable.min.js"></script>
		<script src="assets/js/jquery.maskedinput.min.js"></script>

		<!-- ace scripts -->

		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
	  <script src="js/bootstrap.min.js"></script>
		<script src="https://cdn.bootcss.com/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-table/1.12.1/locale/bootstrap-table-zh-CN.min.js"></script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			         jQuery(function($) {
				//editables on first profile page
				$.fn.editable.defaults.mode = 'inline';
				$.fn.editableform.loading = "<div class='editableform-loading'><i class='light-blue icon-2x icon-spinner icon-spin'></i></div>";
			    $.fn.editableform.buttons = '<button type="submit" class="btn btn-info editable-submit"><i class="icon-ok icon-white"></i></button>'+
			                                '<button type="button" class="btn editable-cancel"><i class="icon-remove"></i></button>';    
			
				//////////////////////////////
				$('#profile-feed-1').slimScroll({
				height: '250px',
				alwaysVisible : true
				});
			
				$('.profile-social-links > a').tooltip();
			
				$('.easy-pie-chart.percentage').each(function(){
				var barColor = $(this).data('color') || '#555';
				var trackColor = '#E2E2E2';
				var size = parseInt($(this).data('size')) || 72;
				$(this).easyPieChart({
					barColor: barColor,
					trackColor: trackColor,
					scaleColor: false,
					lineCap: 'butt',
					lineWidth: parseInt(size/10),
					animate:false,
					size: size
				}).css('color', barColor);
				});
			  
				///////////////////////////////////////////
			
				//show the user info on right or left depending on its position
				$('#user-profile-2 .memberdiv').on('mouseenter', function(){
					var $this = $(this);
					var $parent = $this.closest('.tab-pane');
			
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $this.offset();
					var w2 = $this.width();
			
					var place = 'left';
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) place = 'right';
					
					$this.find('.popover').removeClass('right left').addClass(place);
				}).on('click', function() {
					return false;
				});
			
			
				//change profile
				$('[data-toggle="buttons"] .btn').on('click', function(e){
					var target = $(this).find('input[type=radio]');
					var which = parseInt(target.val());
					$('.user-profile').parent().addClass('hide');
					$('#user-profile-'+which).parent().removeClass('hide');
				});
			});
			$(document).ready(function () { 
          //调用函数，初始化表格  
           lawlnfo();
           initTable(); 
      });

 function initTable() {  
        //先销毁表格  
        var userId="${sessionScope.lawyerLogin.userId}";
        $('#exampleTable').bootstrapTable('destroy'); 
        $('#singleconsultTable').bootstrapTable('destroy');  
        //初始化表格,动态从服务器加载数据  
        $("#exampleTable").bootstrapTable({  
            method: "post",  //使用post请求到服务器获取数据  
            url: "lawexample/selectLawexample.do?lawyerId="+userId, //获取数据的Servlet地址  
            striped: true,                      //是否显示行间隔色
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            sortable: true,                     //是否启用排序
            sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber: 1,                      //初始化加载第一页，默认第一页,并记录
            pageSize: 10,                     //每页的记录行数（*）
            pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
            minimumCountColumns: 2,             //最少允许的列数
            clickToSelect: true,                //是否启用点击选中行
            //uniqueId: "consule_id",  //每一行的唯一标识，一般为主键列
              columns: [
                 {field:"选择",checkbox: true,title:"选择",class:"tablebody",align:"center",valign:"middle"},
                 {field: 'eid',title: '案例号',align: 'center',},
                 {field: 'lawyerId',title: '发布人',align: 'center',},
                 {field: 'type',title: '类型',align: 'center',},
                 {
                    field: 'time',
                    title: '发布时间',
                    align: 'center',
                },
                {
                    field: 'etitile',
                    title: '标题',
                    align: 'center',
                }] , 
            onLoadSuccess: function(){  //加载成功时执行  
            },  
            onLoadError: function(){  //加载失败时执行  
            }  
          });
        //先销毁表格  
        $('#knowledgeTable').bootstrapTable('destroy');  
        //初始化表格,动态从服务器加载数据  
        $("#knowledgeTable").bootstrapTable({  
            method: "post",  //使用post请求到服务器获取数据  
            url: "lawknowledge/selectLawknowledge.do?lawyerId="+userId, //获取数据的Servlet地址  
            striped: true,                      //是否显示行间隔色
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            sortable: true,                     //是否启用排序
            sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber: 1,                      //初始化加载第一页，默认第一页,并记录
            pageSize: 10,                     //每页的记录行数（*）
            pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
            minimumCountColumns: 2,             //最少允许的列数
            clickToSelect: true,                //是否启用点击选中行
            //uniqueId: "consule_id",  //每一行的唯一标识，一般为主键列
             columns: [
                 {field:"选择",checkbox: true,title:"选择",class:"tablebody",align:"center",valign:"middle"},
                 {field: 'articalId',title: '常识号',align: 'center',},
                 {field: 'lawyerId',title: '发布人',align: 'center',},
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
            onLoadSuccess: function(){  //加载成功时执行  
            },  
            onLoadError: function(){  //加载失败时执行  
            }  
          });  
      }
       
       function  lawlnfo() { 
           $.ajax({
                type: "POST",
                url: "lawyer/lawyer.do",
                cache: false,
                dataType:"json",
                success: function(data) {
                console.info(data);
                console.info(data.imagePath);
                $("#avatar").attr("src",data.imagePath);
                var major=data.major;
                var arr=major.split(",");
                console.info(arr);
                 $("#major0").append(arr[0]);
                 $("#major1").append(arr[1]);
                 $("#major2").append(arr[2]);
                 
                },
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                    
                }
            });
       }


		</script>
	</body>
</html>
