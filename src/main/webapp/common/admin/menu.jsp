<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <div class="body-item1 col-md-2">
      <div style="padding-bottom: 5px; padding-right: 5px;">
        <button class="btn btn-success">
          <i class="ace-icon fa fa-signal"></i>
        </button>
        <button class="btn btn-info">
          <i class="ace-icon fa fa-pencil"></i>
        </button>
        <button class="btn btn-warning">
          <i class="ace-icon fa fa-users"></i>
        </button>
        <button class="btn btn-danger">
          <i class="ace-icon fa fa-cogs"></i>
        </button>
      </div>

      <div class="icon-item1 item-flex" style="border-top: 1px solid #cccccc;">
        <i class=" fa fa-home home-icon"></i>
        <div class="menu-content"><a href="<%=request.getContextPath()%>/quan-tri/trang-chu ">Trang chủ</a></div>
        <%-- href="<%=request.getContextPath()%>/trang-chu" --%>
      </div>
      <div class="icon-item1 ">
        <div class="item-flex">
          <i class="fa fa-list-alt" aria-hidden="true"></i>
          <div class="menu-content">Quản lý thể loại</div>
          <i class="ace-icon fa fa-angle-down " style="margin-left: 47px;"></i>
        </div>
        <ul >
          <li><a href="<%=request.getContextPath() %>/danh-sach/the-loai">Danh sách thể loại</a></li>         
        </ul>
      </div>

      <div class="icon-item1 ">
        <div class="item-flex">
          <i class="fa fa-product-hunt" aria-hidden="true"></i>
          <div class="menu-content">Quản lý sản phẩm </div>
          <i class="ace-icon fa fa-angle-down " style="margin-left: 32px;"></i>
        </div>
        <ul>
          <li><a href="/project-cuoikhoa/danh-sach/bai-viet">Danh sách sản phẩm</a></li>
          <li><a href="/project-cuoikhoa/edit">Thêm mới sản phẩm</a></li>
        </ul>
      </div>

      <div class="icon-item1 ">
	       <div class="item-flex">
		        <i class="fa fa-user" aria-hidden="true"></i>
		        <div class="menu-content">Quản lý người dùng</div>
		        <i class="ace-icon fa fa-angle-down " style="margin-left: 23px;"></i>
	        </div>
	      <ul>
             <li><a href="<%=request.getContextPath() %>/danh-sach/nguoi-dung">Danh sách người dùng</a></li>         
          </ul>
      </div>
      <div class="icon-item1 item-flex">     
        <i class="fa fa-folder" aria-hidden="true"></i>
        <div class="menu-content">Quản lý đơn hàng </div>
      </div>
      <div class="icon-item1 item-flex">
        <i class="fa fa-comment"></i>
        <div class="menu-content">Quản lý bình luận</div>
      </div>
    </div>







<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class= "navbar-expand-lg navbar-light bg-light " style = "margin: 0 258px auto; margin-bottom: 30px"> 
	<table style = "border: none">
	<tr>
	<c:forEach var="category" items="${listCategory}">
	<td><a onclick="filter('${category.name}')" href="#"  style = "width: 180px; padding-right:50px;color:black" >${category.name} </a><td>
	</c:forEach>
	<td><a href="<c:url value = '/edit'/>" style="color : black">Thêm mới sản phẩm</a></td>
	<td style = "padding-left: 50px"> <form action="search">
      <input type="text" placeholder="Search.." name=keyword>
      <button type="submit" style = "border : none;background-color: white"><i class="fa fa-search" ></i></button>
    </form></td>	
	</tr>
	</table>
</div> --%>