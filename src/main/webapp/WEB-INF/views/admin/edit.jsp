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
<style>
	tr td input{
	outline: none;
	border-radius: 5px;
	border: 1px solid #cccccc
	}
</style>
	<div align="center" style ="padding-top: 50px">		
		 <form action="save" method="post" enctype="multipart/form-data">		
			<h2 style = "color: red"> Product</h2>
			<table border="0" cellpadding="5">
				<tr>
					<td>ID:</td>
					<td><input type="text" id="id" name="id" value="${productDto.id} " readonly="true" style= "border:none"/></td>						
				</tr>
				<tr>
					<td>Name:</td>
					<td><input type="text" id="name" name="name" value="${productDto.name} " /></td>						
				</tr>
				<tr>
					<td>Price:</td>
					<td><input type="text" name="price" id="price" value="${productDto.price} " /></td>						
				</tr>
				<tr>
					<td>Description:</td>
					<td><input type="text" name="description" id="description" value="${productDto.description} " style = "height: 75px; width: 500px"/></td>						
				</tr>
				<tr>
					<td>Image:</td>
					<td><img src="${productDto.file}" style = "height: 300px"/></td>
					<td><input type="file" name="files" id="files" value = "" /></td>
				</tr>
				<tr>
					<td>CategoryName:</td>
					<td><select   name="categoryName">
							<option label="-- Chọn thể loại --" />
							 <c:forEach items="${listCategory}" var="category">
						 		<option value="${category.name}" ${category.name == productDto.categoryName ? 'selected="selected"' : ''}>${category.name}</option>
							</c:forEach> 							
					</select></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Save"></td>
				</tr>
			</table>
		</form> 		 
	</div>
</html>