<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html >
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Single Prodcuts || Clothing</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="images/icons/favicon.ico">
<!-- Place favicon.ico in the root directory -->

<!-- All css files are included here. -->
<!-- Bootstrap fremwork main css -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- This core.css file contents all plugings css file. -->
<link rel="stylesheet" href="css/core.css">
<!-- Theme shortcodes/elements style -->
<link rel="stylesheet" href="css/shortcode/shortcodes.css">
<!-- Theme main style -->
<link rel="stylesheet" href="style.css">
<!-- Responsive css -->
<link rel="stylesheet" href="css/responsive.css">
<!-- User style -->
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet" href="css/color/skin-default.css">



</head>

<body>

	<!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

	<!-- Body main wrapper start -->
	<div class="wrapper sigle-product">

		<%@include file="header.jsp"%>

		<!--breadcumb area start -->
		<div class="breadcumb-area overlay pos-rltv">
			<div class="bread-main">
				<div class="bred-hading text-center">
					<h5>产品详细信息${count}</h5>
				</div>
				<ol class="breadcrumb">
					<li class="home"><a title="去首页" href="index.jsp">主页</a></li>
					<li class="active">产品详情</li>
				</ol>
			</div>
		</div>
		<!--breadcumb area end -->

		<!--single-protfolio-area are start-->
		<div class="single-protfolio-area ptb-70">
			<div class="container">
				<div class="row">
					<div class="col-md-7 col-sm-12 col-xs-12">
						<div class="portfolio-thumbnil-area">
							<div class="product-more-views">
								<div class="tab_thumbnail" data-tabs="tabs">
									<div class="thumbnail-carousel">
										<ul>
											<li class="active"><a href="#view11" class="shadow-box"
												aria-controls="view11" data-toggle="tab"><img
													class="Img1" src="images/product/${lstimages[0]}" alt="" /></a></li>
											<li><a href="#view22" class="shadow-box"
												aria-controls="view22" data-toggle="tab"><img
													class="Img2" src="images/product/${lstimages[1]}" alt="" /></a></li>
											<li><a href="#view33" class="shadow-box"
												aria-controls="view33" data-toggle="tab"><img
													class="Img3" src="images/product/${lstimages[2]}" alt="" /></a></li>
											<li><a href="#view44" class="shadow-box"
												aria-controls="view44" data-toggle="tab"><img
													class="Img4" src="images/product/${lstimages[3]}" alt="" /></a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="tab-content active-portfolio-area pos-rltv">
								<div class="social-tag">
									<a href="#"><i class="zmdi zmdi-share"></i></a>
								</div>
								<div role="tabpanel" class="tab-pane active" id="view11">
									<div class="product-img">
										<a class="fancybox" data-fancybox-group="group"
											href="images/product/${lstimages[0]}" id="a1"><img
											class="Img1" src="images/product/${lstimages[0]}"
											alt="Single portfolio" /></a>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane" id="view22">
									<div class="product-img">
										<a class="fancybox" data-fancybox-group="group"
											href="images/product/${lstimages[1]}" id="a2"><img
											class="Img2" src="images/product/${lstimages[1]}"
											alt="Single portfolio" /></a>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane" id="view33">
									<div class="product-img">
										<a class="fancybox" data-fancybox-group="group"
											href="images/product/${lstimages[2]}" id="a3"><img
											class="Img3" src="images/product/${lstimages[2]}"
											alt="Single portfolio" /></a>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane" id="view44">
									<div class="product-img">
										<a class="fancybox" data-fancybox-group="group"
											href="images/product/${lstimages[3]}" id="a4"><img
											class="Img4" src="images/product/${lstimages[3]}"
											alt="Single portfolio" /></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-5 col-sm-12 col-xs-12">
						<div class="single-product-description">
							<div class="sp-top-des">
								<h3 id="hname">${goods.name }</h3>
								<div class="prodcut-ratting-price">
									<div class="prodcut-ratting">
										<a href="#" tabindex="0"><i class="fa fa-star-o"></i></a> <a
											href="#" tabindex="0"><i class="fa fa-star-o"></i></a> <a
											href="#" tabindex="0"><i class="fa fa-star-o"></i></a> <a
											href="#" tabindex="0"><i class="fa fa-star-o"></i></a> <a
											href="#" tabindex="0"><i class="fa fa-star-o"></i></a>
									</div>
									<div class="prodcut-price">
										<div class="new-price" id="delp2">
											<fmt:formatNumber type="number"
												value="${goods.price*goods.rebate}" pattern="0.00"
												maxFractionDigits="2" />
										</div>
										<div class="old-price">
											<del id="delp1">${goods.price}</del>
										</div>
									</div>
								</div>
							</div>

							<div class="sp-des">
								<p id="pFeature">${goods.feature}</p>
							</div>
							<div class="sp-bottom-des">
								<div class="single-product-option">
									<div class="sort product-type">
										<label>颜色: </label> <select id="input-sort-color5"
											onchange="ajax5()">
											<c:forEach items="${lstColor }" var="lc">
												<option id="selColor" value="#">${lc}</option>
											</c:forEach>
											<option value="1" selected="selected">请选择颜色</option>
										</select>
									</div>
									<div class="sort product-type">
										<label>尺寸: </label> <select id="input-sort-size5"
											onchange="ajax5()">
											<c:forEach items="${ lstSize}" var="ls">
												<option value="#">${ls}</option>
											</c:forEach>
											<option value="1" selected="selected">请选择尺寸</option>
										</select>
									</div>
								</div>
								<label>库存 :</label><label id="lab5"> <c:choose>
										<c:when test="${empty count }">${goods.stock}</c:when>
										<c:otherwise>${count}</c:otherwise>
									</c:choose>
								</label>
								<div class="quantity-area">
									<label>数量 :</label>
									<div class="cart-quantity">
										<form action="#" method="POST" id="myform">
											<div class="product-qty">
												<div class="cart-quantity">
													<div class="cart-plus-minus">
														<div class="dec qtybutton" onclick="jiancount5();">-</div>
														<input id="iptCount5" type="text" value="0"
															readonly="readonly" name="qtybutton"
															class="cart-plus-minus-box">
														<div class="inc qtybutton" onclick="addcount5();">+</div>
													</div>
												</div>
											</div>
										</form>
									</div>

								</div>
								<div class="social-icon socile-icon-style-1">
									<ul>
										<li><a onclick="addCart5();"data-tooltip="Add To Cart"
											class="add-cart add-cart-text" data-placement="left"
											tabindex="0">添加到购物车<i class="fa fa-cart-plus"></i></a></li>
										<li><a href="#" data-tooltip="Wishlist" class="w-list"
											tabindex="0"><i class="fa fa-heart-o"></i></a></li>
										<li><a href="#" data-tooltip="Compare" class="cpare"
											tabindex="0"><i class="fa fa-refresh"></i></a></li>
										<li><a href="#" data-tooltip="Quick View" class="q-view"
											data-toggle="modal" data-target=".modal" tabindex="0"><i
												class="fa fa-eye"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--single-protfolio-area are start-->

		<!--descripton-area start -->
		<div class="descripton-area">
			<div class="container">
				<div class="row">
					<div class="product-area tab-cars-style">
						<div class="title-tab-product-category">
							<div class="col-md-12 text-center">
								<ul class="nav mb-40 heading-style-2" role="tablist">
									<li role="presentation"><a href="#newarrival"
										aria-controls="newarrival" role="tab" data-toggle="tab">描述</a></li>
									<li role="presentation" class="active"><a
										href="#bestsellr" aria-controls="bestsellr" role="tab"
										data-toggle="tab">评论</a></li>
									<li role="presentation"><a href="#specialoffer"
										aria-controls="specialoffer" role="tab" data-toggle="tab">便签</a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="col-sm-12">
							<div class="content-tab-product-category">
								<!-- Tab panes -->
								<div class="tab-content">
									<div role="tabpanel" class="tab-pane fix fade in"
										id="newarrival">
										<div class="review-wraper">
											<p id="pDescribe">${goods.gdescribe}</p>
										</div>
									</div>
									<div role="tabpanel" class="tab-pane fix fade in active"
										id="bestsellr">
										<div class="review-wraper">
											<c:forEach items="${page.rows }" var="v">
												<table
													style="border-collapse: separate; border-spacing: 10px;">
													<tr>
														<td
															style="font-family: 宋体; font-size: 14px; font-weight: bold;"><img
															alt="" src="images/user/user_${v.level%5}.jpg"
															width="40px" height="40px" style="border-radius: 50%">
															&nbsp;${v.uname}</td>
														<td>&nbsp;
															<div class="prodcut-ratting">
																<c:forEach begin="1" end="${v.level}" step="1">
																	<i class="fa fa-star"></i>
																</c:forEach>
															</div>
														</td>
													</tr>
													<tr style="font-family: 楷体; font-size: 10px;">
														<td>${v.time }</td>
														<td>&nbsp;颜色：${v.color }</td>
														<td>&nbsp;尺码：${v.size }</td>
													</tr>
													<tr
														style="font-family: 宋体; font-size: 16px; font-weight: bold;">
														<td>${v.comment }</td>
													</tr>
												</table>
												<br />
												<br />
												<br />
											</c:forEach>

											<!--         翻 页         -->
											<div id="pp" class="easyui-pagination"
												style="background: #efefef; border: 1px solid #ccc;"
												data-options="
												total:${page.total },
												pageSize:10,
												pageNumber:${empty param.page?1:param.page},
												onSelectPage:queryPage">
											</div>
										</div>

									</div>
									<div role="tabpanel" class="tab-pane fix fade in"
										id="specialoffer">
										<ul class="tag-filter">
											<li><a href="#">Fashion</a></li>
											<li><a href="#">Women</a></li>
											<li><a href="#">Winter</a></li>
											<li><a href="#">Street Style</a></li>
											<li><a href="#">Style</a></li>
											<li><a href="#">Shop</a></li>
											<li><a href="#">Collection</a></li>
											<li><a href="#">Spring 2016</a></li>
											<li><a href="#">Street Style</a></li>
											<li><a href="#">Style</a></li>
											<li><a href="#">Shop</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--descripton-area end-->

		<!--new arrival area start-->
		<div class="new-arrival-area ptb-70">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 text-center">
						<div
							class="heading-title heading-style pos-rltv mb-50 text-center">
							<h5 class="uppercase">相关产品</h5>
						</div>
					</div>
					<div class="clearfix"></div>
					<div
						class="total-new-arrival new-arrival-slider-active carsoule-btn">
						<c:forEach items="${lstGoods}" var="g">
											<div class="col-md-3">
												<div class="single-product">
													<div class="product-img">
														<div class="product-label">
															<div class="new">Sale</div>
														</div>
														<div class="single-prodcut-img  product-overlay pos-rltv">
															<a href="single-product.do?id=${g.id }&name=${g.name}">
																<img alt=""
																src="images/product/${g.image.split('、')[0]}"
																class="primary-image"> <img alt=""
																src="images/product/03.jpg" class="secondary-image">
															</a>
														</div>
														<div class="product-icon socile-icon-tooltip text-center">
															<ul>
																<li><a href="#" data-tooltip="Wishlist"
																	class="w-list"><i class="fa fa-heart-o"></i></a></li>
																<li><a href="#" data-tooltip="Compare"
																	class="cpare"><i class="fa fa-refresh"></i></a></li>
																<li><a onclick="showInfo(${g.id})"
																	data-tooltip="Quick View" class="q-view"
																	data-toggle="modal" data-target=".modal"><i
																		class="fa fa-eye"></i></a></li>
															</ul>
														</div>
													</div>
													<div class="product-text">
														<div class="prodcut-name">
															<a href="single-product.html">${g.name }</a>
														</div>
														<div class="prodcut-ratting-price">
															<div class="prodcut-ratting">
																<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																	class="fa fa-star"></i></a> <a href="#"><i
																	class="fa fa-star"></i></a> <a href="#"><i
																	class="fa fa-star"></i></a> <a href="#"><i
																	class="fa fa-star-o"></i></a>
															</div>
															<div class="prodcut-price">
																<div class="new-price">
																	$
																	<fmt:formatNumber type="number" value="${g.price*g.rebate}"
																		pattern="#.00" maxFractionDigits="2" />
																</div>
																<div class="old-price">${g.price}</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
						
						
					</div>
				</div>
			</div>
		</div>
		<!--new arrival area end-->
			<!-- QUICKVIEW PRODUCT -->
		<div id="quickview-wrapper">
			<!-- Modal -->
			<div class="modal fade" id="productModal" tabindex="-1" role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="modal-product">
								<div class="product-images">
									<!--modal tab start-->
									<div class="portfolio-thumbnil-area-2">
										<div class="tab-content active-portfolio-area-2">
											<div role="tabpanel" class="tab-pane active" id="view1">
												<div class="product-img">
													<img alt="Single portfolio" class="img1" />
												</div>
											</div>
											<div role="tabpanel" class="tab-pane" id="view2">
												<div class="product-img">
													<img alt="Single portfolio" class="img2" />
												</div>
											</div>
											<div role="tabpanel" class="tab-pane" id="view3">
												<div class="product-img">
													<img alt="Single portfolio" class="img3" />
												</div>
											</div>
											<div role="tabpanel" class="tab-pane" id="view4">
												<div class="product-img">
													<img alt="Single portfolio" class="img4" />
												</div>
											</div>
										</div>
										<div class="product-more-views-2">
											<div class="thumbnail-carousel-modal-2" data-tabs="tabs">
												<a href="#view1" aria-controls="view1" data-toggle="tab"><img
													alt="" class="img1" /></a> <a href="#view2"
													aria-controls="view2" data-toggle="tab"><img alt=""
													class="img2" /></a> <a href="#view3" aria-controls="view3"
													data-toggle="tab"><img alt="" class="img3" /></a> <a
													href="#view4" aria-controls="view4" data-toggle="tab"><img
													alt="" class="img4" /></a>
											</div>
										</div>
									</div>
								</div>
								<!--modal tab end-->
								<!-- .product-images -->
								<div class="product-info">
									<h1 id="product_name"></h1>
									<div class="price-box-3">
										<div class="s-price-box">
											<span class="new-price" id="new_price"></span> <span
												class="old-price" id="old_price"></span>
										</div>
									</div>
									<a href="shop.jsp" class="see-all">查看所有商品</a>
									<div class="single-product-option">
										<div class="sort product-type">
											<label>颜色: </label> <select id="input-sort-color"
												onchange="ajax1()">


											</select>
										</div>
										<div class="sort product-type">
											<label>尺寸: </label> <select id="input-sort-size"
												onchange="ajax1()">


											</select>
										</div>
									</div>
									<label>库存 :</label><label id="lab"> <c:choose>
											<c:when test="${empty count }">${goods.stock}</c:when>
											<c:otherwise>${count}</c:otherwise>
										</c:choose>
									</label>
									<div class="quantity-area">
										<label>数量 :</label>
										<div class="cart-quantity">
											<form action="" method="POST" id="myform">
												<div class="product-qty">
													<div class="cart-quantity">
														<div class="cart-plus-minus">
															<div class="dec qtybutton" onclick="jiancount();">-</div>
															<input id="iptCount" type="text" value="0"
																readonly="readonly" name="qtybutton"
																class="cart-plus-minus-box">
															<div class="inc qtybutton" onclick="addcount();">+</div>
														</div>
													</div>
												</div>
											</form>
										</div>

									</div>
									<div class="quick-add-to-cart">
										<button class="single_add_to_cart_button" onclick="addCart();">加入购物车</button>
									</div>
									<div class="quick-desc" id="feature">
									</div>
									<div class="social-sharing-modal">
										<div class="widget widget_socialsharing_widget">
											<h3 class="widget-title-modal">分享商品</h3>
											<ul class="social-icons-modal">
												<li><a target="_blank" title="Facebook" href="#"
													class="facebook m-single-icon"><i
														class="fa fa-facebook"></i></a></li>
												<li><a target="_blank" title="Twitter" href="#"
													class="twitter m-single-icon"><i class="fa fa-twitter"></i></a></li>
												<li><a target="_blank" title="Pinterest" href="#"
													class="pinterest m-single-icon"><i
														class="fa fa-pinterest"></i></a></li>
												<li><a target="_blank" title="Google +" href="#"
													class="gplus m-single-icon"><i
														class="fa fa-google-plus"></i></a></li>
												<li><a target="_blank" title="LinkedIn" href="#"
													class="linkedin m-single-icon"><i
														class="fa fa-linkedin"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- .product-info -->
							</div>
							<!-- .modal-product -->
						</div>
						<!-- .modal-body -->
					</div>
					<!-- .modal-content -->
				</div>
				<!-- .modal-dialog -->
			</div>
			<!-- END Modal -->
		</div>
		<!-- END QUICKVIEW PRODUCT -->
		</div>
