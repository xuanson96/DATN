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
	.design-Detail{
		padding-top : 75px;				
		overflow: hidden;
		clear: both;
		width: 1200px;
		
	}
	.images{
	  float: left;
	  width: 800px;
	  
	}
	.contents{
		float: right;
		width: 350px;
		paddding-left: 10px;
	}
	.content-item{
	font-size:30px
	}	
			
	.item{
	padding-bottom: 10px;
	color: black;
    font-size: large;
	
	}
	 .input-number{
	 height: 39px;
	 }	
	 #quantity{
     text-align: center;
     border: none;
     outline: none
     }
     .input-group{
     padding-top: 10px
     }
     
     input[type=number]::-webkit-inner-spin-button, 
	input[type=number]::-webkit-outer-spin-button { 
	  -webkit-appearance: none; 
	  margin: 0; 
	}
</style>
    <div class="container">  
		 <form action="addCart?id=${productDto.id}" method="post" enctype="multipart/form-data">
			 <div class="design-Detail">					
			    <div class = "images">
					<img src="${productDto.file}" style = "width : 780px"/>				
				</div>
				<div class = "contents">
					<div class = "item content-item " style = "font-size: 32px;font-weight: 500">${productDto.name}</div>
					<div style = "display:flex; align-items: center;">
					<div class = "item " >Thương hiệu : </div>
					<div class = "item " style = "padding-left: 5px;color: red" >M2</div>
					</div>
					<div class = "item trademark "> 
						<span style = "font-weight: 500" >Mô tả : </span> 
						<span>${productDto.description}</span>
					</div>				
					<div class = "item content-item price" style = "color : red">${productDto.price}đ</div>															        
			     	<div>Số lượng</div>
			     	<div style="display: flex; align-items : center; padding-top: 10px">
			     		<i class="fa fa-minus quantity-left-minus" aria-hidden="true"></i>
			     		<input type="number" id="quantity" name="quantity" class="col-md-5" value="1">
			     		<i class="fa fa-plus quantity-right-plus" aria-hidden="true"></i>
			     	</div>
			     	<div style = "display:flex;align-items: center;padding-top: 18px;">
			     		<button type="submit" style = "border : none;padding: 18px;;background-color: white;outline: none">THÊM VÀO GIỎ </button>
			     		<div style= "padding: 18px;background-color: red;"><a href="#" style="text-decoration: none;color: white">THANH TOÁN</a></div>     					     	
			     	</div>	
			     	<div style = "padding-top: 18px;color:#28bc50">GỌI ĐỂ MUA HÀNG NHANH HƠN</div>
			     	<div style = "padding-top: 10px;color:red;font-size: 30px; font-weight: 400;">18009999</div>
			     	<div style = "padding-top: 18px;color:#28bc50">GIAO HÀNG TỪ 1-5 NGÀY</div> 
			     	<div style = "padding-top : 18px; display: flex; align-items: center;">
			     		<i class="fa fa-car" aria-hidden="true"></i>
			     		<div style= "padding-left:20px;font-weight: 500;">Ship > 30K</div>
			     	</div>
			     	<div style = "padding-top : 18px; display: flex; align-items: center;">
			     	<i class="fa fa-clock-o" aria-hidden="true"></i>
			     	<div style= "padding-left:20px;font-weight: 500;">Đổi trả miễn phí trong 5 ngày</div>
			     	</div> 		   
				  </div>					
			 </div>								
		</form> 
	</div>
	<script type="text/javascript">
	 var quantitiy = 0;
     $('.quantity-right-plus').click(function (e) {
       // Stop acting like a button
       e.preventDefault();
       // Get the field name
       var quantity = parseInt($('#quantity').val());
       // If is not undefined
       $('#quantity').val(quantity + 1);
       // Increment
     });

     $('.quantity-left-minus').click(function (e) {
       // Stop acting like a button
       e.preventDefault();
       // Get the field name
       var quantity = parseInt($('#quantity').val());
       // If is not undefined
       // Increment
       if (quantity > 0) {
         $('#quantity').val(quantity - 1);
       }
     });
	</script>	
</body>		 
</html>