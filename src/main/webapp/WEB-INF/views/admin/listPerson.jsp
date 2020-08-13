<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>



<style>
   .listPerson th{
   		width: 200px;
   		padding: 5px
   }
   .listPerson td{
   padding: 5px
   }
   .listPerson table{
   margin-left: 50px;
   border:  1px solid #cccccc ;
   margin-bottom: 60px
   
   }
</style>
<div class="listPerson">
<div style = "text-align: center;margin: 34px;text-align: center; font-size: 25px;color: red;">Danh sách người dùng</div>         
<table border "" >
  <tr>
    <th style = "width: 50px">Id</th>
    <th>FullName</th>
    <th>Address</th>
    <th>City</th>
    <th>Email</th>
    <th>Phone</th>
  </tr>
  
  <c:forEach items="${listPerson}" var= "listPerson">
  <tr>
    <td>${listPerson.id}</td>
    <td>${listPerson.fullname}</td>
    <td>${listPerson.address}</td>
    <td>${listPerson.city}</td>
    <td>${listPerson.email}</td>
    <td style = "color: #e81506">${listPerson.phone}</td>
  </tr>
  </c:forEach>
</table>
</div>
