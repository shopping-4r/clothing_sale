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
													<fmt:formatNumber type="number" value="${g.price*0.8}"
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
									<li role="presentation"><a href="#specialoffer"
										aria-controls="specialoffer" role="tab" data-toggle="tab">热评榜</a></li>
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
																	<fmt:formatNumber type="number" value="${g.price*0.8}"
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
																	<fmt:formatNumber type="number" value="${g.price*0.8}"
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


		<!-- footer area start-->
		<div class="footer-area ptb-50">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
						<div class="single-footer contact-us">
							<div class="footer-title uppercase">
								<h5>Contact US</h5>
							</div>
							<ul>
								<li>
									<div class="contact-icon">
										<i class="zmdi zmdi-pin-drop"></i>
									</div>
									<div class="contact-text">
										<p>
											<span>777/a Seventh Street,</span> <span>Rampura,
												Bonosri</span>
										</p>
									</div>
								</li>
								<li>
									<div class="contact-icon">
										<i class="zmdi zmdi-email-open"></i>
									</div>
									<div class="contact-text">
										<p>
											<span><a href="#">company@gmail.com</a></span> <span><a
												href="#">admin@devitems.com</a></span>
										</p>
									</div>
								</li>
								<li>
									<div class="contact-icon">
										<i class="zmdi zmdi-phone-paused"></i>
									</div>
									<div class="contact-text">
										<p>
											<span>+11 (019) 25184203</span> <span>+11 (018)
												50950555</span>
										</p>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-2 col-sm-4 col-xs-12">
						<div class="single-footer informaton-area">
							<div class="footer-title uppercase">
								<h5>Information</h5>
							</div>
							<div class="informatoin">
								<ul>
									<li><a href="#">My Account</a></li>
									<li><a href="#">Order History</a></li>
									<li><a href="#">Wishlist</a></li>
									<li><a href="#">Returnes</a></li>
									<li><a href="#">Private Policy</a></li>
									<li><a href="#">Site Map</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 hidden-sm col-xs-12">
						<div class="single-footer instagrm-area">
							<div class="footer-title uppercase">
								<h5>InstaGram</h5>
							</div>
							<div class="instagrm">
								<ul>
									<li><a href="#"><img src="images/gallery/01.jpg"
											alt=""></a></li>
									<li><a href="#"><img src="images/gallery/02.jpg"
											alt=""></a></li>
									<li><a href="#"><img src="images/gallery/03.jpg"
											alt=""></a></li>
									<li><a href="#"><img src="images/gallery/04.jpg"
											alt=""></a></li>
									<li><a href="#"><img src="images/gallery/05.jpg"
											alt=""></a></li>
									<li><a href="#"><img src="images/gallery/06.jpg"
											alt=""></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-4 col-lg-offset-1 col-xs-12">
						<div class="single-footer newslatter-area">
							<div class="footer-title uppercase">
								<h5>Get Newsletters</h5>
							</div>
							<div class="newslatter">
								<form action="#" method="post">
									<div class="input-box pos-rltv">
										<input placeholder="Type Your Email hear" type="text">
										<a href="#"> <i class="zmdi zmdi-arrow-right"></i>
										</a>
									</div>
								</form>
								<div class="social-icon socile-icon-style-3 mt-40">
									<div class="footer-title uppercase">
										<h5>Social Network</h5>
									</div>
									<ul>
										<li><a href="#"><i class="zmdi zmdi-facebook"></i></a></li>
										<li><a href="#"><i class="zmdi zmdi-linkedin"></i></a></li>
										<li><a href="#"><i class="zmdi zmdi-pinterest"></i></a></li>
										<li><a href="#"><i class="zmdi zmdi-google"></i></a></li>
										<li><a href="#"><i class="zmdi zmdi-twitter"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--footer area start-->

		<!--footer bottom area start-->
		<div class="footer-bottom global-table">
			<div class="global-row">
				<div class="global-cell">
					<div class="container">
						<div class="row">
							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="copyrigth">
									Copyright @ <a href="devitems.com">Devitems</a> All right
									reserved
								</div>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<ul class="payment-support text-right">
									<li><a href="#"><img src="images/icons/pay1.png"
											alt="" /></a></li>
									<li><a href="#"><img src="images/icons/pay2.png"
											alt="" /></a></li>
									<li><a href="#"><img src="images/icons/pay3.png"
											alt="" /></a></li>
									<li><a href="#"><img src="images/icons/pay4.png"
											alt="" /></a></li>
									<li><a href="#"><img src="images/icons/pay5.png"
											alt="" /></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--footer bottom area end-->



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
													<img alt="Single portfolio" class="img1" /></a>
												</div>
											</div>
											<div role="tabpanel" class="tab-pane" id="view2">
												<div class="product-img">
													<img alt="Single portfolio" class="img2" /></a>
												</div>
											</div>
											<div role="tabpanel" class="tab-pane" id="view3">
												<div class="product-img">
													<img alt="Single portfolio" class="img3" /></a>
												</div>
											</div>
											<div role="tabpanel" class="tab-pane" id="view4">
												<div class="product-img">
													<img alt="Single portfolio" class="img4" /></a>
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

												<option value="1" selected="selected">请选择颜色</option>
											</select>
										</div>
										<div class="sort product-type">
											<label>尺寸: </label> <select id="input-sort-size"
												onchange="ajax1()">

												<option value="1" selected="selected">请选择尺寸</option>
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
											<button class="single_add_to_cart_button"  onclick="addCart();">加入购物车</button>
									</div>
									<div class="quick-desc" id="feature">Lorem ipsum dolor
										sit amet, consectetur adipiscing elit. Nam fringilla augue nec
										est tristique auctor. Donec non est at libero.Lorem ipsum
										dolor sit amet, consectetur adipiscing elit. Nam fringilla
										augue nec est tristique auctor. Donec non est at libero.Nam
										fringilla tristique auctor.</div>
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
	<!-- Body main wrapper end -->

	<!-- Placed js at the end of the document so the pages load faster -->

	<!-- jquery latest version -->
	<script src="js/vendor/jquery-1.12.0.min.js"></script>
	<!-- Bootstrap framework js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Slider js -->
	<script src="js/slider/jquery.nivo.slider.pack.js"></script>
	<script src="js/slider/nivo-active.js"></script>
	<!-- counterUp-->
	<script src="js/jquery.countdown.min.js"></script>
	<!-- All js plugins included in this file. -->
	<script src="js/plugins.js"></script>
	<!-- Main js file that contents all jQuery plugins activation. -->
	<script src="js/main.js"></script>

	<script src="js/jquery-1.4.2.min.js" type="text/javascript"></script>
	<script src="js/jquery-ui-1.8.5.custom.min.js" type="text/javascript"></script>
	<script src="js/jquery.alerts.js" type="text/javascript"></script>

	<script type="text/javascript">
	

		var count = "${goods.stock}";
		
		
		//》》》》修改后的商品id
		var scid;
		
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
						$("#input-sort-size").val(1);
						$("#input-sort-color").val(1);
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
						$("#new_price").text("$"+(goods.price*goods.rebate).toFixed(2));
						$("#old_price").text("$"+goods.price);
						$("#feature").text(goods.feature);	
						
						var sel1=$("#input-sort-size"); //根据id获取select的jquery对象
						for(var i=0;i<lstSize.length;i++){
							sel1.append("<option >"+lstSize[i]+"</option>");//添加option
							
						}
						var sel2=$("#input-sort-color"); 
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
		    	$("#inputcount").val($(newVal));
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
	 	
		function addCart(id,price){
			
			var inputcount=$("#iptCount").val();
			if(inputcount==0||inputcount==null){
				alert("请选择商品数量");
				return;
			}
			var data={scid:scid,count:inputcount}
			$.post("ajax_addCart.do",data,function(data){
				console.log(data);
				if(typeof(data) != "String"){
					console.log(data);
					console.log(inputcount);
					var newcount=parseInt(inputcount)+parseInt($("#countId_"+data).text());
					var price=parseFloat($.trim($("#priceId_"+data).html()));
					$("#countId_"+data).text(newcount);
					console.log(price);
					console.log(newcount);
					$("#totalMoney").text(parseFloat($("#totalMoney").text())+inputcount*price);
				}else{
					console.log(data);
					$("#cart").prepend(data);
					$("#total").text(parseInt($("#total").text())+1);
					$("#totalMoney").text(parseInt($("#totalMoney").text())+price);
				}
				
			});
			alert("添加成功");
		}
		
	
	</script>
</body>

</html>