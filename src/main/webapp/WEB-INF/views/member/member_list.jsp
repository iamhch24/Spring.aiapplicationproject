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
<content tag="local_script"> <script type="text/javascript">
	
</script> </content>
<body>
	<section>
		<div class="fluid ui grid body">
			<div class="ui icon message" id="successmessage"
				style="display: none">
				<i class="notched circle loading icon"></i>
				<div class="content">
					<div class="msg-header" id="resultmessage">수정되었습니다.</div>
				</div>
			</div>
			<table id="memberExample" class="display nowrap" style="width: 100%">
				<thead>
					<tr>
						<th>image</th>
						<th>email</th>
						<th>name</th>
						<th>phone</th>
						<th>level</th>
						<th>Option</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="member" items="${members}">
						<tr>
							<td><img src="${member.photo}" class="nicknameprofile"></td>
							<td>${member.email}</td>
							<td>${member.name}</td>
							<td>${member.phone}</td>
							<td><input type="text" style="width: 20px" maxlength="1"
								value="${member.memlevel}"></td>
							<td><i class="edit outline icon" id="editbtn"></i> <i
								class="trash outline icon" id="deletebtn"></i></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="ui mini modal">
				<i class="close icon"></i>
				<div class="header modalmsg">정말 삭제하시겠습니까?</div>
				<div class="actions">
					<div class="ui negative button" id="deleteOK">Yes 삭제</div>
					<div class="ui positive right labeled icon button"
						id="deleteCancel">
						No 취소<i class="checkmark icon"></i>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>


