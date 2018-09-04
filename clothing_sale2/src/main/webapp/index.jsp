<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home || Clothing</title>
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


<!-- Modernizr JS -->
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
	<c:if test="${empty newGoods||empty salesGoods}">
		<jsp:forward page="showGoodsByAmong.do">
			<jsp:param value="new" name="type" />
		</jsp:forward>
	</c:if>
	<!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

	<!-- Body main wrapper start -->
	<div class="wrapper home-one">

		<%@ include file="header.jsp"%>

		<!--slider area start-->
		<div class="slider-area pos-rltv carosule-pagi cp-line">
			<div class="active-slider">
				<div class="single-slider pos-rltv">
					<div class="slider-img">
						<img src="images/slider/slider01.jpg" alt="">
					</div>
					<div class="slider-content pos-abs">
						<h4>最佳系列</h4>
						<h1 class="uppercase pos-rltv underline">独家时尚 2016</h1>
						<a href="#" class="btn-def btn-white">现在就买</a>
					</div>
				</div>
				<div class="single-slider pos-rltv">
					<div class="slider-img">
						<img src="images/slider/slider02.jpg" alt="">
					</div>
					<div class="slider-content pos-abs">
						<h4>最佳系列</h4>
						<h1 class="uppercase pos-rltv underline">独家时尚 2016</h1>
						<a href="#" class="btn-def btn-white">现在就买</a>
					</div>
				</div>
			</div>
		</div>
		<!--slider area start-->

		<!--delivery service start-->
		<div class="delivery-service-area ptb-30">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="single-service shadow-box text-center">
							<img src="images/icons/garantee.png" alt="">
							<h5>退款保证</h5>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="single-service shadow-box text-center">
							<img src="images/icons/coupon.png" alt="">
							<h5>礼券</h5>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="single-service shadow-box text-center">
							<img src="images/icons/delivery.png" alt="">
							<h5>免费送货</h5>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="single-service shadow-box text-center">
							<img src="images/icons/support.png" alt="">
							<h5>全天候支持</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--delivery service start-->

		<!--branding-section-area start-->
		<div class="branding-section-area">
			<div class="container">
				<div class="row">
					<div class="active-slider pos-rltv carosule-pagi cp-line pagi-02">
						<div class="single-slider">
							<div class="col-lg-7 col-md-6 col-sm-6 col-xs-12">
								<div class="brand-img text-center">
									<img src="images/team/branding2.png" alt=""
										style="width: 650px; height: 550px">
								</div>
							</div>
							<div class="col-lg-5 col-md-6 col-sm-6 col-xs-12">
								<div class="brand-content ptb-55">
									<div class="brand-text color-lightgrey">
										<h6>新时尚</h6>
										<h2 class="uppercase montserrat">Brand Cortta</h2>
										<h3 class="montserrat">$199.99</h3>
										<p>It is a long established fact that a reader will be
											distracted by the readable content of a page when looking at
											its layout.</p>
										<div class="social-icon-wraper mt-35">
											<div class="social-icon">
												<ul>
													<li><a href="#"><i class="zmdi zmdi-shopping-cart"></i></a></li>
													<li><a href="#"><i
															class="zmdi zmdi-favorite-outline"></i></a></li>
													<li><a href="#" data-tooltip="Quick View"
														class="q-view" data-toggle="modal" data-target=".modal"
														tabindex="0"><i class="zmdi zmdi-eye"></i></a></li>
													<li><a href="#"><i class="zmdi zmdi-repeat"></i></a></li>

												</ul>
											</div>
										</div>
									</div>
									<div class="brand-timer shadow-box-2 mt-50">
										<div class="timer-wraper text-center">
											<div class="timer">
												<div data-countdown="2018/09/20"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="single-slider">
							<div class="col-lg-7 col-md-6 col-sm-6 col-xs-12">
								<div class="brand-img text-center">
									<img src="images/team/branding3.png" alt=""
										style="width: 450px; height: 550px">
								</div>
							</div>
							<div class="col-lg-5 col-md-6 col-sm-6 col-xs-12">
								<div class="brand-content ptb-55">
									<div class="brand-text color-lightgrey">
										<h6>范思哲</h6>
										<h2 class="uppercase montserrat">品牌 Versace</h2>
										<h3 class="montserrat">$450.00</h3>
										<p>品牌标志是神话中的蛇发女妖美杜莎（Medusa），代表着致命的吸引力。</p>
										<div class="social-icon-wraper mt-35">
											<div class="social-icon">
												<ul>
													<li><a href="#"><i class="zmdi zmdi-shopping-cart"></i></a></li>
													<li><a href="#"><i
															class="zmdi zmdi-favorite-outline"></i></a></li>
													<li><a href="#" data-tooltip="Quick View"
														class="q-view" data-toggle="modal" data-target=".modal"
														tabindex="0"><i class="zmdi zmdi-eye"></i></a></li>
													<li><a href="#"><i class="zmdi zmdi-repeat"></i></a></li>

												</ul>
											</div>
										</div>
									</div>
									<div class="brand-timer shadow-box-2 mt-50">
										<div class="timer-wraper text-center">
											<div class="timer">
												<div data-countdown="2018/12/01"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="single-slider">
							<div class="col-lg-7 col-md-6 col-sm-6 col-xs-12">
								<div class="brand-img text-center">
									<img src="images/team/branding.png" alt="">
								</div>
							</div>
							<div class="col-lg-5 col-md-6 col-sm-6 col-xs-12">
								<div class="brand-content ptb-55">
									<div class="brand-text color-lightgrey">
										<h6>华伦天奴</h6>
										<h2 class="uppercase montserrat">品牌 Valentino</h2>
										<h3 class="montserrat">$330.00</h3>
										<p>Valentino是全球高级定制和高级成衣奢侈品品牌，它的创作表达现代人本主义，着重穿戴者的个性。</p>
										<div class="social-icon-wraper mt-35">
											<div class="social-icon">
												<ul>
													<li><a href="#"><i class="zmdi zmdi-shopping-cart"></i></a></li>
													<li><a href="#"><i
															class="zmdi zmdi-favorite-outline"></i></a></li>
													<li><a href="#" data-tooltip="Quick View"
														class="q-view" data-toggle="modal" data-target=".modal"
														tabindex="0"><i class="zmdi zmdi-eye"></i></a></li>
													<li><a href="#"><i class="zmdi zmdi-repeat"></i></a></li>

												</ul>
											</div>
										</div>
									</div>
									<div class="brand-timer shadow-box-2 mt-50">
										<div class="timer-wraper text-center">
											<div class="timer">
												<div data-countdown="2019/02/01"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--branding-section-area end-->

		<!--new arrival area start-->
		<div class="new-arrival-area pt-70">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 text-center">
						<div
							class="heading-title heading-style pos-rltv mb-50 text-center">
							<h5 class="uppercase">新品</h5>
						</div>
					</div>
					<div class="clearfix"></div>
					<div
						class="total-new-arrival new-arrival-slider-active carsoule-btn">
						<c:forEach items="${newGoods}" var="g">
							<div class="col-md-3">
								<!-- single product start-->
								<div class="single-product">
									<div class="product-img">
										<div class="single-prodcut-img  product-overlay pos-rltv">
											<a href="single-product.do?id=${g.id }&name=${g.name}"> <img
												alt="" src="images/product/${g.image.split('、')[0]}"
												class="primary-image"> <img alt=""
												src="images/product/06.jpg" class="secondary-image">
											</a>
										</div>
										<div class="product-icon socile-icon-tooltip text-center">
											<ul>
												<li><a href="#" data-tooltip="Wishlist" class="w-list"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" data-tooltip="Compare" class="cpare"><i
														class="fa fa-refresh"></i></a></li>
												<li><a onclick="showInfo(${g.id})"
													data-tooltip="Quick View" class="q-view"
													data-toggle="modal" data-target=".modal"><i
														class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
									<div class="product-text">
										<div class="prodcut-name">
											<a href="single-product.html">${g.name}</a>
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
												<div class="old-price">
													<del>$ ${g.price} </del>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- single product end-->
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<!--new arrival area end-->

		<!--banner area start-->
		<div class="banner-area pt-70">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-12 col-xs-12">
						<div class="single-banner gray-bg">
							<div class="row">
								<div class="col-md-6 col-sm-6">
									<div class="sb-img text-center">
										<img src="images/banner/02.png" alt="">
									</div>
								</div>
								<div class="col-md-6 col-sm-6">
									<div class="sb-content mt-60">
										<div class="banner-text">
											<h5 class="lato">新品</h5>
											<h2 class="montserrat">Grag T- Shirt</h2>
											<h3 class="montserrat">$99.99</h3>
											<div class="banner-list">
												<ul>
													<li>高品质</li>
													<li>物美价廉</li>
													<li>售后服务</li>
												</ul>
											</div>
											<div class="social-icon-wraper mt-25">
												<div class="social-icon socile-icon-style-1">
													<ul>
														<li><a href="#"><i
																class="zmdi zmdi-shopping-cart"></i></a></li>
														<li><a href="#"><i
																class="zmdi zmdi-favorite-outline"></i></a></li>
														<li><a href="#" data-tooltip="Quick View"
															class="q-view" data-toggle="modal" data-target=".modal"
															tabindex="0"><i class="zmdi zmdi-eye"></i></a></li>
														<li><a href="#"><i class="zmdi zmdi-repeat"></i></a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-12 col-xs-12">
						<div class="single-banner gray-bg">
							<div class="row">
								<div class="col-md-6 col-sm-6">
									<div class="sb-img text-center">
										<img src="images/banner/01.png" alt="">
									</div>
								</div>
								<div class="col-md-6 col-sm-6">
									<div class="sb-content mt-60">
										<div class="banner-text">
											<h5 class="lato">新品</h5>
											<h2 class="montserrat">Grag Shirt</h2>
											<h3 class="montserrat">$139.99</h3>
											<p></p>
											<a class="btn-def btn2" href="#">立即购买</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--banner area end-->

		<!--discunt-featured-onsale-area start -->
		<div class="discunt-featured-onsale-area pt-60">
			<div class="container">
				<div class="row">
					<div class="product-area tab-cars-style">
						<div class="title-tab-product-category">
							<div class="col-md-12 text-center">
								<ul class="nav mb-40 heading-style-2" role="tablist">
									<li role="presentation" class="active"><a
										href="#newarrival" aria-controls="newarrival" role="tab"
										data-toggle="tab">新品榜</a></li>
									<li role="presentation"><a href="#bestsellr"
										aria-controls="bestsellr" role="tab" data-toggle="tab">销量榜</a></li>
									
								</ul>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="content-tab-product-category">
							<!-- Tab panes -->
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane fade in active"
									id="newarrival">
									<div
										class="total-new-arrival new-arrival-slider-active carsoule-btn">
										<c:forEach items="${newGoods}" var="g">
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
								<div role="tabpanel" class="tab-pane  fade in" id="bestsellr">
									<div
										class="total-new-arrival new-arrival-slider-active carsoule-btn">
										<c:forEach items="${salesGoods}" var="g">
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
					</div>
				</div>
			</div>
		</div>
		<!--discunt-featured-onsale-area end-->

		<!--testimonial-area-start-->
		<div class="testimonial-area overlay ptb-70 mt-70">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 text-center">
						<div class="heading-title color-lightgrey mb-40 text-center">
							<h5 class="uppercase">开发团队</h5>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="total-testimonial active-slider carosule-pagi pagi-03">
							<div class="single-testimonial">
								<div class="testimonial-img">
									<img src="images/team/testi-03.jpg" alt="">
								</div>
								<div class="testimonial-content color-lightgrey">
									<div class="name-degi pos-rltv">
										<h5>李磊</h5>
										<p>开发人员</p>
									</div>
									<div class="testi-text">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam, quis nostrud
											exercitation ullamco.</p>
									</div>
								</div>
							</div>
							<div class="single-testimonial">
								<div class="testimonial-img">
									<img src="images/team/testi-02.jpg" alt="">
								</div>
								<div class="testimonial-content color-lightgrey">
									<div class="name-degi pos-rltv">
										<h5>张天龙</h5>
										<p>开发人员</p>
									</div>
									<div class="testi-text">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam, quis nostrud
											exercitation ullamco.</p>
									</div>
								</div>
							</div>
							<div class="single-testimonial">
								<div class="testimonial-img">
									<img src="images/team/testi-01.jpg" alt="">
								</div>
								<div class="testimonial-content color-lightgrey">
									<div class="name-degi pos-rltv">
										<h5>彭盈</h5>
										<p>开发人员</p>
									</div>
									<div class="testi-text">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam, quis nostrud
											exercitation ullamco.</p>
									</div>
								</div>
							</div>
							<div class="single-testimonial">
								<div class="testimonial-img">
									<img src="images/team/testi-01.jpg" alt="">
								</div>
								<div class="testimonial-content color-lightgrey">
									<div class="name-degi pos-rltv">
										<h5>金兆兴</h5>
										<p>开发人员</p>
									</div>
									<div class="testi-text">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam, quis nostrud
											exercitation ullamco.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--testimonial-area-end-->


		<!--brand area are start-->
		<div class="brand-area ptb-60">
			<div class="container">
				<div class="row">
					<div class="total-brand">
						<div class="col-md-3">
							<div class="single-brand shadow-box">
								<a href="#"><img src="images/brand/01.png" alt=""></a>
							</div>
						</div>
						<div class="col-md-3">
							<div class="single-brand shadow-box">
								<a href="#"><img src="images/brand/02.png" alt=""></a>
							</div>
						</div>
						<div class="col-md-3">
							<div class="single-brand shadow-box">
								<a href="#"><img src="images/brand/03.png" alt=""></a>
							</div>
						</div>
						<div class="col-md-3">
							<div class="single-brand shadow-box">
								<a href="#"><img src="images/brand/04.png" alt=""></a>
							</div>
						</div>
						<div class="col-md-3">
							<div class="single-brand shadow-box">
								<a href="#"><img src="images/brand/05.png" alt=""></a>
							</div>
						</div>
						<div class="col-md-3">
							<div class="single-brand shadow-box">
								<a href="#"><img src="images/brand/06.png" alt=""></a>
							</div>
						</div>
						<div class="col-md-3">
							<div class="single-brand shadow-box">
								<a href="#"><img src="images/brand/01.png" alt=""></a>
							</div>
						</div>
						<div class="col-md-3">
							<div class="single-brand shadow-box">
								<a href="#"><img src="images/brand/02.png" alt=""></a>
							</div>
						</div>
						<div class="col-md-3">
							<div class="single-brand shadow-box">
								<a href="#"><img src="images/brand/03.png" alt=""></a>
							</div>
						</div>
						<div class="col-md-3">
							<div class="single-brand shadow-box">
								<a href="#"><img src="images/brand/04.png" alt=""></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--brand area are start-->
<%@include file="footer.jsp"%>