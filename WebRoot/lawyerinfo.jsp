<%@page import="cn.com.dhcc.footPlatform.background.domain.LawyerInfo"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String lawyerId=request.getParameter("lawyer_id");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
	<head>
		
		<title>律师详情信息页面</title>
	    <meta http-equiv="Content-Type" content="multipart/form-data; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
       
		<!-- basic styles -->

		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="css/main.css" type="text/css"></link>
        <link rel="stylesheet" href="css/header.css" type="text/css"></link>
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
	<style> 

.radio-line select{width:100%;}
.radio-line select{width:160px;display:inline-block;margin:10px 0px;}</style>
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
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>
				<div class="main-content" style="margin-left:10px;">
					<div class="page-content">
						<div class="page-header" id="page-header">
							<h1>律师</h1>
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
														<a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
															<i class="icon-circle light-green middle"></i>
															&nbsp;
															<span class="white" id="lawyer_name">律师</span>
														</a>
													</div>
												</div>
											</div>

											<div class="space-6"></div>

											<div class="profile-contact-info">
												<div class="profile-contact-links align-left">
													<a class="btn btn-link" href='javascript:;'onclick="reply('law234234')">
														<i class="icon-envelope bigger-120 pink"></i>
														发送咨询
													</a>
												</div>

											</div>
											<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					发送咨询
				</h4>
			</div>
			<form action="consult/add.do" method="post">
			<div class="radio-line modal-body">
			<div><p id="content"></p>
			<input id="lawyer" name="lawyer" hidden="true"></div>
			<input type="text" value="2" name="mark" hidden="true">
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
          <div data-toggle="distpicker"  style="display:inline">
								  <select class="form-control" id="province1" name="province"></select>
								  <select class="form-control" id="city1"  name="city"></select>
							  </div>
         
         
			<div>
			<textarea  name="content" style="height:100px;" class="autosize-transition form-control" placeholder="请详细描述你的法律问题，至少20个字，以便得到律师专业的意见！"></textarea></div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="submit" class="btn btn-primary">
					提交
				</button>
			</div>
			</form>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
										</div>

										<div class="col-xs-12 col-sm-9">
											<div class="space-12"></div>
                                        <!-- 个人信息 -->
											<div class="profile-user-info profile-user-info-striped">
												<div class="profile-info-row">
													<div class="profile-info-name">姓名 </div>

													<div class="profile-info-value">
														<span class="editable" id="username"></span>
													</div>
												</div>

												<div class="profile-info-row">
													<div class="profile-info-name">地址 </div>

													<div class="profile-info-value">
														<i class="icon-map-marker light-orange bigger-110"></i>
														<span class="editable" id="province"></span>
														<span class="editable" id="city"></span>
													</div>
												</div>

												<div class="profile-info-row">
													<div class="profile-info-name">电话</div>

													<div class="profile-info-value">
														<span class="editable" id="phone"></span>
													</div>
												</div>
                                               <div class="profile-info-row">
													<div class="profile-info-name">执业律所</div>

													<div class="profile-info-value">
														<span class="editable" id="firm"></span>
													</div>
												</div>
												<div class="profile-info-row">
													<div class="profile-info-name">执业证号</div>

													<div class="profile-info-value">
														<span class="editable" id="license"></span>
													</div>
												</div>
												<div class="profile-info-row">
													<div class="profile-info-name">律所地址 </div>

													<div class="profile-info-value">
														<span class="editable" id="firmaddress"></span>
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
								</div>
                           <div class="grid3 center" id="major0">
									<div class="easy-pie-chart percentage easyPieChart" data-percent="45" data-color="#CA5952" style="width: 72px; height: 72px; line-height: 72px; color: rgb(202, 89, 82);">
										<span class="percent">50</span>%
									<canvas width="72" height="72"></canvas></div>
									<div class="space-2" ></div>
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
								他的发布
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
       <script type="text/javascript" src="plug_in_unit/Bootstrap/js/distpicker.data.js"></script>
        <script type="text/javascript" src="plug_in_unit/Bootstrap/js/distpicker.js"></script>
		<script type="text/javascript" src="plug_in_unit/Bootstrap/js/main.js"></script>
		<!-- inline scripts related to this page -->

	  <script src="js/bootstrap.min.js"></script>
		<script src="https://cdn.bootcss.com/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-table/1.12.1/locale/bootstrap-table-zh-CN.min.js"></script>
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
         var lawyerId="<%=lawyerId%>";
       
        $('#exampleTable').bootstrapTable('destroy'); 
        $('#singleconsultTable').bootstrapTable('destroy');  
        //初始化表格,动态从服务器加载数据  
        $("#exampleTable").bootstrapTable({  
            method: "post",  //使用post请求到服务器获取数据  
            url: "lawexample/selectLawexample.do?lawyerId="+lawyerId, //获取数据的Servlet地址  
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
            onClickRow: function(row,element,field){ 
            var eid=row.eid;
             window.location.href = "caseDetail.jsp?eid="+eid;
            },
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
            url: "lawknowledge/selectLawknowledge.do?lawyerId="+lawyerId, //获取数据的Servlet地址  
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
       
       function  lawlnfo() {
         var lawyerId="<%=lawyerId%>";
             $.ajax({
                type: "POST",
                url: "lawyer/lawyerdetail.do",
                cache: false,
                data:{lawyerId:lawyerId},
                dataType:"json",
                success: function(data) {
                console.info(data);
                var major=data.major;
                var arr=major.split(",");
                $("#page-header h1").prepend(data.name);
                $("#lawyer_name").prepend(data.name);
                 $("#avatar").attr("src",data.imagePath);
                 $(".widget-main p").append(data.personalDescription);
                 $("#major0").append(arr[0]);
                 $("#major1").append(arr[1]);
                 $("#major2").append(arr[2]);
                  $("#phone").append(data.phone);
                 $("#firm").append(data.firm);
                 $("#license").append(data.license);
                  $("#firmaddress").append(data.firmaddress);
                  $("#username").append(data.name);
                 $("#province").append(data.province);
                  $("#city").append(data.city);
                },
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                    
                }
            });
       }
    function reply(){
         $('#myModal').modal('show');
         var lawyerId="<%=lawyerId%>";
          $("#lawyer").val(lawyerId);
       }

                     
		</script>
	</body>
</html>
