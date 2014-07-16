#set($symbol_pound ='#')
#set($symbol_dollar ='$')
#set($symbol_escape ='\')
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${symbol_dollar}{pageContext.request.contextPath}"/>

<!-- 侧边栏 -->
<div id="sidebar" class="sidebar">
	<div class="sidebar-menu nav-collapse">
		<div class="divide-20"></div>
		<!-- 搜索栏 -->
		<div id="search-bar">
			<input class="search" type="text" placeholder="Search"><i class="fa fa-search search-icon"></i>
		</div>
		<!-- /搜索栏 -->
		
		<!-- 侧边栏 菜单 -->
		<ul>
			<li id="workbench">
				<a href="${symbol_dollar}{ctx}/workbench">
					<i class="fa fa-tachometer fa-fw"></i> <span class="menu-text">我的工作</span>
				</a>					
			</li>
			<li id="struct-manager" class="has-sub">
				<a href="javascript:;" class="">
				<i class="fa fa-sitemap fa-fw"></i> <span class="menu-text">架构管理</span>
				<span class="arrow"></span>
				</a>
				<ul class="sub">
					<li id="departments-list"><a class="" href="${symbol_dollar}{ctx}/department"><span class="sub-menu-text">部门信息</span></a></li>
				</ul>
			</li>
			<li id="projects-manager" class="has-sub">
				<a href="javascript:;" class="">
				<i class="fa fa-tasks fa-fw"></i> <span class="menu-text">项目管理</span>
				<span class="arrow"></span>
				</a>
				<ul class="sub">
					<li id="projects-list"><a class="" href="${symbol_dollar}{ctx}/project"><span class="sub-menu-text">项目列表</span></a></li>
					<li id="tasks-list"><a class="" href="${symbol_dollar}{ctx}/task"><span class="sub-menu-text">任务列表</span></a></li>
				</ul>
			</li>

			<li id="other-page" class="has-sub">
				<a href="javascript:;" class="">
				<i class="fa fa-briefcase fa-fw"></i> <span class="menu-text">其它页面</span>
				<span class="arrow"></span>
				</a>
				<ul class="sub">
					<shiro:hasPermission name="users-list"><li id="users-list"><a class="" href="${symbol_dollar}{ctx}/user"><span class="sub-menu-text">用户管理</span></a></li></shiro:hasPermission>
					<li id="roles-list"><a class="" href="${symbol_dollar}{ctx}/role"><span class="sub-menu-text">角色管理</span></a></li>
					<li id="sidebars-list"><a class="" href="${symbol_dollar}{ctx}/sidebar"><span class="sub-menu-text">侧边栏菜单</span></a></li>
					<li id="demo-ss"><a class="" href="${symbol_dollar}{ctx}/workbench"><span class="sub-menu-text">Search Results</span></a></li>
					<li><a class="" href="blank_page.html"><span class="sub-menu-text">Blank Page</span></a></li>
				</ul>
			</li>
		</ul>
		<!-- /侧边栏 菜单 -->
	</div>
</div>
<!-- /侧边栏 -->
