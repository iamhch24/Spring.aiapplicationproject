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

<style>
.icon {
	color: #28a745;
}

.row {
	margin-top: 10px;
}
</style>

<body>
	<div class="ui grid">
		<div class="four column row">
			<div class="left floated column"></div>
			<div class="right floated column"></div>
		</div>
		<div class="row">
			<div class="three wide column"></div>
			<div class="eight wide column"></div>
			<div class="five wide column"></div>
		</div>
	</div>

	<div class="ui grid center aligned">
		<div class="five wide column"></div>
		<div class="six wide column">

			<div class="row">
				<div class="column">
					<div class="ui large left icon action input">
						<input placeholder="e-mail" type="email"> <i
							class="icon envelope"></i>
					</div>
					<button class="ui button">중복체크</button>

				</div>
			</div>

			<div class="row">
				<div class="column">
					<div class="ui large left icon input">
						<i class="icon address card"></i> <input type="text" name="name"
							value="" placeholder="이름">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="column">
					<div class="ui large left icon input">
						<i class="icon key"></i> <input type="password" name="password"
							value="" placeholder="비밀번호">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="column">
					<div class="ui large left icon input">
						<i class="icon phone"></i> <input type="tel" name="phone" value=""
							placeholder="전화번호">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="column">
					<button class="ui primary button">저장</button>
					<button class="ui button">취소</button>
				</div>
			</div>

		</div>
		<div class="five wide column"></div>
	</div>
</body>
</html>
