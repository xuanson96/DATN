<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/taglib.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Product</title>
</head>
	<div align="center" style ="padding-top: 50px">		
		 <form action="saveCategory" method="post" enctype="multipart/form-data">		
			<h2 style = "color: red"> Category</h2>
			<table border="0" cellpadding="5">
				<tr>
					<td>ID:</td>
					<td><input type="text" id="id" name="id" value="${categoryDto.id} " readonly="true" style= "border:none"/></td>						
				</tr>
				<tr>
					<td>Name:</td>
					<td><input type="text" id="name" name="name" value="${ categoryDto.name} " /></td>						
				</tr>							
				<tr>
					<td colspan="2"><input type="submit" value="Save"></td>
				</tr>
			</table>
		</form> 		 
	</div>
</html>