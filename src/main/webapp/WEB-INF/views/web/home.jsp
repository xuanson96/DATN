<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<body>
	<style>
.item-flex {
	display: flex;
	align-items: center;
	margin: 10px
}

.introduce-content {
	margin-left: 10px;
}

.row-origin {
	background-image: url("./image/gioi-thieu.jpg");
	margin: 40px 0px;
}

.back-ground {
	color: #857a67;
	font-size: 50px;
	background-image: url("./image/background-trang.png");
	background-size: cover;
	text-align: center;
	padding: 15px;
	font-weight: 600;
}

.origin {
	position: relative;
}

.back-ground-position {
	position: absolute;
	top: 14px;
	font-size: 39px;
	left: 109px;
	background-image: url("./image/background-trang1.png");
}

.origin-item2 {
	margin-left: 50px;
	margin-top: 22px
}
.quality{
	margin: 30px 100px auto;
	margin-bottom: 30px
}
.quality h2{
	text-align: center;
	font-family: lobster;
	color: #857a67
}
.quality-content{
	position: relative;
}
.quality-content h3{
	font-family: lobster;
	color: #857a67;
	position: absolute;
	top: -18px;
	background-color: white;   
	}
.quality-content p{
	border: 1px solid #cccccc;
	padding: 15px;	
}