<!-- Modernizr JS -->
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
<script type="text/javascript">



	var count = "${goods.stock}";
	//》》》》修改后的商品id
	var scid;
	function ajax5() {
		var obj1 = document.getElementById("input-sort-color5");

		var index1 = obj1.selectedIndex;

		var color = obj1.options[index1].text;
		var obj = document.getElementById("input-sort-size5");

		var index = obj.selectedIndex;

		var size = obj.options[index].text;
		var name = "${goods.name}";
		$.ajax({
			"url" : "ajax1.do",
			"type" : "post",
			"data" : {
				"color" : color,
				"size" : size,
				"name" : name
			},
			"dataType" : "json",
			"success" : function(obj) {
				if (obj != null) {
					$("#iptCount5").val(0);
					scid = obj.id;
					count = obj.stock;
					$("#lab5").html(obj.stock);
				} else {
					$("#iptCount5").val(0);
					count = 0;
					$("#lab5").html(0);
				}

			},
			"error" : function() {
			}
		});
	}

	function addCart5(){
		
		var inputcount=$("#iptCount5").val();
		if(inputcount==0){
			alert("请选择商品数量！");
			return;
			
		}else{
			var data={
					"count":inputcount,
					"scid":scid
					}
			$.post("addCart2.do",data,function(data){
				if(data){
					if(confirm("商品成功加入购物车，是否跳转到购物车")){
						 window.location ="cart.jsp" 
					}
					
				}
			});
			
		}
		$("#iptCount5").val(0);
		count = 0;
		$("#lab5").html(0);
		$("#input-sort-size5").val(1);
		$("#input-sort-color5").val(1);
	}
	
	
	function addcount5(){
        var oldVal =parseInt($("#iptCount5").val());
        if(count>oldVal){
        	var newVal=oldVal+1;
	    	$("#iptCount5").val(newVal);
	     }else{
	        	alert("库存不足");
	    }
   } 
 	function jiancount5(){
			var oldVal =parseInt($("#iptCount5").val());
	        if(oldVal>1){
	        	var newVal=oldVal-1;
	         	$("#iptCount5").val(newVal);
	        }else{
	        	$("#iptCount5").val(1);
	        }
       
        } 
