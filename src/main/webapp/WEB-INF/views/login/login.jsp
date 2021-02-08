<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
</head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css"
	integrity="sha512-8bHTC73gkZ7rZ7vpqUQThUDhqcNFyYi2xgDgPDHc+GXVGHXq+xPjynxIopALmOPqzo9JZj0k6OqqewdGO3EsrQ=="
	crossorigin="anonymous" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"
	integrity="sha512-dqw6X88iGgZlTsONxZK9ePmJEFrmHwpuMrsUChjAw1mRUhUITE5QU9pkcSox+ynfLhL15Sv2al5A0LVyDCmtUw=="
	crossorigin="anonymous"></script>
<script src="resources/js/aiappproject.js"></script>
<style>

</style>
<body>
<section>
	<div class="ui grid body">
		<div class="two wide column"></div>
		<div class="twelve wide column">
			<div class="ui placeholder segment">
				<div class="ui two column very relaxed stackable grid">
					<div class="column">
						<div class="ui form" >
							<div class="field">
								<label>E-mail</label>
								<div class="ui left icon input">
									<input type="text" placeholder="e-mail" name="email"> <i
										class="user icon"></i>
								</div>
							</div>
							<div class="field">
								<label>Password</label>
								<div class="ui left icon input">
									<input type="password" name="password"> <i class="lock icon"></i>
								</div>
							</div>
							<div class="ui blue submit button">Login</div>
						</div>
					</div>
					<div class="middle aligned column">
						<button class="ui big button" onclick="location.href='memberInsert'">  
							<i class="signup icon"></i>Sign Up
						</button>
					</div>
				</div>
				<div class="ui vertical divider">Or</div>
			</div>
		</div>
		<div class="two wide column"></div>
	</div>

</section>
</body>
</html>

