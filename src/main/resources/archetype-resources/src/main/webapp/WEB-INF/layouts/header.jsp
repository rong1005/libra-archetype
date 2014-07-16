#set($symbol_pound ='#')
#set($symbol_dollar ='$')
#set($symbol_escape ='\')
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${symbol_dollar}{pageContext.request.contextPath}"/>

<!-- HEADER -->
<header class="navbar clearfix" id="header">
	<div class="container">
			<div class="navbar-brand">
				<!-- COMPANY LOGO -->
				<a href="index.html">
					<img src="${symbol_dollar}{ctx}/static/img/logo/logo.png" alt="羽 Libra" class="img-responsive" height="30" width="120">
				</a>
				<!-- /COMPANY LOGO -->
				
				<!-- SIDEBAR COLLAPSE -->
				<div id="sidebar-collapse" class="sidebar-collapse btn">
					<i class="fa fa-bars" 
						data-icon1="fa fa-bars" 
						data-icon2="fa fa-bars" ></i>
				</div>
				<!-- /SIDEBAR COLLAPSE -->
			</div>
			
			<!-- BEGIN TOP NAVIGATION MENU -->					
			<ul class="nav navbar-nav pull-right">
				<!-- BEGIN USER LOGIN DROPDOWN -->
				<li class="dropdown user" id="header-user">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<img alt="" src="${symbol_dollar}{ctx}/static/img/avatars/<shiro:principal property="photo"/>" />
						<span class="username"><shiro:principal property="name"/></span>
						<i class="fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu">
						<li><a href="#updatePassword" data-toggle="modal"><i class="fa fa-user"></i> 修改密码 </a></li>
						<li><a href="#"><i class="fa fa-cog"></i> 个性化设置</a></li>
						<li><a href="${symbol_dollar}{ctx}/logout"><i class="fa fa-power-off"></i> 退 出 </a></li>
					</ul>
				</li>
				<!-- END USER LOGIN DROPDOWN -->
			</ul>
			<!-- END TOP NAVIGATION MENU -->

			<!-- 修改密码的弹出框 -->
			<div id="updatePassword" class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false" style="display: none;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title"> 修 改 密 码 </h4>
				</div>
				<div class="modal-body">
					<div class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-3 control-label">当前密码</label>
							<div class="col-sm-9">
								<input type="password" id="oldPassword" name="oldPassword" class="form-control" placeholder="当前密码"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">设置新密码</label>
							<div class="col-sm-9">
								<input type="password" id="newPassword" name="newPassword" class="form-control" placeholder="设置新密码"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">重复新密码</label>
							<div class="col-sm-9">
								<input type="password" id="confirmPassword" name="confirmPassword" class="form-control" placeholder="重复新密码"/>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" data-dismiss="modal" id="updatePasswordCancel" class="btn btn-default"> 取 消 </button>
					<button type="button" class="btn btn-primary" onclick="updatePassword()"> 修 改 </button>
				</div>
			</div>
			<!-- /修改密码的弹出框 -->
	</div>
	
</header>
<!--/HEADER -->
	