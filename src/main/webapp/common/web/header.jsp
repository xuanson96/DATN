<%@ page import="com.doancuoikhoa.util.SecurityUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
	.navbar{
		  overflow: hidden;
		  background-color: #0db70d; 
		  position: fixed;
		  top: 0;
		  width: 100%; 
		  z-index: 1;
	 
	}	
   .conten-item1{
		   display: flex;
		   align-items: center;
		   padding-left: 620px;
   }
   .authorize{
		   display: flex;
		   align-items: center;
		   padding-left: 14px;
   }
   .fa-shopping-cart{
		   color: black;
		   font-size: larger;
   }
   
</style>
  <div class="navbar">
	<div class="image" style = "margin-left: 30px;">
		<a href= "/project-cuoikhoa/trang-chu"><img src="./image/logo.png"  style = "height: 102px"/></a>
	</div>
	<div class="content">
		<div class="conten-item1" style="height: 69px;">
		    <a href="<c:url value = '/trang-chu'/>" style="text-decoration: none;color: black">Trang chủ</a>
			<div class = "authorize">
			<security:authorize access = "isAnonymous()">
						<a class="nav-link" href="<%=request.getContextPath()%>/dang-nhap">Đăng nhập</a></li>
						<a class="nav-link" href="#">Đăng ký</a></li>
			</security:authorize>
			<security:authorize access = "isAuthenticated()">
						<a class="nav-link"  style = "color: black" href="<%=request.getContextPath() %>/profile?id=<%=SecurityUtils.getPrincipal().getId() %>" > <%=SecurityUtils.getPrincipal().getFullName() %></a>
						<a class="nav-link" href="<%=request.getContextPath() %>/dang-nhap" style = "color: black">Thoát</a></li>
						<a href="<%=request.getContextPath() %>/orderCart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
			</security:authorize>
			</div>	
		</div>	
		
		<div>
		<%@include file="/common/web/menu.jsp"%>
		</div>													
	</div>
  </div>

