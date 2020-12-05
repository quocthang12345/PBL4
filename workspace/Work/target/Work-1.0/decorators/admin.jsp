<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><dec:title default="Admin-home" /></title>
<link href="<c:url value= '/template/admin/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" type="text/css">
<link href="<c:url value= '/template/admin/css/sb-admin-2.min.css'/>" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twbs-pagination/1.4.2/jquery.twbsPagination.min.js" integrity="sha512-frFP3ZxLshB4CErXkPVEXnd5ingvYYtYhE5qllGdZmcOlRKNEPbufyupfdSTNmoF5ICaQNO6SenXzOZvoGkiIA==" crossorigin="anonymous"></script>
</head>
<body>

<div class="container-fluid" style="padding:0;">
		<dec:body/>
</div>

<%@include file="/common/admin/footer/footer.jsp" %>




<script src="<c:url value= '/template/admin/vendor/jquery/jquery.min.js'/>"></script>
<script src="<c:url value= '/template/admin/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
<script src="<c:url value= '/template/admin/vendor/jquery-easing/jquery.easing.min.js'/>"></script>
<script src="<c:url value= '/template/admin/js/sb-admin-2.min.js'/>"></script>
</body>
</html>