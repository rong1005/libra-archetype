#set($symbol_pound ='#')
#set($symbol_dollar ='$')
#set($symbol_escape ='\')
<%@tag pageEncoding="UTF-8"%>
<%@ attribute name="page" type="org.springframework.data.domain.Page" required="true"%>
<%@ attribute name="paginationSize" type="java.lang.Integer" required="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
int current =  page.getNumber() + 1;
int begin = Math.max(1, current - paginationSize/2);
int end = Math.min(begin + (paginationSize - 1), page.getTotalPages());

request.setAttribute("current", current);
request.setAttribute("begin", begin);
request.setAttribute("end", end);
%>

	<ul class="pagination" style="margin-top: 0px;">
		 <% if (page.hasPreviousPage()){%>
               	<li><a href="?page=1&sortType=${symbol_dollar}{sortType}&${symbol_dollar}{searchParams}">&lt;&lt;</a></li>
                <li><a href="?page=${symbol_dollar}{current-1}&sortType=${symbol_dollar}{sortType}&${symbol_dollar}{searchParams}">&lt;</a></li>
         <%}else{%>
                <li class="disabled"><a href="#">&lt;&lt;</a></li>
                <li class="disabled"><a href="#">&lt;</a></li>
         <%} %>
 
		<c:forEach var="i" begin="${symbol_dollar}{begin}" end="${symbol_dollar}{end}">
            <c:choose>
                <c:when test="${symbol_dollar}{i == current}">
                    <li class="active"><a href="?page=${symbol_dollar}{i}&sortType=${symbol_dollar}{sortType}&${symbol_dollar}{searchParams}">${symbol_dollar}{i}</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="?page=${symbol_dollar}{i}&sortType=${symbol_dollar}{sortType}&${symbol_dollar}{searchParams}">${symbol_dollar}{i}</a></li>
                </c:otherwise>
            </c:choose>
        </c:forEach>
	  
	  	 <% if (page.hasNextPage()){%>
               	<li><a href="?page=${symbol_dollar}{current+1}&sortType=${symbol_dollar}{sortType}&${symbol_dollar}{searchParams}">&gt;</a></li>
                <li><a href="?page=${symbol_dollar}{page.totalPages}&sortType=${symbol_dollar}{sortType}&${symbol_dollar}{searchParams}">&gt;&gt;</a></li>
         <%}else{%>
                <li class="disabled"><a href="#">&gt;</a></li>
                <li class="disabled"><a href="#">&gt;&gt;</a></li>
         <%} %>

	</ul>
