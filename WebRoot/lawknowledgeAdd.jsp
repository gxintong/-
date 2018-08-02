<%@ page language="java" import="java.util.*" pageEncoding="Utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>法律常识发布</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!-- basic styles -->

		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="assets/css/jquery-ui-1.10.3.custom.min.css" />
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

						
								<li >
									<a href="lawexample.jsp">
										<i class="icon-double-angle-right"></i>
										案例发布
									</a>
								</li>

								<li  class="active">
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
								<a href="#">我的发布</a>
							</li>
							<li class="active">法律常识发布</li>
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
							<h1>法律常识发布</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<h4 class="header green clearfix">
								<form id="lawknowedge">
									<span class="block pull-left">标题：<input type="text" id="title" name="title" /></span>
									<span class="block pull-left">类型：<select name="type" style="width:200px">
						           <option value="">--请选择问题类型--</option>
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
                                </select> </span>
									<span class="block pull-right">
										<small class="grey middle">选择样式: &nbsp;</small>

										<span class="btn-toolbar inline middle no-margin">
											<span data-toggle="buttons" class="btn-group no-margin">
												<label class="btn btn-sm btn-yellow">
													1
													<input type="radio" value="1" />
												</label>

												<label class="btn btn-sm btn-yellow active">
													2
													<input type="radio" value="2" />
												</label>

												<label class="btn btn-sm btn-yellow">
													3
													<input type="radio" value="3" />
												</label>
											</span>
										</span>
									</span>
								</h4>
                          
								<div class="wysiwyg-editor" id="editor1"></div>
								<input  type="hidden" name="content" id="cnt2" />
								<div class="col-md-offset-5 col-md-9" style="margin-top:10px;">
								<a class="btn btn-info"  onclick="add()">
								<i class="icon-ok bigger-110"></i>
									发布
								</a>
								</div>
                             		<script type="text/javascript">
									var $path_assets = "assets";//this will be used in loading jQuery UI if needed!
										 function add(){//发布法律常识
                                         var1 = $("#editor1").html();
                                         $("#cnt2").val(var1);
                                          var form = document.getElementById('lawknowedge');  
                                          var formdata = new FormData(form); 
                                            $.ajax({
												     type: "POST",
												     url: "lawknowledge/addLawknowledge.do",
												     data: formdata,
												     cache: false,
                                                      processData: false,  
                                                     contentType: false,  
												     dataType:"json",
												     success: function(data) {
												          alert("添加成功");
												          location.reload();
												        },
												     error: function(XMLHttpRequest, textStatus, errorThrown) {
												                    
												        }
												 });
                                           }
								</script>
                             </form>
						

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->
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

		<!-- page specific plugin scripts -->

		<script src="assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="assets/js/markdown/markdown.min.js"></script>
		<script src="assets/js/markdown/bootstrap-markdown.min.js"></script>
		<script src="assets/js/jquery.hotkeys.min.js"></script>
		<script src="assets/js/bootstrap-wysiwyg.min.js"></script>
		<script src="assets/js/bootbox.min.js"></script>

		<!-- ace scripts -->

		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			jQuery(function($){
	
	function showErrorAlert (reason, detail) {
		var msg='';
		if (reason==='unsupported-file-type') { msg = "Unsupported format " +detail; }
		else {
			console.log("error uploading file", reason, detail);
		}
		$('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>'+ 
		 '<strong>File upload error</strong> '+msg+' </div>').prependTo('#alerts');
	}

	//$('#editor1').ace_wysiwyg();//this will create the default editor will all buttons

	//but we want to change a few buttons colors for the third style
	$('#editor1').ace_wysiwyg({
		toolbar:
		[
			'font',
			null,
			'fontSize',
			null,
			{name:'bold', className:'btn-info'},
			{name:'italic', className:'btn-info'},
			{name:'strikethrough', className:'btn-info'},
			{name:'underline', className:'btn-info'},
			null,
			{name:'insertunorderedlist', className:'btn-success'},
			{name:'insertorderedlist', className:'btn-success'},
			{name:'outdent', className:'btn-purple'},
			{name:'indent', className:'btn-purple'},
			null,
			{name:'justifyleft', className:'btn-primary'},
			{name:'justifycenter', className:'btn-primary'},
			{name:'justifyright', className:'btn-primary'},
			{name:'justifyfull', className:'btn-inverse'},
			null,
			{name:'createLink', className:'btn-pink'},
			{name:'unlink', className:'btn-pink'},
			null,
			{name:'insertImage', className:'btn-success'},
			null,
			'foreColor',
			null,
			{name:'undo', className:'btn-grey'},
			{name:'redo', className:'btn-grey'}
		],
		'wysiwyg': {
			fileUploadError: showErrorAlert
		}
	}).prev().addClass('wysiwyg-style2');

	

	$('[data-toggle="buttons"] .btn').on('click', function(e){
		var target = $(this).find('input[type=radio]');
		var which = parseInt(target.val());
		var toolbar = $('#editor1').prev().get(0);
		if(which == 1 || which == 2 || which == 3) {
			toolbar.className = toolbar.className.replace(/wysiwyg\-style(1|2)/g , '');
			if(which == 1) $(toolbar).addClass('wysiwyg-style1');
			else if(which == 2) $(toolbar).addClass('wysiwyg-style2');
		}
	});


	

	//Add Image Resize Functionality to Chrome and Safari
	//webkit browsers don't have image resize functionality when content is editable
	//so let's add something using jQuery UI resizable
	//another option would be opening a dialog for user to enter dimensions.
	if ( typeof jQuery.ui !== 'undefined' && /applewebkit/.test(navigator.userAgent.toLowerCase()) ) {
		
		var lastResizableImg = null;
		function destroyResizable() {
			if(lastResizableImg == null) return;
			lastResizableImg.resizable( "destroy" );
			lastResizableImg.removeData('resizable');
			lastResizableImg = null;
		}

		var enableImageResize = function() {
			$('.wysiwyg-editor')
			.on('mousedown', function(e) {
				var target = $(e.target);
				if( e.target instanceof HTMLImageElement ) {
					if( !target.data('resizable') ) {
						target.resizable({
							aspectRatio: e.target.width / e.target.height,
						});
						target.data('resizable', true);
						
						if( lastResizableImg != null ) {//disable previous resizable image
							lastResizableImg.resizable( "destroy" );
							lastResizableImg.removeData('resizable');
						}
						lastResizableImg = target;
					}
				}
			})
			.on('click', function(e) {
				if( lastResizableImg != null && !(e.target instanceof HTMLImageElement) ) {
					destroyResizable();
				}
			})
			.on('keydown', function() {
				destroyResizable();
			});
	    }
		
		enableImageResize();

	}
    

});
		</script>
	</body>
</html>
