#set($symbol_pound ='#')
#set($symbol_dollar ='$')
#set($symbol_escape ='\')
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${symbol_dollar}{pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zh">
<head>
	<title>用户管理</title>
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
										<a href="${symbol_dollar}{ctx}/user">用户列表</a>
									</li>
									<li>创建用户</li>
								</ul>
								<!-- /BREADCRUMBS -->
								
							</div>
						</div>
					</div>
					<!-- /PAGE HEADER -->
					
					<div class="box border primary">
						<div class="box-title">
							<h4><i class="fa fa-table"></i>创建用户</h4>
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
							<form id="inputForm" class="form-horizontal" action="${symbol_dollar}{ctx}/user/${symbol_dollar}{action}" method="post">
								<input type="hidden" name="id" value="${symbol_dollar}{user.id}"/>
								
								<div class="form-group">
									<label class="col-sm-2 control-label">登录账号</label>
									<div class="col-sm-10">
										<input type="text" id="user_loginName" name="loginName" value="${symbol_dollar}{user.loginName}" class="form-control" placeholder="登录账号" <c:if test="${symbol_dollar}{user.id ne null}">readonly="readonly"</c:if>/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">姓名</label>
									<div class="col-sm-10">
										<input type="text" id="user_name" name="name" value="${symbol_dollar}{user.name}" class="form-control" placeholder="姓名"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">邮箱地址</label>
									<div class="col-sm-10">
										<input type="text" id="user_email" name="email" value="${symbol_dollar}{user.email}" class="form-control" placeholder="邮箱地址"/>
									</div>
								</div>
								
								<c:if test="${symbol_dollar}{user.id eq null}">
								<div class="form-group">
									<label class="col-sm-2 control-label">创建密码</label>
									<div class="col-sm-10">
										<input type="password" id="user_plainPassword" name="plainPassword" value="${symbol_dollar}{user.plainPassword}" class="form-control" placeholder="创建密码"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">确认密码</label>
									<div class="col-sm-10">
										<input type="password" id="user_confirmPassword" name="confirmPassword" class="form-control" placeholder="确认密码"/>
									</div>
								</div>
								</c:if>
								
								<c:if test="${symbol_dollar}{user.id ne null}">
								<div class="form-group">
									<label class="col-sm-2 control-label">注册日期</label>
									<div class="col-sm-10">
										<fmt:formatDate value="${symbol_dollar}{user.registerDate}" pattern="yyyy年MM月dd日  HH时mm分ss秒" />
									</div>
								</div>
								</c:if>
								
								<div class="form-group">
									<label class="col-sm-2 control-label">角色</label>
									<div class="col-sm-10">
										<c:forEach items="${symbol_dollar}{allRole }" var="role" varStatus="status">
											<label class="checkbox-inline"> <input type="checkbox" name="roles.id" class="uniform" value="${symbol_dollar}{role.id}" <c:if test="${symbol_dollar}{isExist[role.id] }">checked="checked"</c:if>>${symbol_dollar}{role.name}</label>
										</c:forEach>
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
			App.setPage("user_froms");  //设置当前启动的页面
			
			App.setHasSub("other-page");//设置一级菜单目录ID
			App.setSubMenu("users-list");//设置二级菜单目录ID
			App.setPath("${symbol_dollar}{ctx}/static");  //设置项目路径
			App.init(); //初始化元素以及插件
			
		});
	</script>
	<!-- /JAVASCRIPTS -->
</body>
</html>
