<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Result</title>
</head>
<body>
<div class="container-fluid " style="margin: 0; padding: 0;">
<div class="row" style = "margin-top: 80px">								
			<div class="col-lg-9" >	
				<div class="row list-item" style="margin-top: 15px">
					<c:forEach items="${result}" var="result">
						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card h-100">
								<a href="#"><img class="card-img-top img-circle"
									src="${result.file}" style="height: 250px"></a>
								<div class="card-body">
									<h4 class="card-title">
										<a href="#">${result.name}</a>
									</h4>
									<h5>${result.price}</h5>
									<p class="card-text">${result.description}</p>
								</div>
								<div class="card-footer">
									<div style="display: flex">
										<small class="text-muted">&#9733; &#9733;&#9733;&#9733; &#9734;</small>
										<form  action="detailProduct?id=${result.id}" method="post" venctype="multipart/form-data">																		
											<button class = "showProduct btn btn-link" type="submit"  data-toggle="modal" data-target="#exampleModalCenter" >
											  <img src = "http://localhost:8080/project-cuoikhoa//image?name=eye.png"  style="height: 15px" />
											</button>
										</form >											
										<form action="addCart?id=${result.id}" method="post"
											enctype="multipart/form-data" >
											<button   class="addProduct" type="submit" style="border: none">
												<img
													src="http://localhost:8080/project-cuoikhoa//image?name=giohang.png" style="height: 25px" />													
											</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
</div>
<script>
function filter(category) {	    
	    	var listItem = [];
	    	<c:forEach  items="${listProduct}" var="result" >
				if('${result.categoryName}' == category){
					listItem.push({
						img: '${result.file}',
						name: '${result.name}',
						description: '${result.description}'
					})
				}
	     	</c:forEach>	         	    	
	    	let div = document.querySelector('.list-item');
	    	div.innerHTML='';	    	
	    	for(let i = 0; i < listItem.length; i++){    		
	    		 let child = document.createElement('div')
	    		 child.className = 'col-lg-4 col-md-6 mb-4'	    		 
	    		 child.innerHTML = `<div class="card h-100">
						<a href="#"><img class="card-img-top" src="\${listItem[i].img}"  style="height:250px" alt=""></a>						 
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">\${listItem[i].name}</a>
						</h4>
						<h5>${product.price}</h5>
						<p class="card-text">\${listItem[i].description}</p>
					</div>
					<div class="card-footer">
						<small class="text-muted">&#9733; &#9733; &#9733;
							&#9733; &#9734;</small>
					</div>
				</div>`;				
				div.appendChild(child);
	    	}
		} 
</script>
</body>
</html>