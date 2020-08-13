<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class= "navbar-expand-lg " style = "color: black;" > 
	<table style = "border: none">
		<tr>
			<c:forEach var="category" items="${listCategory}">
			<td onclick="filter('${category.name}')" class="pointer">${category.name}</td>
			</c:forEach>
			<td > <form action="search">
				      <input  type="text" placeholder="Search.." name=keyword>
				      <button type="submit" ><i class="fa fa-search" ></i></button>
			      </form>
		    </td>	
		</tr>
	</table>
</div>
<style>
input[type=text]:focus {
	 outline: none;
	 border: 1px solid #515152;
	 border-radius: 4px
}
.pointer {
	 cursor: pointer;
	 padding: 0px 20px 0px 20px;
 }
 .pointer:hover{
 	background-color: #ebedee;
 	border-radius: 5px;
 }

.navbar-expand-lg form{
	position: relative;
	padding-left: 15px
}
.navbar-expand-lg input{	
	border: none;
	padding: 4px 10px;
	background-color: #ebedee;
}
.navbar-expand-lg button{
	position:absolute;
	right:3px;
	top : 2px;
 	outline: none;
	border : none; 
}

</style>
