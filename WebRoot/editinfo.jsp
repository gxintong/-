<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>个人信息管理</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="assets/css/jquery-ui-1.10.3.custom.min.css" />
		<link rel="stylesheet" href="assets/css/chosen.css" />
		<link rel="stylesheet" href="assets/css/ace.min.css" />
		<script src="assets/js/ace-extra.min.js"></script>

	</head>
<style>.error{color:red;}</style>
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
						<li>
							<a href="profile.jsp">
								<i class="icon-text-width"></i>
								<span class="menu-text"> 个人主页 </span>
							</a>
						</li>

						<li class="active">
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

							<li class="active">
								<a href="#">个人信息修改</a>
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
								个人信息管理
								<small>
									<i class="icon-double-angle-right"></i>
									个人信息修改及
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<form class="form-horizontal" role="form" id="lawyerinfo"   method="post">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-input-readonly"> I  D </label>
										<div class="col-sm-9">
											<input readonly="" type="text" class="col-xs-10 col-sm-5" id="user_id" name="userId" value="${sessionScope.lawyerLogin.userId}" />
										</div>
									</div>

									<div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 姓 名 </label>

										<div class="col-sm-9">
											<input readonly type="text" id="user_name" name="name" value="${sessionScope.lawyerLogin.name}"  class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="space-4"></div>
                                   <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-6">电话</label>
									<div class="col-sm-9">
											<input type="text" readonly id="phone" name="phone"  class="col-xs-10 col-sm-5" value="${sessionScope.lawyerLogin.phone}" />
										</div>
									</div>
                                  <div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="password" >新 密 码 </label>
										<div class="col-sm-9">
											<input type="password" id="password"  name="password"  placeholder="请输入密码" class="col-xs-10 col-sm-5" />
										</div>
									</div>
                                      <div class="space-4"></div>
                                      <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"  >确认密码 </label>
										<div class="col-sm-9">
										 <input type="password"   class="col-xs-10 col-sm-5" id="confirm_password" name="confirm_password"   placeholder="请再次输入密码">
										</div>
									</div>
									<div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right">服务地区</label>
										<div class="col-sm-9"  id="distpicker5">
											<span class="input-icon">
											 <select class="form-control" id="province" name="province"></select>
												
											</span>

											<span class="input-icon input-icon-right">
												<select class="form-control" id="city"  name="city"></select>
											</span>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-6">律所地址</label>
									<div class="col-sm-9">
											<input type="text" id="firmaddress"  name="firmaddress"placeholder="省市区" class="col-xs-10 col-sm-5" />
										</div>
									</div>
                                  <div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-6">专攻方向</label>

										<div class="col-sm-5">
											<select multiple="" class="width-75 chosen-select" id="form_field_select_4" name="major" data-placeholder="选择你擅长解决的方向...">
																<option value="">&nbsp;</option>
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
										</div>
									</div>
									<div class="space-4"></div>
                                  <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-6">个人描述</label>

										<div class="col-sm-4">
											<textarea id="form-field-11" name="personalDescription" style="height:100px;" class="autosize-transition form-control"></textarea>
										</div>
									</div>
									<div class="space-4"></div>
									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button class="btn btn-info" type="button" onclick="add();">
												<i class="icon-ok bigger-110"></i>
												提交
											</button>

											&nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
												<i class="icon-undo bigger-110"></i>
												重置
											</button>
										</div>
									</div>
    <script> 
function add(){
           var form = document.getElementById('lawyerinfo');  
           var formdata = new FormData(form); 
             $.ajax({
		     type: "POST",
		     url: "lawyer/lawyerEdit.do",
		     data: formdata,
		     cache: false,
             processData: false,  
             contentType: false,  
		     dataType:"json",
		     success: function(result) {
		     console.info(result.code);
		     if(result.code==0){
		       location.reload();
		       alert("修改成功");
		     }
		    },
		     error: function(XMLHttpRequest, textStatus, errorThrown) {
		                    
		        }
		 });
         }</script>
									<div class="hr hr-24"></div>
									<div class="space-24"></div>
                                     <h3 class="header smaller lighter blue">
										上传头像
									</h3>
									<div class="row">
										<div class="col-sm-12">
											<div class="widget-box">
												<div class="widget-header">
													<h4>上传头像</h4>

													<span class="widget-toolbar">
														<a href="#" data-action="collapse">
															<i class="icon-chevron-up"></i>
														</a>
														<a href="#" data-action="close">
															<i class="icon-remove"></i>
														</a>
													</span>
												</div>

											<div class="widget-body">
												<div class="widget-main">
												<label>
										        <i class="icon-umbrella bigger-120 blue">只允许上传一张</i>
														</label>
