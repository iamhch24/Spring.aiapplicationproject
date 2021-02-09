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



<body>
	<section>
		<div class="ui grid body">

			<div class="column">
				<form class="ui form" method="post" action="member_updateSave"  enctype="multipart/form-data">
					<div class="ui grid center aligned photo">
						<a href="#"><img src="${row.photo}" id="viewphoto"
							title="클릭하면 이미지 변경" /></a>
					</div>
					<div class="ui grid center aligned ">
						<input type="hidden" name="oldphoto" value="${row.photo}">
						<input type="file" id="imgfile" name="imgfile" style="display: none">
					</div>
					<div class="field">
						<label>E-mail</label>
						<div class="ui samll corner labeled left icon input">
							<input placeholder="e-mail" type="email" name="email" id="email"
								value="${row.email}" readonly required> <i
								class="icon envelope"></i>
							<div class="ui corner label">
								<i class="asterisk icon"></i>
							</div>
						</div>
					</div>
					<div class="field">
						<label>Username</label>
						<div class="ui samll corner labeled left icon input">
							<input placeholder="Username" type="text" name="name"
								value="${row.name}" required> <i class="icon user"></i>
							<div class="ui corner label">
								<i class="asterisk icon"></i>
							</div>
						</div>
					</div>
					<div class="field">
						<label>Password</label>
						<div class="ui samll corner labeled left icon input">
							<input placeholder="Password" type="password" name="password"
								value="${row.password}" required> <i class="icon lock"></i>
							<div class="ui corner label">
								<i class="asterisk icon"></i>
							</div>
						</div>
					</div>

					<div class="field">
						<label>Phone-number</label>
						<div class="ui samll left icon input">

							<input placeholder="Phone" type="tel" name="phone"
								value="${row.phone}"> <i class="icon phone"></i>
						</div>
					</div>


					<div class="field middle aligned">
						<div class="ui buttons">
							<button class="ui positive button" type="submit">Save</button>
						</div>
					</div>

				</form>
			</div>
		</div>

	</section>
</body>
</html>