</style>
	<div class="container-fluid"
		style="padding-top: 40px; margin: 0; padding: 0;">
		<div id="carouselExampleIndicators" class="carousel slide my-4"
			data-ride="carousel" style="width: 100%;">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
					<img class="d-block img-fluid" src="./image/hinh-nen-1.jpg"
						alt="First slide" style="width: 100%">

				</div>
				<div class="carousel-item">
					<img class="d-block img-fluid" src="./image/hinhnen2.jpg"
						alt="Second slide" style="width: 100%">
				</div>
				<div class="carousel-item">
					<img class="d-block img-fluid" src="./image/hinhnen3.jpg"
						alt="Third slide" style="width: 100%">
				</div>
				<div class="carousel-item">
					<img class="d-block img-fluid" src="./image/hinhnen4.jpg"
						alt="Third slide" style="width: 100%">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>

		<div class="item-flex" style="margin: 50px 0">
			<div class="item-flex">
				<img src="./image/apple_icon.png" style="height: 100px">
				<div class="introduce-content">
					<h5>Chất lượng đảm bảo</h5>
					<div>Sản phẩm của Hoa Quả Việt có nguồn gốc xuất sứ rõ ràng,
						đảm bảo chất lượng.</div>
				</div>
			</div>
			<div class="item-flex">
				<img src="./image/fruit_carrot.png" style="height: 100px">
				<div class="introduce-content">
					<h5>Tươi ngon hơn</h5>
					<div>Lựa chọn và nhập mới mỗi ngày… nên luôn đảm bảo tươi
						ngon nhất tới tay khách hàng</div>
				</div>
			</div>
			<div class="item-flex">
				<img src="./image/save_money.png" style="height: 100px">
				<div class="introduce-content">
					<h5>Tiết kiệm</h5>
					<div>Giá cả hợp lý nhất với túi tiền mỗi gia đình.</div>
				</div>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">Sắp xếp</button>
			<div class="dropdown-content">
				<a href="#" style="width: 200px" onclick="sorted('priceDESC')">Theo
					giá tăng dần</a> <a href="#" onclick="sorted('priceASC')">Theo giá
					giảm dần</a> <a href="#" onclick="sorted('dayNew')">Mới nhất</a> <a
					href="#" onclick="sorted('dayOld')">Cũ nhất</a> <a href="#"
					onclick="sorted('AnphabetDESC')">Theo bảng chữ cái từ A-Z</a> <a
					href="#" onclick="sorted('AnphabetASC')">Theo bảng chữ cái từ
					Z-A</a>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-9">
				<div class="row list-item" style="margin-top: 15px">
					<c:forEach items="${product.listResult}" var="model">
						<div class="col-lg-4 col-md-6 ">
							<div class="card h-100">
								<a href="#"><img class="card-img-top img-circle"
									src="${model.file}" style="height: 280px"></a>
								<div class="card-body">
									<h4 class="card-title">${model.name}</h4>
									<h5 style="color: red">${model.price}</h5>
									<p class="card-text">${model.description}</p>
								</div>
								<div class="card-footer" style="height: 50px">
									<div style="display: flex">
										<small class="text-muted">&#9733;
											&#9733;&#9733;&#9733; &#9734;</small>
										<form action="detailProduct?id=${model.id}" method="post"
											venctype="multipart/form-data">
											<button class="showProduct btn btn-link" type="submit"
												data-toggle="modal" data-target="#exampleModalCenter">
												<img
													src="http://localhost:8080/project-cuoikhoa//image?name=eye.png"
													style="height: 15px" />
											</button>
										</form>
										<form class="addProduct" action="addCart?id=${model.id}"
											method="post" enctype="multipart/form-data">
											<button type="submit" style="border: none">
												<img
													src="http://localhost:8080/project-cuoikhoa//image?name=giohang.png"
													style="height: 25px" />
											</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<form action="trang-chu" id="formSubmit" method="get" style = "margin-top: 40px">
					<ul class="pagination" id="pagination" style="margin-left: 480px"></ul>
					<input type="hidden" value="" id="page" name="page" /> <input
						type="hidden" value="" id="limit" name="limit" />
				</form>
			</div>
		</div>


		<div class="row-origin">
			<div style="margin: 20px 100px auto;">
				<div class="back-ground">Trái cây Việt Nam tiêu chuẩn
					GLobalJAP</div>

				<div class="item-flex">
					<div class="origin origin-item1">
						<img src="./image/traicaynhapkhau.jpg" style="height: 320px">
						<div class="back-ground-position">Trái cây nhập khẩu</div>
						<div style="background-color: white; padding: 15px">Tại
							Viettropfruit, chúng tôi tuyển chọn những loại trái cây nhập khẩu
							theo tiêu chuẩn GlobalGAP, đảm bảo khi đến tay khách hàng, trái
							cây vẫn luôn tươi ngon và quan trọng nhất là trái cây nhập khẩu
							có nguồn gốc rõ ràng, đảm bảo an oàn cho sức khỏe người tiêu
							dùng.</div>
					</div>
					<div class="origin origin-item2">
						<img src="./image/trai-cay-noi-dia.png" style="height: 320px">
						<div class="back-ground-position">Trái cây xuất khẩu</div>
						<div style="background-color: white; padding: 15px">Tại
							Viettropfruit, chúng tôi mong muốn đưa các sản phẩm trái cây mang
							thương hiệu Việt không chỉ đến tay người tiêu dùng Việt Nam mà
							còn là đến với thế giới, góp phần vào sự phát triển của nền nông
							nghiệp Việt. Hãy cùng Viettropfruit chung tay vì sức khỏe của gia
							đình bạn và cho một nền nông nghiệp SẠCH</div>
					</div>
				</div>
			</div>
		</div>

		<div class="quality item-flex">
			<img src="./image/gold-quality.png" style= "height: 200px">
			<div style = "margin-left: 50px">
				<h2 >Uy Tín – Chất Lượng</h2>   
				<div style = "padding: 5px 27px">Viettropfruit đảm bảo cung cấp sản phẩm với chất lượng
					tốt nhất, đáp ứng đầy đủ nhu cầu về số lượng cũng như yêu cầu về
					quy chuẩn chất lượng của khách hàng</div>
				<div class="item-flex" style = "margin-top: 40px">
					<div  class="quality-content">
						<h3 style = "left: 28px">Sản Phẩm Chất Lượng Cao</h3>	
						<p style = "margin: 0px 20px 0 0">Tại Viettropfruit, các sản phẩm đều đạt tiêu chuẩn VietGAP
							hoặc GlobalGAP. Các sản phẩm tại Viettropfruit được bảo quản tốt
							nhất, đảm bảo chất lượng nhất khi đến tay người tiêu dùng</p>					
					</div>					
					<div class="quality-content">
						<h3 style = "left: 45px">Nhà Cung Cấp Đáng Tin Cậy</h3>
						<p style = "margin: 0 0 0 20px">Các đối tác của Viettropfruit là những nhà vườn, những hợp
							tác xã hoặc những thương hiệu trái cây đã đươc kiểm chứng. Nguồn
							gốc sản phẩm luôn rõ ràng với đầy đủ các chứng nhận cần thiết.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	var totalPages = ${ product.totalPage };
	var currentPage = ${ product.page };
	var currentCategory = null;
	$(function () {
		window.pagObj = $('#pagination').twbsPagination({
			totalPages: totalPages,
			startPage: currentPage,
			onPageClick: function (event, page) {
				if (currentPage != page) {
					$('#limit').val(6);
					$('#page').val(page);
					$('#formSubmit').submit();
				}
			}
		});
	});

	function show(listItems) {
		let div = document.querySelector('.list-item');
		div.innerHTML = '';
		for (let i = 0; i < listItems.length; i++) {
			let child = document.createElement('div')
			child.className = 'col-lg-4 col-md-6 mb-4'
			child.innerHTML = `<div class="card h-100">
							<a href="#"><img class="card-img-top" src="\${listItems[i].img}" style="height: 280px"></a>							
					<div class="card-body">
							<h4 class="card-title">
								\${listItems[i].name}
							</h4>
							<h5 style = "color:red">\${listItems[i].price}</h5>
							<p class="card-text">\${listItems[i].description}</p>
					</div>
					<div class="card-footer">
						<div style="display: flex">
						<small class="text-muted">&#9733; &#9733;&#9733;&#9733; &#9734;</small>											
						<form  action="detailProduct?id=\${listItems[i].id}" method="post" venctype="multipart/form-data">																		
							<button class = "showProduct btn btn-link" type="submit"  data-toggle="modal" data-target="#exampleModalCenter" >
							  <img src = "http://localhost:8080/project-cuoikhoa//image?name=eye.png"  style="height: 15px" />
							</button>
					    </form >																		
						<form class = "addProduct" action="addCart?id=\${listItems[i].id}" method="post" enctype="multipart/form-data">											
							<button type="submit" style="border: none">
								<img src="http://localhost:8080/project-cuoikhoa//image?name=giohang.png" style="height: 25px" />																						
							</button>
						</form>	
						</div>
					</div>
					</div>`;
			div.appendChild(child);			
		}
	}

	function getListItemByCategory(category) {
		let listItem = [];
		if (category == null) {
			<c:forEach items="${product1.listResult}" var="model" >
				listItem.push({
						id : '${model.id}',						
						img: '${model.file}',
						name: '${model.name}',
						price : '${model.price}',
						description: '${model.description}',
						modifiedDate : '${model.modifiedDate}' 
					})							
			     	</c:forEach>				
					} else {
			<c:forEach items="${product1.listResult}" var="model" >
				if('${model.categoryName}' == category){
					listItem.push({
						id: '${model.id}',
						img: '${model.file}',
						name: '${model.name}',
						price: '${model.price}',
						description: '${model.description}',
						modifiedDate : '${model.modifiedDate}' 
					})
				}
			</c:forEach >
					}
		return listItem;
	}
	function filter(category) {
		currentCategory = category;
		let listItem = getListItemByCategory(category);
		show(listItem);
	}

	function sorted(type) {
		let listItems = getListItemByCategory(currentCategory);
		switch (type) {
			case 'priceDESC':
				let list = listItems.sort(function (a, b) { return a.price - b.price });
				show(list);
				break;
			case 'priceASC':
				listItems.sort(function (a, b) { return b.price - a.price });
				show(listItems);
				console.log("priceASC: ", listItems);
				break;
			case 'dayNew':
				listItems.sort(function (a, b) {return new Date(b.modifiedDate) - new Date(a.modifiedDate);				
				});
				console.log("dayNew: ", listItems);
				show(listItems);
				break;
			case 'dayOld':
				listItems.sort(function (a, b) { return new Date(a.modifiedDate) - new Date(b.modifiedDate); });
				show(listItems);
				break;
			case 'AnphabetDESC':
				let listName = [];
				for (let i = 0; i < listItems.length; i++) {
					listName.push(listItems[i].name);
				}
				listName.sort(function (a, b) {
					return a.localeCompare(b);
				});
				let listItemSort = [];
				for (let i = 0; i < listName.length; i++) {
					for (let j = 0; j < listItems.length; j++) {
						if (listName[i] == listItems[j].name) {
							listItemSort.push(listItems[j]);
						}
					}
				}
				listItems = [];
				for (let i = 0; i < listItemSort.length; i++) {
					listItems.push(listItemSort[i]);
				}
				show(listItems);
				break;
			case 'AnphabetASC':
				let listNameASC = [];
				for (let i = 0; i < listItems.length; i++) {
					listNameASC.push(listItems[i].name);
				}
				listNameASC.sort(function (a, b) {
					return b.localeCompare(a);
				});
				let listItemSorts = [];
				for (let i = 0; i < listNameASC.length; i++) {
					for (let j = 0; j < listItems.length; j++) {
						if (listNameASC[i] == listItems[j].name) {
							listItemSorts.push(listItems[j]);
						}
					}
				}
				listItems = [];
				for (let i = 0; i < listItemSorts.length; i++) {
					listItems.push(listItemSorts[i]);
				}			
				show(listItems);
				break;
			default:
				break;
		}
	}
	</script>
</body>
