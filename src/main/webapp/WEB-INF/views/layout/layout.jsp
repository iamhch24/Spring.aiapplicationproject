<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<content tag="local_script">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>당근 마켓</title>

<!-- Semantic UI CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.css">
<link rel="stylesheet" href="resources/css/mystyle.css">
<script src="resources/js/jquery-3.4.1.js"></script> 
<script	src="resources/js/jquery.validate.js"></script> 
<script	src="resources/js/semantic.min.js"></script> 
<script	src="resources/js/aiappproject.js"></script> 
</content>
</head>
<body>
	<div class="ui grid sixteen wide column" style="background-color: #ffff00">
		<div class="ui grid sixteen wide column">
			<page:applyDecorator name="layout_header" />
		</div>
		<div class="ui grid sixteen wide column">
			<div class="ui grid four wide column">
				<page:applyDecorator name="layout_leftmenu" />
			</div>
			<div class="ui grid twelve wide column">
				<decorator:body />
			</div>
		</div>
		<div class="ui grid sixteen wide column">
			<page:applyDecorator name="layout_bottom" />
		</div>
	</div>
	<decorator:getProperty property="page.local_script" />
</body>
</html>