<input  type="file" id="id-input-file-3" onchange="setImg(this);" />
<script>
  var image = ''; 
   function setImg(obj){//用于进行图片上传，返回地址
          var f=$(obj).val();
          alert(f);
          if(f == null || f ==undefined || f == ''){
              return false;
          }
          if(!/\.(?:png|jpg|bmp|gif|PNG|JPG|BMP|GIF)$/.test(f))
          {
              $(obj).val('');
              alert("文件格式错误");
              return false;
          }
          var data = new FormData();
          $.each($(obj)[0].files,function(i,file){
              data.append('file', file);
          });
          console.info(data);
          $.ajax({
              type: "POST",
              url: "image/imageUpload.do",
              data: data,
              cache: false,
              contentType: false,    //不可缺
              processData: false,    //不可缺
              dataType:"json",
              success: function(suc) {
                  if(suc.code==0){
                   // $("#thumbUrl").val(suc.message);//将地址存储好
                    //$("#thumburlShow").attr("src",suc.message);//显示图片
                    
                        alert("上传成功") ;                                  
                      }else{
                      alert("上传失败") ; 
                     
                  }
              },
              error: function(XMLHttpRequest, textStatus, errorThrown) {
                  
              }
          });
      } 
                                       </script>

													</div>
												</div>
											</div>
										</div>
										
									</div>

								</form>

								<div class="hr hr-18 dotted hr-double"></div>
								
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->
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
		<script src="assets/js/chosen.jquery.min.js"></script>
		<script src="assets/js/fuelux/fuelux.spinner.min.js"></script>
		<script src="assets/js/date-time/bootstrap-datepicker.min.js"></script>
		<script src="assets/js/date-time/bootstrap-timepicker.min.js"></script>
		<script src="assets/js/date-time/moment.min.js"></script>
		<script src="assets/js/date-time/daterangepicker.min.js"></script>
		<script src="assets/js/bootstrap-colorpicker.min.js"></script>
		<script src="assets/js/jquery.knob.min.js"></script>
		<script src="assets/js/jquery.autosize.min.js"></script>
		<script src="assets/js/jquery.inputlimiter.1.3.1.min.js"></script>
		<script src="assets/js/jquery.maskedinput.min.js"></script>
		<script src="assets/js/bootstrap-tag.min.js"></script>
       <script type="text/javascript" src="plug_in_unit/other/jquery.validate.min.js"></script></head>
       <script type="text/javascript" src="plug_in_unit/other/messages_zh.min.js"></script>
		<script type="text/javascript" src="js/validate.js"></script>
		<!-- ace scripts -->

		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<script type="text/javascript" src="plug_in_unit/Bootstrap/js/distpicker.data.js"></script>
        <script type="text/javascript" src="plug_in_unit/Bootstrap/js/distpicker.js"></script>
       <script type="text/javascript" src="plug_in_unit/Bootstrap/js/main.js"></script>

		<script type="text/javascript">
		
			jQuery(function($) {
			$(".chosen-select").chosen(); 
				$('#chosen-multiple-style').on('click', function(e){
					var target = $(e.target).find('input[type=radio]');
					var which = parseInt(target.val());
					if(which == 2) $('#form-field-select-4').addClass('tag-input-style');
					 else $('#form-field-select-4').removeClass('tag-input-style');
				});
				$('#id-input-file-3').ace_file_input({
					style:'well',
					btn_choose:'拖拽要上传的文件或者点击上传',
					btn_change:null,
					no_icon:'icon-cloud-upload',
					droppable:true,
					thumbnail:'small'//large | fit
					//,icon_remove:null//set null, to hide remove/reset button
					,
					preview_error : function(filename, error_code) {
						
					}
			
				}).on('change', function(){
					//console.log($(this).data('ace_input_files'));
					//console.log($(this).data('ace_input_method'));
					
				});
				
				$('#id-file-format').removeAttr('checked').on('change', function() {
					var before_change
					var btn_choose
					var no_icon
					if(this.checked) {
						btn_choose = "Drop images here or click to choose";
						no_icon = "icon-picture";
						before_change = function(files, dropped) {
							var allowed_files = [];
							for(var i = 0 ; i < files.length; i++) {
								var file = files[i];
								if(typeof file === "string") {
									//IE8 and browsers that don't support File Object
									if(! (/\.(jpe?g|png|gif|bmp)$/i).test(file) ) return false;
								}
								else {
									var type = $.trim(file.type);
									if( ( type.length > 0 && ! (/^image\/(jpe?g|png|gif|bmp)$/i).test(type) )
											|| ( type.length == 0 && ! (/\.(jpe?g|png|gif|bmp)$/i).test(file.name) )//for android's default browser which gives an empty string for file.type
										) continue;//not an image so don't keep this file
								}
								
								allowed_files.push(file);
							}
							if(allowed_files.length == 0) return false;
			
							return allowed_files;
						}
					}
					else {
						btn_choose = "Drop files here or click to choose";
						no_icon = "icon-cloud-upload";
						before_change = function(files, dropped) {
							return files;
						}
					}
					var file_input = $('#id-input-file-3');
					file_input.ace_file_input('update_settings', {'before_change':before_change, 'btn_choose': btn_choose, 'no_icon':no_icon})
					file_input.ace_file_input('reset_input');
				});
			});
		</script>
	</body>
</html>