</script>
<script type="text/javascript">
	function queryPage(page, size) {
		location.href = "single-product.do?id=${goods.id}&page=" + page
				+ "&size=" + size;
	}
</script>
<!-- 眼睛js -->
<script type="text/javascript">
		var count = "${goods.stock}";
		//》》》》修改后的商品id
		var scid;
		var price1;
		function showInfo(gid){
				$.ajax({
				"url" : "single-product1.do",
				"type" : "post",
				"data" : {
					"id" : gid,
				},
				"dataType" : "json",
				"success" : function(obj) {
					if (obj != null) {
						$("#iptCount").val(0);
						count = 0;
						$("#lab").html(0);
						$("#input-sort-size").empty();
						$("#input-sort-color").empty();
						var images=obj[3];
						var goods=obj[0];
						var lstSize=obj[2];
						var lstColor=obj[1];
						console.log(images);
						$(".img1").attr("src","images/product/"+images[0]);
						$(".img2").attr("src","images/product/"+images[1]);
						$(".img3").attr("src","images/product/"+images[2]);
						$(".img4").attr("src","images/product/"+images[3]);
						$("#product_name").text(goods.name);
						price1=(goods.price*goods.rebate).toFixed(2);
						$("#new_price").text("$"+(goods.price*goods.rebate).toFixed(2));
						$("#old_price").text("$"+goods.price);
						$("#feature").html(goods.feature);	
						var sel1=$("#input-sort-size"); //根据id获取select的jquery对象
						sel1.append("<option value='1' selected='selected'>请选择尺寸</option>");
						for(var i=0;i<lstSize.length;i++){
							sel1.append("<option >"+lstSize[i]+"</option>");//添加option
						}
						var sel2=$("#input-sort-color"); 
						sel2.append("<option  value='1' selected='selected'>请选择颜色</option>");
						for(var i=0;i<lstColor.length;i++){
							sel2.append("<option >"+lstColor[i]+"</option>");//添加option
						}
					} else {
					}
				},
				"error" : function() {
				}
			});
		};

		function ajax1() {
			var obj1 = document.getElementById("input-sort-color");
			var index1 = obj1.selectedIndex;
			var color = obj1.options[index1].text;
			var obj = document.getElementById("input-sort-size");
			var index = obj.selectedIndex;
			var size = obj.options[index].text;
			var name=$("#product_name").html();
				$.ajax({
				"url" : "ajax1.do",
				"type" : "post",
				"data" : {
					"color" : color,
					"size" : size,
					"name" : name
				},
				"dataType" : "json",
				"success" : function(obj) {
					if (obj != null) {
						$("#iptCount").val(0);
						scid = obj.id;
						$("#inputscid").val(scid);
						count = obj.stock;
						$("#lab").html(obj.stock);
					} else {
						$("#iptCount").val(0);
						count = 0;
						$("#lab").html(0);
					}

				},
				"error" : function() {
				}
			});
		}

		function addcount(){
	        var oldVal =parseInt($("#iptCount").val());
	        if(count>oldVal){
	        	var newVal=oldVal+1;
		    	$("#iptCount").val(newVal);
		     }else{
		        	alert("库存不足");
		    }
	   } 
	 	function jiancount(){
				var oldVal =parseInt($("#iptCount").val());
		        if(oldVal>1){
		        	var newVal=oldVal-1;
		         	$("#iptCount").val(newVal);
		         	$("#inputcount").val(newVal)
		        }else{
		        	$("#iptCount").val(1);
		        }
	       
	        }
	 	
		function addCart(){
			var inputcount=$("#iptCount").val();
			if(inputcount==0||inputcount==null){
				alert("请选择商品数量");
				return;
			}
			var data={scid:scid,count:inputcount}
			$.post("ajax_addCart.do",data,function(data){
				var type=data.split("|~|");
				if(type[1]=="id"){
					console.log(type[0]);
					console.log(inputcount);
					var newcount=parseInt(inputcount)+parseInt($("#countId_"+type[0]).html());
					var price=parseFloat($.trim($("#priceId_"+type[0]).html()));
					$("#countId_"+type[0]).text(newcount);
					console.log(price);
					console.log(newcount);
					$("#totalMoney").text(parseFloat($("#totalMoney").text())+inputcount*price1);
				}else{
					$("#cart").prepend(type[0]);
					$("#total").text(parseInt($("#total").text())+1);
					console.log(price1);
					console.log(parseFloat($("#totalMoney").text()));
					$("#totalMoney").text(parseFloat($("#totalMoney").text())+inputcount*price1);
				}
			});
			alert("添加成功");
			$("#iptCount").val(0);
			count = 0;
			$("#lab").html(0);
			$("#input-sort-size").val(1);	
			$("#input-sort-color").val(1);
		}
	</script>
		<%@include file="footer.jsp"%>