<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="ui grid">

	<div class="ui grid two wide column">
		<p>menu 1</p>
		<c:if test="${sessionlevel le 3 }">
			<p>
				<a href='memberList'><i class="users icon" title="회원검색"></i></a>
			</p>
		</c:if>
		<p>menu 3</p>
		<p>menu 4</p>
	</div>
</nav>
