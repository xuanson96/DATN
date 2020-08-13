<%@page import = 'com.doancuoikhoa.util.SecurityUtils' %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<div class = "fixed-top ">
	 <header class="header-admin">
      <div class=" header-item1 ">
        <i class="fa fa-leaf"></i>
        <div><a href="<%=request.getContextPath() %>/quan-tri/trang-chu">QUẢN TRỊ WEB</a></div>
      </div>
      <div class=" header-item2 item-flex">
        <button class="btn  btn-secondary">
          <i class="ace-icon fa fa-tasks"></i>
        </button>
        <button class="btn btn-primary">
          <i class="ace-icon fa fa-bell "></i>
        </button>
        <button class="btn btn-success">
          <i class="ace-icon fa fa-envelope "></i>
        </button>
        <div class = "item-flex">       
        <div><a  href="<%=request.getContextPath() %>/profile?id=<%=SecurityUtils.getPrincipal().getId() %>"> <%=SecurityUtils.getPrincipal().getFullName() %> </a></div>
        	<div><a  href="<c:url value = '/dang-nhap'/>">Thoát</a></div>
        </div>
      </div>
    </header>
</div>

