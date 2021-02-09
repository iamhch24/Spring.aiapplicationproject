<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>


<header>
	<div class="ui grid header">
		<button class="ui blue button" onClick="location.href='/iamhch/'">Home</button>
		${sessionemail}
		<div class="login">
			<c:choose>
				<c:when test="${sessionemail == null}">
					<a href="login"><i class="icon arrow up"></i></a>
				</c:when>
				<c:otherwise>
					<a href="logout"><i class="icon arrow down"></i></a>
				</c:otherwise>
			</c:choose>

			<div class="ui compact menu">
				<div class="ui simple dropdown item">
					<img src="${sessionphoto}"/> <i class="dropdown icon"></i>
					<div class="menu">
						<a class="item" href="logout">logout</a>
						<a class="item" href="memberUpdate">정보수정</a>
					</div>
				</div>
			</div>


			<button class="ui purple button " onClick="location.href='login'">Login</button>
			<button class="ui pink button "
				onClick="location.href='memberInsert'">SignUp</button>
		</div>
	</div>
</header>