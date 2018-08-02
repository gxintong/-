<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
		<meta charset="utf-8" />
		<title>成功案例</title>
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="css/main.css" type="text/css"></link>
    <link rel="stylesheet" href="css/header.css" type="text/css"></link>
    <link href="https://cdn.bootcss.com/bootstrap-table/1.12.1/bootstrap-table.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
		<!-- basic styles -->
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="assets/css/jquery-ui-1.10.3.custom.min.css" />
		<link rel="stylesheet" href="assets/css/jquery.gritter.css" />
		<link rel="stylesheet" href="assets/css/ace.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
        <link href="css/bootstrap-table.css" rel="stylesheet">
		<script src="assets/js/ace-extra.min.js"></script>
	</head>
<style>

  .assify_item a{display:inline-block;padding:0 5px;color:black;}.assify_item a:hover{color:#048dd6}
  .assify_more{width:40px;height:26px;cursor:pointer;background-position:-70px -81px}
  .assify_morehover{background-position:-100px -81px}
  .ask_classify_btn{margin-top:12px;border-top:#84ccc9 1px solid;height:34px}
  .l-sn-list {
    padding:10px 10px 10px;
}
.l-sn-list ul li {
    position:relative;
    padding:8px 0 8px 110px;
    line-height:24px; 
    height:30px;
    border-bottom:1px solid #f5f5f5;
}
.l-sn-list ul li b {
    position:absolute; left:0; top:10px;
    font-size:13px;
}
.l-sn-list ul li a {
    float:left;
    margin-right:20px;
    white-space:nowrap;
}
.more-bgf8 {
    position:absolute; left:0; right:0; bottom:0;
    padding:0 30px;
    height:42px; 
    background-color:#f8f8f8;
}
.more-bgf8 a { display:block; padding:10px 0; height:22px; line-height:22px; }
.more-bgf8 a:hover .i-art15 { background-position:-105px -16px; }
  .webLinks {
    height: 61px;
    line-height: 61px;
    background: #002b6e;
    color: #ffffff;
    font-size: 14px;
    margin-top: 19px;
}
.webLinks a {
    display: inline-block;
    height: 61px;
    margin-left: 4px;
    vertical-align: middle;
}
  .link1 {
    width: 228px;
    background: url(images/link1.png) no-repeat center center;
}
.link2 {
    width: 188px;
    background: url(images/link2.png) no-repeat center center;
}
.link3 {
    width: 168px;
    background: url(images/link3.png) no-repeat center center;
}
.link4 {
    width: 169px;
    background: url(images/link4.png) no-repeat center center;
}
.link5 {
    width: 241px;
    background: url(images/link5.png) no-repeat center center;
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
                        <li data-menu="zx"><a href="${pageContext.request.contextPath }/lawconsult.jsp">法律咨询</a></li>
                        <li class="active" data-menu="task"><a href="${pageContext.request.contextPath }/case.jsp">成功案例</a></li>
                        <li data-menu="blog"><a href="${pageContext.request.contextPath }/LawKnowledge.jsp">法律常识</a></li>
                    </ul>
                </div>
  </div>
  <!-- header结束 -->	
 
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
						<div class="page-header">
							<h1>
								案例类别
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="row">
									<div class="col-sm-9">
										<div class="tabbable tabs-left">
											<ul class="nav nav-tabs" id="myTab3">
												<li class="active">
													<a data-toggle="tab" href="#home3">
														<i class="pink icon-dashboard bigger-110"></i>
														民商法类
													</a>
												</li>

												<li>
													<a data-toggle="tab" href="#profile3">
														<i class="blue icon-user bigger-110"></i>
														公司法类
													</a>
												</li>

												<li>
													<a data-toggle="tab" href="#dropdown13">
														<i class="icon-rocket"></i>
														知识产权类
													</a>
												</li>
												<li>
													<a data-toggle="tab" href="#dropdown14">
														<i class="icon-rocket"></i>
														交通事故
													</a>
												</li>
												<li>
													<a data-toggle="tab" href="#dropdown15">
														<i class="icon-rocket"></i>
														行政诉讼
													</a>
												</li>
												<li>
													<a data-toggle="tab" href="#dropdown16">
														<i class="icon-rocket"></i>
														金融类
													</a>
												</li>
											</ul>

								<div class="tab-content">
									<div id="home3" class="tab-pane in active" style="height:170px;">
										<div class="assify_item">
									    <div class="l-sn-list">
				                        <ul class="mt10">
				                        <li><b><a  href="javascript:void(0);"  onclick="work(this)">婚姻家庭</a></b><p class="clearfix"><a href="javascript:void(0);" onclick="work(this)">结婚</a><a href="javascript:void(0);"  onclick="work(this)">离婚</a><a href="javascript:void(0);"  onclick="work(this)">子女抚养</a></p></li>
				                        <li><b><a  href="javascript:void(0);"  onclick="work(this)">合同</a></b><p class="clearfix"><a href="javascript:void(0);"  onclick="work(this)">买卖合同</a><a href="javascript:void(0);"  onclick="work(this)">行政诉讼证据保全</a><a href="javascript:void(0);"  onclick="work(this)">行政诉讼证据责任</a>
				                        <a href="javascript:void(0);"  onclick="work(this)">行政诉讼证据质证</a></p></li>
				                        <li><b><a href="javascript:void(0);"  onclick="work(this)">继承法</a></b><p class="clearfix"><a  href="javascript:void(0);" onclick="work(this)">行政处罚行为</a><a href="javascript:void(0);"  onclick="work(this)">行政许可行为</a><a href="javascript:void(0);"  onclick="work(this)">行政不作为</a>
				                        <a href="javascript:void(0);"  onclick="work(this)">其他行政受案范围</a></p></li>
				                        <li><b><a href="javascript:void(0);"  onclick="work(this)">劳动法</a></b><p class="clearfix"><a  href="javascript:void(0);" onclick="work(this)">行政起诉</a><a href="javascript:void(0);"  onclick="work(this)">行政诉讼受理</a><a href="javascript:void(0);"  onclick="work(this)">行政诉讼审理</a>
				                        <a href="javascript:void(0);"  onclick="work(this)">行政诉讼判决</a></p></li>
				                        </ul>
				                     </div>
                        			</div>
								</div>
						<div id="profile3" class="tab-pane" style="height:70px;">
						<div class="assify_item">
                        <div class="l-sn-list">
                        <ul class="mt10">
                        <li><b><a href="javascript:void(0);"  onclick="work(this)">公司法</a></b><p class="clearfix"><a href="/laws/xzssf/xzgx/xzjbgx/">行政级别管辖</a><a href="/laws/xzssf/xzgx/xzdygx/">行政地域管辖</a><a href="/laws/xzssf/xzgx/xzgxqyy/">行政管辖权异议</a></p></li>
                        <li><b><a href="javascript:void(0);"  onclick="work(this)">外商投资</a></b><p class="clearfix"><a href="/laws/xzssf/xzsszj/xzsszjlx/">行政诉讼证据类型</a><a href="/laws/xzssf/xzsszj/xzsszjbq/">行政诉讼证据保全</a><a href="/laws/xzssf/xzsszj/xzsszjjzzr/">行政诉讼证据责任</a><a href="/laws/xzssf/xzsszj/xzsszjzz/">行政诉讼证据质证</a></p></li>
                        <li><b><a href="javascript:void(0);""  onclick="work(this)"">公司并购</a></b><p class="clearfix"><a href="javascript:void(0);""  onclick="work(this)"xzcfxw/">行政处罚行为</a><a href="javascript:void(0);""  onclick="work(this)"xzxkxw/">行政许可行为</a><a href="javascript:void(0);""  onclick="work(this)"xzbzw/">行政不作为</a><a href="javascript:void(0);""  onclick="work(this)"qtxzsa/">其他行政受案范围</a></p></li>
                        <li><b><a href=href="javascript:void(0);"  onclick="work(this)">公司税务</a></b><p class="clearfix"><a href="/laws/xzssf/xingzhengsusongchengxu/xingzhengqisu/">行政起诉</a><a href="/laws/xzssf/xingzhengsusongchengxu/xingzhengshouli/">行政诉讼受理</a><a href="/laws/xzssf/xingzhengsusongchengxu/xzsssl/">行政诉讼审理</a><a href="/laws/xzssf/xingzhengsusongchengxu/xzsspj/">行政诉讼判决</a></p></li>
                         </ul>
                       </div>
                        </div>
					</div>

					 <div id="dropdown13" class="tab-pane" style="height:75px;">
						<div class="assify_item">
                       <div class="l-sn-list">
                        <ul class="mt10">
                        <li><b><a href="javascript:void(0);"  onclick="work(this)">知识产权</a></b><p class="clearfix"><a href="/laws/xzssf/xzgx/xzjbgx/">行政级别管辖</a><a href="/laws/xzssf/xzgx/xzdygx/">行政地域管辖</a><a href="/laws/xzssf/xzgx/xzgxqyy/">行政管辖权异议</a></p></li>
                        <li><b><a href="javascript:void(0);"  onclick="work(this)">商标法</a></b><p class="clearfix"><a href="/laws/xzssf/xzsszj/xzsszjlx/">行政诉讼证据类型</a><a href="/laws/xzssf/xzsszj/xzsszjbq/">行政诉讼证据保全</a><a href="/laws/xzssf/xzsszj/xzsszjjzzr/">行政诉讼证据责任</a><a href="/laws/xzssf/xzsszj/xzsszjzz/">行政诉讼证据质证</a></p></li>
                        <li><b><a href="javascript:void(0);"  onclick="work(this)"">专利法</a></b><p class="clearfix"><a href="javascript:void(0);""  onclick="work(this)"xzcfxw/">行政处罚行为</a><a href="javascript:void(0);""  onclick="work(this)"xzxkxw/">行政许可行为</a><a href="javascript:void(0);""  onclick="work(this)"xzbzw/">行政不作为</a><a href="javascript:void(0);""  onclick="work(this)"qtxzsa/">其他行政受案范围</a></p></li>
                        <li><b><a href="javascript:void(0);"  onclick="work(this)">著作权法</a></b><p class="clearfix"><a href="/laws/xzssf/xingzhengsusongchengxu/xingzhengqisu/">行政起诉</a><a href="/laws/xzssf/xingzhengsusongchengxu/xingzhengshouli/">行政诉讼受理</a><a href="/laws/xzssf/xingzhengsusongchengxu/xzsssl/">行政诉讼审理</a><a href="/laws/xzssf/xingzhengsusongchengxu/xzsspj/">行政诉讼判决</a></p></li>
                         </ul>
                       </div>
                       </div>
					</div>
					<div id="dropdown13" class="tab-pane" style="height:85px;">
						<div class="assify_item">
                            
                        <div class="l-sn-list">
                        <ul class="mt10">
                        <li><b><a href="javascript:void(0);"  onclick="work(this)">行政管辖</a></b><p class="clearfix"><a href="/laws/xzssf/xzgx/xzjbgx/">行政级别管辖</a><a href="/laws/xzssf/xzgx/xzdygx/">行政地域管辖</a><a href="/laws/xzssf/xzgx/xzgxqyy/">行政管辖权异议</a></p></li>
                        <li><b><a href="javascript:void(0);"  onclick="work(this)">行政诉讼证据</a></b><p class="clearfix"><a href="/laws/xzssf/xzsszj/xzsszjlx/">行政诉讼证据类型</a><a href="/laws/xzssf/xzsszj/xzsszjbq/">行政诉讼证据保全</a><a href="/laws/xzssf/xzsszj/xzsszjjzzr/">行政诉讼证据责任</a><a href="/laws/xzssf/xzsszj/xzsszjzz/">行政诉讼证据质证</a></p></li>
                        <li><b><a href="javascript:void(0);"  onclick="work(this)"">行政受案范围</a></b><p class="clearfix"><a href="javascript:void(0);""  onclick="work(this)"xzcfxw/">行政处罚行为</a><a href="javascript:void(0);""  onclick="work(this)"xzxkxw/">行政许可行为</a><a href="javascript:void(0);""  onclick="work(this)"xzbzw/">行政不作为</a><a href="javascript:void(0);""  onclick="work(this)"qtxzsa/">其他行政受案范围</a></p></li>
                        <li><b><a href="javascript:void(0);"  onclick="work(this)">行政诉讼程序</a></b><p class="clearfix"><a href="/laws/xzssf/xingzhengsusongchengxu/xingzhengqisu/">行政起诉</a><a href="/laws/xzssf/xingzhengsusongchengxu/xingzhengshouli/">行政诉讼受理</a><a href="/laws/xzssf/xingzhengsusongchengxu/xzsssl/">行政诉讼审理</a><a href="/laws/xzssf/xingzhengsusongchengxu/xzsspj/">行政诉讼判决</a></p></li>
                         </ul>
                       </div>
                       </div>
					</div>
					 <div id="dropdown14" class="tab-pane" style="height:100px;">
						<div class="assify_item">
                            
                        <div class="l-sn-list">
                        <ul class="mt10">
                        <li><b><a href="/laws/jiaotongshigu/jtsgjd/">交通事故鉴定</a></b><p class="clearfix"><a href="/laws/jiaotongshigu/jtsgjd/jtsgjdbz/">交通事故鉴定标准</a><a href="/laws/jiaotongshigu/jtsgjd/jtsgjccx/">交通事故鉴定程序</a><a href="/laws/jiaotongshigu/jtsgjd/jtsgjds/">交通事故鉴定书</a><a href="/laws/jiaotongshigu/jtsgjd/jtsgjdf/">交通事故鉴定费</a><a href="/laws/jiaotongshigu/jtsgjd/jtsgpcan/">交通事故评残</a></p></li><li><b><a href="/laws/jiaotongshigu/jtsgrd/">交通事故认定</a></b><p class="clearfix"><a href="/laws/jiaotongshigu/jtsgrd/jtsgzrrd/">交通事故责任认定</a><a href="/laws/jiaotongshigu/jtsgrd/jtsgscrd/">交通事故伤残认定</a><a href="/laws/jiaotongshigu/jtsgrd/jtsggsrd/">交通事故工伤认定</a><a href="/laws/jiaotongshigu/jtsgrd/jtsgrdqx/">交通事故认定期限</a><a href="/laws/jiaotongshigu/jtsgrd/jtrendingshu/">交通事故认定书</a></p></li>
                        <li><b><a href="/laws/jiaotongshigu/jtsgcl/">交通事故处理</a></b><p class="clearfix"><a href="/laws/jiaotongshigu/jtsgcl/sgrd/">交通事故处理规定</a><a href="/laws/jiaotongshigu/jtsgcl/clcx/">交通事故处理程序</a><a href="/laws/jiaotongshigu/jtsgcl/jttiaojie/">交通事故调解</a><a href="/laws/jiaotongshigu/jtsgcl/clqx/">交通事故处理期限</a></p></li>
                        <li><b><a href="/laws/jiaotongshigu/sgpc/">交通事故赔偿</a></b><p class="clearfix"><a href="/laws/jiaotongshigu/sgpc/pcbz3077/">交通事故赔偿标准</a><a href="/laws/jiaotongshigu/sgpc/pcxm/">交通事故赔偿项目</a><a href="/laws/jiaotongshigu/sgpc/jtsgswpc/">交通事故死亡赔偿</a><a href="/laws/jiaotongshigu/sgpc/jtsgjspc/">交通事故精神赔偿</a><a href="/laws/jiaotongshigu/sgpc/jtsggspc/">交通事故工伤赔偿</a><a href="/laws/jiaotongshigu/sgpc/pcqx/">交通事故赔偿期限</a><a href="/laws/jiaotongshigu/sgpc/jtsgpcjz/">交通事故赔偿举证</a><a href="/laws/jiaotongshigu/sgpc/jtsgpcxys/">交通事故赔偿文书</a></p></li>
                        </ul></div>
                       </div>
					</div>
					<div id="dropdown15" class="tab-pane" style="height:140px;">
						<div class="assify_item">
                            
                        <div class="l-sn-list">
                        <ul class="mt10">
                        <li><b><a href="javascript:void(0);"  onclick="work(this)">行政管辖</a></b><p class="clearfix"><a href="/laws/xzssf/xzgx/xzjbgx/">行政级别管辖</a><a href="/laws/xzssf/xzgx/xzdygx/">行政地域管辖</a><a href="/laws/xzssf/xzgx/xzgxqyy/">行政管辖权异议</a></p></li>
                        <li><b><a href="javascript:void(0);"  onclick="work(this)">行政诉讼证据</a></b><p class="clearfix"><a href="/laws/xzssf/xzsszj/xzsszjlx/">行政诉讼证据类型</a><a href="/laws/xzssf/xzsszj/xzsszjbq/">行政诉讼证据保全</a><a href="/laws/xzssf/xzsszj/xzsszjjzzr/">行政诉讼证据责任</a><a href="/laws/xzssf/xzsszj/xzsszjzz/">行政诉讼证据质证</a></p></li>
                        <li><b><a href="javascript:void(0);"  onclick="work(this)"">行政受案范围</a></b><p class="clearfix"><a href="javascript:void(0);""  onclick="work(this)"xzcfxw/">行政处罚行为</a><a href="javascript:void(0);""  onclick="work(this)"xzxkxw/">行政许可行为</a><a href="javascript:void(0);""  onclick="work(this)"xzbzw/">行政不作为</a><a href="javascript:void(0);""  onclick="work(this)"qtxzsa/">其他行政受案范围</a></p></li>
                        <li><b><a href="javascript:void(0);"  onclick="work(this)">行政诉讼程序</a></b><p class="clearfix"><a href="/laws/xzssf/xingzhengsusongchengxu/xingzhengqisu/">行政起诉</a><a href="/laws/xzssf/xingzhengsusongchengxu/xingzhengshouli/">行政诉讼受理</a><a href="/laws/xzssf/xingzhengsusongchengxu/xzsssl/">行政诉讼审理</a><a href="/laws/xzssf/xingzhengsusongchengxu/xzsspj/">行政诉讼判决</a></p></li>
                         </ul>
                       </div>
                       </div>
					</div>
					<div id="dropdown16" class="tab-pane" style="height:165px;">
						<div class="assify_item">
                            
                        <div class="l-sn-list">
                        <ul class="mt10">
                        <li><b><a href="javascript:void(0);"  onclick="work(this)">金融</a></b><p class="clearfix"><a href="/laws/xzssf/xzgx/xzjbgx/">行政级别管辖</a><a href="/laws/xzssf/xzgx/xzdygx/">行政地域管辖</a><a href="/laws/xzssf/xzgx/xzgxqyy/">行政管辖权异议</a></p></li>
                        <li><b><a href="javascript:void(0);"  onclick="work(this)">银行</a></b><p class="clearfix"><a href="/laws/xzssf/xzsszj/xzsszjlx/">行政诉讼证据类型</a><a href="/laws/xzssf/xzsszj/xzsszjbq/">行政诉讼证据保全</a><a href="/laws/xzssf/xzsszj/xzsszjjzzr/">行政诉讼证据责任</a><a href="/laws/xzssf/xzsszj/xzsszjzz/">行政诉讼证据质证</a></p></li>
                        <li><b><a href="javascript:void(0);"  onclick="work(this)"">保险</a></b><p class="clearfix"><a href="javascript:void(0);""  onclick="work(this)"xzcfxw/">行政处罚行为</a><a href="javascript:void(0);""  onclick="work(this)"xzxkxw/">行政许可行为</a><a href="javascript:void(0);""  onclick="work(this)"xzbzw/">行政不作为</a><a href="javascript:void(0);""  onclick="work(this)"qtxzsa/">其他行政受案范围</a></p></li>
                        <li><b><a href="javascript:void(0);"  onclick="work(this)">基金</a></b><p class="clearfix"><a href="/laws/xzssf/xingzhengsusongchengxu/xingzhengqisu/">行政起诉</a><a href="/laws/xzssf/xingzhengsusongchengxu/xingzhengshouli/">行政诉讼受理</a><a href="/laws/xzssf/xingzhengsusongchengxu/xzsssl/">行政诉讼审理</a><a href="/laws/xzssf/xingzhengsusongchengxu/xzsspj/">行政诉讼判决</a></p></li>
                         </ul>
                       </div>
                       </div>
					</div>
					</div>
					</div>
					</div><!-- /span -->
				</div><!-- /row -->
					
				<script type="text/javascript">
				var $path_assets = "assets";//this will be used in gritter alerts containing images
				</script>

			<!-- PAGE CONTENT ENDS -->
			</div><!-- /.col -->
			</div><!-- /.row -->
			 <div class="webLinks ng-scope">
    <div class="mainer"><span>网站链接：</span>
        <a href="http://www.moj.gov.cn" target="_blank" class="link1"></a>
        <a href="http://www.legalinfo.gov.cn/" target="_blank" class="link2"></a>
        <a href="http://www.acla.org.cn" target="_blank" class="link3"></a>
        <a href="http://www.chinalegalaid.gov.cn/" target="_blank" class="link4"></a>
        <a href="http://www.chinanotary.org/" target="_blank" class="link5"></a>
    </div>
</div>
		 <table data-toggle="table" id="caseTable"  
       data-show-refresh="true" data-show-toggle="false" data-show-columns="false" data-search="true" data-select-item-name="toolbar1" data-pagination="true" data-sort-order="desc">  
       <thead>  
          <tr>            
              <th data-field="eid" >案例号</th>                                               
              <th data-field="name" >发布人</th>  
              <th data-field="type">类型</th>  
              <th data-field="time" >时间</th> 
              <th data-field="etitile" >标题 </th>
             <!--  <th class="col-xs-2" data-field="action" data-formatter="actionFormatter" data-events="actionEvents">Action</th>      -->
          </tr>  
       </thead>  
       <tbody>  
       </tbody>  
</table>

					</div><!-- /.page-content -->
				</div><!-- /.main-content -->
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
        $('#caseTable').bootstrapTable('destroy');  
        //初始化表格,动态从服务器加载数据  
        $("#caseTable").bootstrapTable({  
            method: "post",  //使用post请求到服务器获取数据  
            url: "lawexample/selectLawexample.do", //获取数据的Servlet地址  
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
            showColumns: false,                  //是否显示所有的列（选择显示的列）
            minimumCountColumns: 2,             //最少允许的列数
            clickToSelect: true,                //是否启用点击选中行
            uniqueId: "eid",  //每一行的唯一标识，一般为主键列
            onClickRow: function(row,element,field){ 
            var eid=row.eid;
             window.location.href = "caseDetail.jsp?eid="+eid;
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
        //alert($(target).text()); 
        var type=$(target).text();
         $.ajax({  
            type : 'post',  
            async:false, 
            url : 'lawexample/selectLawexample.do',
            data:{
              type:type
            },
            dataType : 'json',  
            success : function(datas) {
            	$('#caseTable').bootstrapTable('load', datas);
            } 
        });
    }  
     
  </script>
	</body>
</html>
