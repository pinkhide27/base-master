<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<%--<link rel="stylesheet" type="text/css" href="../resource/commons/jeasyui/themes/default/easyui.css">--%>
		<%--<link rel="stylesheet" type="text/css" href="../resource/commons/jeasyui/themes/icon.css">--%>
		<%--<link rel="stylesheet" type="text/css" href="../resource/commons/css/menu.css">--%>

		<%--<link rel="stylesheet" type="text/css" href="../../../resource/js/themes/pepper-grinder/easy.css" id="switch-style">
		<link rel="stylesheet" type="text/css" href="../../../resource/css/index.css">
		<script type="text/javascript" src="../../../resource/js/jquery.min.js"></script>
		<script type="text/javascript" src="../../../resource/js/jquery.easy.min.js"></script>
		<script type="text/javascript" src="../../../resource/js/admin/index.js"></script>--%>

		<%--<link rel="stylesheet" type="text/css" href="easy.css" id="switch-style">
		<link rel="stylesheet" type="text/css" href="index.css">
		<script type="text/javascript" src="jquery.min.js"></script>
		<script type="text/javascript" src="jquery.easy.min.js"></script>
		<script type="text/javascript" src="index.js"></script>
		<script type="text/javascript" src="../resource/commons/js/commons.js"></script>--%>

	<%--	<link rel="stylesheet" type="text/css" href="./../../../main/resources/css/easy.css" id="switch-style">
		<link rel="stylesheet" type="text/css" href="./../../../main/resources/css/index.css">
		<script type="text/javascript" src="./../../../main/resources/js/jquery.min.js"></script>
		<script type="text/javascript" src="./../../../main/resources/js/jquery.easy.min.js"></script>
		<script type="text/javascript" src="./../../../main/resources/js/index.js"></script>
		<script type="text/javascript" src="./../../../main/resources/js/commons.js"></script>--%>
		<title>后台管理系统</title>

		<spring:url value="/resource/css/demo.css" var="mainCss" />
		<spring:url value="/resource/css/index.css" var="mainCss" />
		<spring:url value="/resource/css/menu.css" var="mainCss" />
		<spring:url value="/resource/js/jquery.easy.min.js" var="mainJs" />
		<spring:url value="/resource/js/common.js" var="mainJs" />
		<spring:url value="/resource/js/index.js" var="mainJs" />
		<spring:url value="/resource/js/jquery.min.js" var="mainJs" />

		<link href="${mainCss}" rel="stylesheet" />
		<script src="${jqueryJs}"></script>
		<script src="${mainJs}"></script>

		<style type="text/css" class="indexcss">
			body {
				font: 12px/20px "微软雅黑", "宋体", Arial, sans-serif, Verdana, Tahoma;
				padding: 0;
				margin: 0;
			}
			a:link {
				text-decoration: none;
			}
			a:visited {
				text-decoration: none;
			}
			a:hover {
				text-decoration: underline;
			}
			a:active {
				text-decoration: none;
			}
			.cs-top {
				height:60px;
			}
			.cs-top-bg {
				width: 100%;
				height: 100%;
				background: url(../../../resource/js/themes/gray/images/old_wall.jpg) repeat-x;
			}
			.cs-top-logo {
				height: 40px;
				margin: 15px 0px 0px 5px;
				display: inline-block;
				color:#000000;font-size:22px;font-weight:bold;text-decoration:none
			}
			.cs-west {
				width:200px;padding:0px;
			}
			.cs-south {
				height:25px;background:url('../../../resource/js/themes/pepper-grinder/images/ui-bg_fine-grain_15_ffffff_60x60.png') repeat-x;padding:0px;text-align:center;
			}
			.cs-navi-tab {
				padding: 5px;
			}
			.cs-tab-menu {
				width:120px;
			}
			.cs-home-remark {
				padding: 10px;
			}
			.wrapper {
				float: right;
				height: 30px;
				margin-left: 10px;
			}
			.ui-skin-nav {
				float: right;
				padding: 0;
				margin-right: 10px;
				list-style: none outside none;
				height: 30px;
			}

			.ui-skin-nav .li-skinitem {
				float: left;
				font-size: 12px;
				line-height: 30px;
				margin-left: 10px;
				text-align: center;
			}
			.ui-skin-nav .li-skinitem span {
				cursor: pointer;
				width:10px;
				height:10px;
				display:inline-block;
			}
			.ui-skin-nav .li-skinitem span.cs-skin-on{
				border: 1px solid #FFFFFF;
			}

			.ui-skin-nav .li-skinitem span.gray{background-color:gray;}
			.ui-skin-nav .li-skinitem span.pepper-grinder{background-color:#BC3604;}
			.ui-skin-nav .li-skinitem span.blue{background-color:blue;}
			.ui-skin-nav .li-skinitem span.cupertino{background-color:#D7EBF9;}
			.ui-skin-nav .li-skinitem span.dark-hive{background-color:black;}
			.ui-skin-nav .li-skinitem span.sunny{background-color:#FFE57E;}
		</style>

	</head>

	<body class="easyui-layout">
	<div data-options="region:'north'" border="true" class="cs-top"><!--页面上方-->
		<div class="cs-top-bg">
			<div class="cs-top-logo">软件名称</div>
			<ul class="ui-skin-nav">	<!--skin颜色-->
				<li class="li-skinitem" title="gray"><span class="gray" rel="gray"></span></li>
				<li class="li-skinitem" title="pepper-grinder"><span class="pepper-grinder" rel="pepper-grinder"></span></li>
				<li class="li-skinitem" title="blue"><span class="blue" rel="blue"></span></li>
				<li class="li-skinitem" title="cupertino"><span class="cupertino" rel="cupertino"></span></li>
				<li class="li-skinitem" title="dark-hive"><span class="dark-hive" rel="dark-hive"></span></li>
				<li class="li-skinitem" title="sunny"><span class="sunny" rel="sunny"></span></li>
			</ul>
		</div>
	</div>
	<div data-options="region:'west'" border="true" split="true" title="Navigation" class="cs-west"><!--页面左侧-->
		<div class="easyui-accordion" fit="true" border="false">
			<div title="装备基础信息管理">
				<a href="javascript:void(0);" src="../resource/data.jsp" class="cs-navi-tab">人员基础信息</a></p>
				<a href="javascript:void(0);" src="../resource/data.jsp" class="cs-navi-tab">部门基础信息</a></p>
			</div>
			<div title="资料类型管理">
				<a href="javascript:void(0);" src="../resource/data.jsp" class="cs-navi-tab">资料信息管理</a></p>
				<a href="javascript:void(0);" src="../resource/data.jsp" class="cs-navi-tab">资料查询</a></p>
			</div>
			<div title="维修计划管理">
				<a href="javascript:void(0);" src="../resource/data.jsp" class="cs-navi-tab">装备运行日志</a></p>
				<a href="javascript:void(0);" src="../resource/data.jsp" class="cs-navi-tab">装备维修记录</a></p>
				<a href="javascript:void(0);" src="../resource/data.jsp" class="cs-navi-tab">装备维修预警</a></p>
			</div>
			<div title="软件管理">
				<a href="javascript:void(0);" src="../resource/data.jsp" class="cs-navi-tab">用户管理、修改密码</a></p>
				<a href="javascript:void(0);" src="../resource/data.jsp" class="cs-navi-tab">菜单管理、角色管理</a></p>
				<a href="javascript:void(0);" src="../resource/data.jsp" class="cs-navi-tab">数据字典、操作日志管理</a></p>
			</div>


		</div>
	</div>
	<div id="mainPanle" region="center" border="true" border="false">
		<div id="tabs" class="easyui-tabs"  fit="true" border="false" >
			<div title="Home">
				<div class="cs-home-remark">
					<h1>EasyUi Bootstrap 1.3.0 Demo</h1> <br>
					制作：xxx <br>
					博客：<a href="#" target="_blank">#</a><br>
					说明：EasyUi Bootstrap 1.3.0 Demo分类整理。
				</div>
			</div>
		</div>
	</div>

	<div region="south" border="false" class="cs-south">@tianshaojie@gmail.com</div>

	<div id="mm" class="easyui-menu cs-tab-menu">
		<div id="mm-tabupdate">刷新</div>
		<div class="menu-sep"></div>
		<div id="mm-tabclose">关闭</div>
		<div id="mm-tabcloseother">关闭其他</div>
		<div id="mm-tabcloseall">关闭全部</div>
	</div>
	</body>

</html>