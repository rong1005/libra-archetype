#set($symbol_pound ='#')
#set($symbol_dollar ='$')
#set($symbol_escape ='\')
<%@tag pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="btn-group dropdown pull-right">
	<button class="btn  btn-default dropdown-toggle" data-toggle="dropdown">
		排序 : ${symbol_dollar}{sortTypes[sortType]} <span class="caret"></span>
	</button>
	<ul class="dropdown-menu context">
	<c:forEach items="${symbol_dollar}{sortTypes}" var="entry">
	   	<li>
	   		<a href="?sortType=${symbol_dollar}{entry.key}&${symbol_dollar}{searchParams}">${symbol_dollar}{entry.value}</a>
	   	</li>
	</c:forEach>
	</ul>
</div>