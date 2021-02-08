<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
</head>
<script src="resources/js/jquery-3.4.1.js"></script>


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
.icon {
	color: #28a745;
}

.asterisk.icon {
	color: #FF1493;
	
}

.ui.grid {
	height: 60vh;
	margin-top: 60px;
}
</style>

<body>
<section>
	<div class="ui grid body">
		<div class="two wide column"></div>
		<div class="twelve wide column">

			<div class="ui placeholder segment">
				<div class="ui two column very relaxed stackable grid">
					<div class="middle aligned column">
						<button class="ui big button" onclick="location.href='login'">
							<i class="signup icon"></i> Log in
						</button>
					</div>
					<div class="column">
						<form class="ui form" method="post" action="member_insertSave">

							<div class="field">
								<label>E-mail</label>
								<div class="ui samll corner labeled left icon input">
									<input placeholder="e-mail" type="email" name="email"
										id="email" required> <i class="icon envelope"></i>
									<div class="ui corner label">
										<i class="asterisk icon"></i>
									</div>
									<button class="mini ui basic button primary confirm"
										type="button">check</button>
								</div>
							</div>
							<div class="field">
								<label>Username</label>
								<div class="ui samll corner labeled left icon input">
									<input placeholder="Username" type="text" name="name" required>
									<i class="icon user"></i>
									<div class="ui corner label">
										<i class="asterisk icon"></i>
									</div>
								</div>
							</div>
							<div class="field">
								<label>Password</label>
								<div class="ui samll corner labeled left icon input">
									<input placeholder="Password" type="password" name="password"
										required> <i class="icon lock"></i>
									<div class="ui corner label">
										<i class="asterisk icon"></i>
									</div>
								</div>
							</div>
							<div class="field">
								<label>Phone-number</label>
								<div class="ui samll left icon input">

									<input placeholder="Phone" type="tel" name="phone"> <i
										class="icon phone"></i>
								</div>
							</div>
							<div class="field middle aligned">
								<div class="ui buttons">
									<button class="ui positive button" type="submit">Sign
										Up</button>
									<button class="ui button" type="button">clear</button>

								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="ui vertical divider">Or</div>
			</div>
		</div>
		<div class="ui mini modal">
			<i class="close icon"></i>
			<div class="header modalmsg">E-mail 중복체크</div>
			<div class="actions">
				<div class="ui negative button">Close</div>
				<div class="ui positive right labeled icon button">
					Yes <i class="checkmark icon"></i>
				</div>
			</div>
		</div>
	</div>
</section>
</body>
</html>
