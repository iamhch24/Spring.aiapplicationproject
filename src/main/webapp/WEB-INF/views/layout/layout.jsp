<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true" %>
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

<title>AiApp</title>

<!-- Semantic UI CSS -->
<LINK REL="SHORTCUT ICON" HREF="resources/images/star-favicon.ico" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.23/css/dataTables.jqueryui.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/scroller/2.0.3/css/scroller.jqueryui.min.css">
<script	src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script	src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
<script	src="https://cdn.datatables.net/1.10.23/js/dataTables.jqueryui.min.js"></script>
<script	src="https://cdn.datatables.net/scroller/2.0.3/js/dataTables.scroller.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
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
			<div class="ui grid two wide column">
				<page:applyDecorator name="layout_leftmenu" />
			</div>
			<div class="ui grid fourteen wide column">
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