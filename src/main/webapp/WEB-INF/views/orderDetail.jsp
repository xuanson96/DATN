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

<body>
<style>
 	.custom:hover{
 	background-color: red;
 	color: white;
 	}
 	.custome{
 	background-color: white;
 	}
 	.continue{
 	text-decoration: none;
 	font-size: larger;
 	color: red;	
 	padding: 10px;
 	}
 	.continue:hover {
	background-color: red;
	color: white;
	text-decoration: none
}
</style>
	<div align="center">
		<form action="updateCart" commandName="" enctype="multipart/form-data">
			<h4 style="padding-top: 80px;padding-bottom: 50px;margin-left: -1090px">GIỎ HÀNG</h4>
			<table   cellpadding="20" style="text-align: center; padding-top : 20px">
				<tr><td>Hình ảnh</td>
					<td style = "width: 300px;"> Tên Sản Phẩm</td>					
					<td style="width: 180px">Giá</td>
					<td style="width: 180px">Số Lượng</td>
					<td style="width: 180px">Tổng Giá</td>
				</tr>
				<c:forEach items="${listCart}" var="cart">
					<tr>
						<td><img src="${cart.productDto.file}" style="height: 200px;width: 300px" /></td>
						<td><div style = "font-size: 25px;padding-left: 40px">${cart.productDto.name}</div>
							<div>
								<a href="deleteCart?id=${cart.productDto.id}" style="color: red">Xóa</a>
							</div></td>
						<td style = "color : red">${cart.productDto.price} $</td>
						 <td><input type = "number" name ="quantity" value ="${cart.quantity}" style ="width: 70px; border: none"/></td> 						
						<td style = "color : red">${cart.productDto.price*cart.quantity} $</td>
					<!-- Vẫn ở lại trang hiện tại -->
						</tr>
				</c:forEach>
				
			</table>
				<div style = "padding-top: 60px">
					<div style =" margin-left : 1000px; display: flex;align-items: center;">
						<div  style = "padding-right : 20px; font-size: 20px;font-weight: 500" >Tổng Tiền</div>
						<div  style = " font-size: 25px; color : red">${total} $</div>
					</div>
					<div style = "padding-top:20px;display: flex;align-items: center;margin-left: 989px;">
						<input class="custom item" type="submit" value="CẬP NHẬT"  style = "font-weight: 500;padding: 10px; border: none"/> 
						<div class="custom" style ="padding: 10px;font-weight: 500">THANH TOÁN</div>						
					</div>
				</div>									
		</form>
		<!--Từ trang này chuyển sang trang khác   -->
		<div style="padding:10px"><a class="continue" href="<%=request.getContextPath()%>/trang-chu" >Tiếp tục mua sắm</a></div>
	</div>
</body>
</html>