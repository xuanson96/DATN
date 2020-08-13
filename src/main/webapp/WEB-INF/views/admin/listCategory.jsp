<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<style>
   .listCategory th{
   		width: 200px;
   		padding: 5px
   }
   .listCategory td{
   padding: 5px
   }
   .listCategory table{
	   margin-left: 440px;
	   margin-bottom: 20px;
	   border:  1px solid #cccccc ;      
   }
   .listCategory input{
   		border: none;
   		outline: none
   }
   .change-catgory{
   margin-bottom: 20px
   }
   .change-catgory a{
   text-decoration: none;
   	   margin-left: 500px;
   	   margin-bottom : 20px;
  	   padding: 5px 10px;
  	   border: 1px solid #cccccc;
  	   color :red;
  	   border-radius: 5px;
  	   cursor: pointer;  	   
   }   
   
   .change-catgory a:hover {
		background-color: red;
		color: white;
  }
  .editCategory{
  		position: relative;
  }
  .editCategory i{
	  position: absolute;
	  top: 11px;
	  right: 5px;
	  color: black;
  }
  .editCategory i:hover{
    color: red;
  }
</style>
<div class="listCategory">
<div style = "text-align: center;margin: 34px;text-align: center; font-size: 25px;color: red;">Danh sách thể loại</div>         
<table border ""  id = "insertRow" >
  <tr>
    <th style = "width: 50px">Id</th>
    <th>Category name</th>
  </tr>
  
  <c:forEach items="${listCategory}" var= "listCategory">
  <tr>
    <td>${listCategory.id}</td>
    <td class="editCategory">${listCategory.name} <a href="<%=request.getContextPath() %>/editCategory?id=${listCategory.id}"><i class="fa fa-edit"></i></a></td>   
  </tr>
  </c:forEach>
</table>
		<div  class="change-catgory">
			<a href="<%=request.getContextPath() %>/editCategory">Add new</a>
		</div>
</div>
 
