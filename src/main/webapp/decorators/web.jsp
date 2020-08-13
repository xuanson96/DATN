<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
   <link rel="stylesheet" href="<c:url value = '/template/web/vendor/bootstrap/css/bootstrap.min.css'/>" />	
   <link rel="stylesheet" href="<c:url value = '/template/web/css/shop-homepage.css'/>"/>  
   <link rel="stylesheet" href="<c:url value = '/template/web/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css'/>"/>  
  <%--  <link rel="stylesheet" href="<c:url value = '/template/web/css/font-awesome.css'/>"/> --%>
   <link rel="stylesheet" href="<c:url value = '/template/web/my_css/home.css'/>"/>     
   <script src="<c:url value='/template/web/assets/js/jquery.2.1.1.min.js'/>"></script> 
</head>
<body>
	<%@include file="/common/web/header.jsp"%>
	<dec:body />
	<%@include file="/common/web/footer.jsp"%>
	<script src="<c:url value='/template/web/paging/jquery.twbsPagination.js' />"></script>	
	<script src="<c:url value='/template/web/vendor/bootstrap/js/bootstrap.min.js' />"></script>
	<script src="<c:url value='/template/web/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
</body>
</html>