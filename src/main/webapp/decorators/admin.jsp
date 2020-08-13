<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file = "/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<link rel="stylesheet" href="<c:url value = '/template/admin/vendor/bootstrap/css/bootstrap.min.css'/>" />
<link rel="stylesheet" href="<c:url value = '/template/admin/css/shop-homepage.css'/>" />
<link rel="stylesheet" href="<c:url value = '/template/admin/css/font-awesome.min.css'/>"/>
<link rel="stylesheet" href="<c:url value = '/template/admin/my_css/header.css'/>"/>
<link rel="stylesheet" href="<c:url value = '/template/admin/my_css/body.css'/>"/>
<link rel="stylesheet" href="<c:url value = '/template/admin/my_css/circle.css'/>"/>
<script src="<c:url value='/template/admin/assets/js/jquery.2.1.1.min.js'/>"></script> 
</head>
<body>	
	<div class="container-fluid" style = "display: flex;">
	<%@include file = "/common/admin/header.jsp" %>
	<%@include file = "/common/admin/menu.jsp" %>
	<div class="body-item2 col-md-10">	
	    <dec:body/>
	    <%@include file = "/common/admin/footer.jsp" %>
	</div>
	</div>
	
	
	
	<script src="<c:url value='/template/web/vendor/bootstrap/js/bootstrap.min.js' />"></script>
	<script src="<c:url value='/template/web/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
	
	<!-- Bootstrap core JavaScript -->		
</body>
</html>



