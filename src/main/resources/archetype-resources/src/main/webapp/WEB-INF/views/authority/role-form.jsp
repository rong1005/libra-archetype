#set($symbol_pound ='#')
#set($symbol_dollar ='$')
#set($symbol_escape ='\')
<%@page import="${package}.xutil.enums.Whether"%>
<%@page import="${package}.xutil.enums.RoleType"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${symbol_dollar}{pageContext.request.contextPath}"/>
<c:set var="roleType_admin" value="<%=RoleType.ADMIN %>" />
<c:set var="roleType_user" value="<%=RoleType.USER %>" />
<c:set var="default_yes" value="<%=Whether.YES %>" />
<c:set var="default_not" value="<%=Whether.NOT %>" />
<!DOCTYPE html>
<html lang="zh">
<head>
	<title>角色管理</title>
	<!-- UNIFORM 优化表单样式 -->
	<link rel="stylesheet" type="text/css" href="${symbol_dollar}{ctx}/static/js/uniform/css/uniform.default.min.css" />
</head>
<body>

	<div id="main-content">
		<div class="container">
			<div class="row">
				<div id="content" class="col-lg-12">
					<!-- PAGE HEADER-->
					<div class="row">
						<div class="col-sm-12">
							<div class="page-header">
								<!-- STYLER -->
								
								<!-- /STYLER -->
								<!-- BREADCRUMBS -->
								<ul class="breadcrumb">
									<li>
										<i class="fa fa-home"></i>
										<a href="${symbol_dollar}{ctx}/workbench">主页</a>
									</li>
									<li>
										<a href="${symbol_dollar}{ctx}/role">角色列表</a>
									</li>
									<li>创建角色</li>
								</ul>
								<!-- /BREADCRUMBS -->
								
							</div>
						</div>
					</div>
					<!-- /PAGE HEADER -->
					
					<div class="box border primary">
						<div class="box-title">
							<h4><i class="fa fa-table"></i>创建角色</h4>
							<div class="tools hidden-xs">
								<a href="javascript:;" class="collapse">
									<i class="fa fa-chevron-up"></i>
								</a>
								<a href="javascript:;" class="remove">
									<i class="fa fa-times"></i>
								</a>
							</div>
						</div>
						
						<div class="box-body">
							<form id="inputForm" class="form-horizontal" action="${symbol_dollar}{ctx}/role/${symbol_dollar}{action}" method="post">
								<input type="hidden" name="id" value="${symbol_dollar}{role.id}"/>
								
								<div class="form-group">
									<label class="col-sm-2 control-label">角色名称</label>
									<div class="col-sm-10">
										<input type="text" id="role_name" name="name" value="${symbol_dollar}{role.name}" class="form-control" placeholder="名称"/>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-sm-2 control-label">角色代码</label>
									<div class="col-sm-10">
										<input type="text" id="role_code" name="code" value="${symbol_dollar}{role.code}" class="form-control" placeholder="代码"/>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-sm-2 control-label">角色类型</label>
									<div class="col-sm-10">
										<label class="radio-inline"> <input type="radio" name="roleType" class="uniform" value="${symbol_dollar}{roleType_admin}">${symbol_dollar}{roleType_admin.value}</label> 
										<label class="radio-inline"> <input type="radio" name="roleType" class="uniform" value="${symbol_dollar}{roleType_user}" checked="checked">${symbol_dollar}{roleType_user.value}</label> 
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-2 control-label">是否默认角色</label>
									<div class="col-sm-10">
										<label class="radio-inline"> <input type="radio" name="defaultRole" class="uniform" value="${symbol_dollar}{default_yes}">${symbol_dollar}{default_yes.value}</label> 
										<label class="radio-inline"> <input type="radio" name="defaultRole" class="uniform" value="${symbol_dollar}{default_not}" checked="checked">${symbol_dollar}{default_not.value}</label> 
									</div>
								</div>
												  
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<input id="submit_btn" class="btn btn-success in-loading" type="submit" value="提交"/>&nbsp;
										<input id="cancel_btn" class="btn btn-default in-loading" type="button" value="返回" onclick="history.back()"/>
									</div>
								</div>
												  
							</form>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>	
	
	<!-- JAVASCRIPTS -->
	<!-- 引入公共JS脚本 -->
	<%@ include file="/WEB-INF/layouts/include_script.jsp"%>
	
	<!-- UNIFORM 优化表单样式 -->
	<script type="text/javascript" src="${symbol_dollar}{ctx}/static/js/uniform/jquery.uniform.min.js"></script>
	
	<!-- 自定义JS脚本 -->
	<script src="${symbol_dollar}{ctx}/static/js/script.js"></script>
	<script>
		jQuery(document).ready(function() {
			//如果页面无需设置效果，可以不设置 App.setPage ，如设置 App.setPage 而页面缺少对应的元素，会导致JS错误.
			App.setPage("role_froms");  //设置当前启动的页面
			
			App.setHasSub("other-page");//设置一级菜单目录ID
			App.setSubMenu("roles-list");//设置二级菜单目录ID
			App.setPath("${symbol_dollar}{ctx}/static");  //设置项目路径
			App.init(); //初始化元素以及插件
			
		});
	</script>
	<!-- /JAVASCRIPTS -->
</body>
</html>
