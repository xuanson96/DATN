<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<body>
<body>
	<div class="container">
		<div class="row">							
			<div class="col-lg-9" style="flex: 0 0 100%; max-width: 100%">
				<div class="row list-item" style="margin-top: 38px">
					<c:forEach items="${listProduct}" var="product">
						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card h-100">
								<a href="#"><img class="card-img-top" src="${product.file}" style = "height: 250px"/></a>
								<%-- http://localhost:8080/project-cuoikhoa//image-manual-response?name=${product.img} --%>														
								<div class="card-body">
									<h4 class="card-title">
										<a href="#">${product.name}</a>										
									</h4>
									<h5>${product.price}</h5>
									<p class="card-text">${product.description}</p>
									<h5 style = "display: none">${product.categoryName}</h5>
									<h5 style = "display: none">${product.id}</h5>
								</div>
								<div class="card-footer  Delete-Update">
									<div><a href = "/project-cuoikhoa/delete?id=${product.id}" >Delete</a></div>
									<div><a href = "/project-cuoikhoa/edit?id=${product.id}" style = "padding-left: 118px">Edit</a></div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>	
	</div>

</body>
</body>
