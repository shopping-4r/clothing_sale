<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	request.setAttribute("root", application.getContextPath());
%>
<!-- 弹框css -->
<link rel="stylesheet" type="text/css"
	href="css/css/postbirdAlertBox.min.css">
<!-- 弹框js -->
<script type="text/javascript" src="js/js/postbirdAlertBox.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${root}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${root}/easyui/themes/icon.css">
<script type="text/javascript" src="${root}/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${root}/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${root}/easyui/locale/easyui-lang-zh_CN.js"></script>
<!-- Start of header area -->
<header class="header-area header-wrapper">
	<div class="header-top-bar black-bg clearfix">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-6">
					<div class="login-register-area">
						<ul>
							<li><c:choose>
									<c:when test="${user!=null}">
										<a href="my-acount.jsp"> <span>欢迎您：${sessionScope.user.nickname }</span>
										</a>
									</c:when>
									<c:otherwise>
										<a href="login.jsp"> <span>亲，请登录</span>
										</a>
									</c:otherwise>
								</c:choose></li>
							<li><a href="regist.jsp">注册</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 hidden-xs">
					<div class="social-search-area text-center">
						<div class="social-icon socile-icon-style-2">
							<ul>
								<li><a href="#" title="facebook"><i
										class="fa fa-facebook"></i></a></li>
								<li><a href="#" title="twitter"><i
										class="fa fa-twitter"></i></a></li>
								<li><a href="#" title="dribble"><i
										class="fa fa-dribbble"></i></a></li>
								<li><a href="#" title="behance"><i
										class="fa fa-behance"></i></a></li>
								<li><a href="#" title="rss"><i class="fa fa-rss"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6">
					<div class="cart-currency-area login-register-area text-right">
						<ul>
							<li><c:if test="${user!=null }">
									<div class="header-currency">
										<div class="cart-icon">
											<a href="quit.do">注销</a>
										</div>
									</div>
								</c:if></li>
							<li>
								<div class="header-cart">
									<c:choose>
										<c:when test="${user!=null }">
											<div class="cart-icon">
												<a href="cart.jsp">购物车<i class="zmdi zmdi-shopping-cart"></i></a>
												<span id="total">${sessionScope.total }</span>
											</div>
											<div class="cart-content-wraper" id="cart">
												<c:forEach items="${sessionScope.cart }" var="c">
													<div class="cart-single-wraper" id="headerId_${c.id }">
														<div class="cart-img">
															<a href="#"><img
																src="images/product/${c.image.split('、')[0] }" alt=""></a>
														</div>
														<div class="cart-content">
															<div class="cart-name">
																<a href="#">${c.name }</a>
															</div>
															<div class="cart-price" id="priceId_${c.id }">
																<fmt:formatNumber type="number"
																	value="${c.price*c.rebate }" pattern="0.00"
																	maxFractionDigits="2" />
															</div>
															<div class="cart-qty">
																颜色: <span id="countId_${c.id }">${c.color }</span>
															</div>
															<div class="cart-qty">
																尺码 :<span id="countId_${c.id }">${c.size }</span>
															</div>
															<div class="cart-qty">
																数量 :<span id="countId_${c.id }">${c.count }</span>
															</div>
														</div>
														<div class="remove">
															<a
																onclick="delHeaderCart(${c.id},${c.price*c.rebate },${c.count });"><i
																class="zmdi zmdi-close"></i></a>
														</div>
													</div>
												</c:forEach>
												<div class="cart-subtotal">
													总计: <span id="totalMoney">${sessionScope.totalMoney }</span>
												</div>
												<div class="cart-check-btn">
													<div class="view-cart">
														<a class="btn-def" href="cart.jsp">结账</a>
													</div>
												</div>
											</div>
										</c:when>
										<c:otherwise>
											<div class="cart-icon">
												<a href="cart.jsp">购物车<i class="zmdi zmdi-shopping-cart"></i></a>
												<span id="total">0</span>
											</div>
											<div class="cart-content-wraper" id="cart">
												<div class="cart-single-wraper" id="headerId_${c.id }">
													<div>
														<span>你尚未登录，请先登录再查看购物车！</span>
													</div>
													<div style="height: 50px; width: 100px; text-align: center">
														<a href="login.jsp" class="btn-def btn2">点击登录</a>
													</div>
												</div>
											</div>
										</c:otherwise>
									</c:choose>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="sticky-header" class="header-middle-area">
		<div class="container">
			<div class="full-width-mega-dropdown">
				<div class="row">
					<div class="col-md-7 col-sm-10 hidden-xs">
						<nav id="primary-menu">
							<ul class="main-menu">
								<li class="current"><a class="active" href="index.jsp">首页</a>
									<ul class="dropdown">
										<li><a class="active" href="index.jsp">首页 1</a></li>
										<li><a href="index-2.html">首页2</a></li>
										<li><a href="index-boxed-01.html">首页3</a></li>
										<li><a href="index-boxed-02.html">首页4</a></li>
									</ul></li>
								<li class="mega-parent pos-rltv"><a href="shop.jsp">男装</a>
									<div class="mega-menu-area mma-800">
										<ul class="single-mega-item">
											<li class="menu-title uppercase">Shirts</li>
											<li><a href="shop.html">Shirt 01</a></li>
											<li><a href="shop.html">Shirt 02</a></li>
											<li><a href="shop.html">Shirt 03</a></li>
											<li><a href="shop.html">Shirt 04</a></li>
										</ul>
										<div class="mega-banner-img">
											<a href="single-product.html"><img
												src="images/banner/banner-fashion-02.jpg" alt=""></a>
										</div>
									</div></li>
								<li class="mega-parent pos-rltv"><a href="shop.html">女装</a>
									<div class="mega-menu-area mma-700">
										<ul class="single-mega-item">
											<li class="menu-title uppercase">Sharees</li>
											<li><a href="shop.html">Sharee 01</a></li>
											<li><a href="shop.html">Sharee 02</a></li>
											<li><a href="shop.html">Sharee 03</a></li>
											<li><a href="shop.html">Sharee 04</a></li>
											<li><a href="shop.html">Sharee 05</a></li>
										</ul>
										<div class="mega-banner-img">
											<a href="single-product.html"><img
												src="images/banner/banner-fashion.jpg" alt=""></a>
										</div>
									</div></li>
								<li><a class="mega-parent" href="shop.html">我的</a>
									<ul class="dropdown">
										<li><a href="my-account.jsp" target="_blank">我的账户</a></li>
										<li><a href="wishlist.html" target="_blank">收藏夹</a></li>
										<li><a href="cart.jsp" target="_blank">我的购物车</a></li>
										<li><a href="my-account.jsp" target="_blank">我的订单</a></li>
									</ul></li>
								<li class="mega-parent"><a href="shop.jsp">总览</a></li>
								<li><a href="about-us.jsp">关于我们</a></li>
							</ul>
						</nav>
					</div>
					<div class="col-md-3 hidden-sm hidden-xs">
						<div class="search-box global-table">
							<div class="global-row">
								<div class="global-cell">
									<form>
										<div class="input-box" style="z-index: 9999">
											<input class="single-input" id="single-input1"
												placeholder="请输入衣服名字" type="text">
											<div style="border: 1px solid #ccc">
												<ul class="searchmore" id="searchmore"></ul>
											</div>
											<button class="src-btn">
												<i class="fa fa-search"></i>
											</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- mobile-menu-area start -->
				<div class="mobile-menu-area">
					<div class="container">
						<div class="row">
							<div class="col-xs-12">
								<nav id="dropdown">
									<ul>
										<li><a href="index.html">Home</a>
											<ul>
												<li><a class="active" href="index.html">Home One</a></li>
												<li><a href="index-2.html">Home Two</a></li>
												<li><a href="index-boxed-01.html">Home Three
														(Boxed)</a></li>
												<li><a href="index-boxed-02.html">Home Four (Boxed)</a></li>
											</ul></li>
										<li><a href="shop.html">Man</a>
											<ul class="single-mega-item">
												<li><a href="shop.html">Shirt 01</a></li>
												<li><a href="shop.html">Shirt 02</a></li>
												<li><a href="shop.html">Shirt 03</a></li>
												<li><a href="shop.html">Shirt 04</a></li>
												<li><a href="shop.html">Pant 01</a></li>
												<li><a href="shop.html">Pant 02</a></li>
												<li><a href="shop.html">Pant 03</a></li>
												<li><a href="shop.html">Pant 04</a></li>
												<li><a href="shop.html">T-Shirt 01</a></li>
												<li><a href="shop.html">T-Shirt 02</a></li>
												<li><a href="shop.html">T-Shirt 03</a></li>
												<li><a href="shop.html">T-Shirt 04</a></li>
											</ul></li>
										<li><a href="shop.html">Shop</a>
											<ul class="single-mega-item">
												<li><a href="shop.html">Sharee 01</a></li>
												<li><a href="shop.html">Sharee 02</a></li>
												<li><a href="shop.html">Sharee 03</a></li>
												<li><a href="shop.html">Sharee 04</a></li>
												<li><a href="shop.html">Sharee 05</a></li>
												<li><a href="shop.html">Lahenga 01</a></li>
												<li><a href="shop.html">Lahenga 02</a></li>
												<li><a href="shop.html">Lahenga 03</a></li>
												<li><a href="shop.html">Lahenga 04</a></li>
												<li><a href="shop.html">Lahenga 05</a></li>
												<li><a href="shop.html">Sandel 01</a></li>
												<li><a href="shop.html">Sandel 02</a></li>
												<li><a href="shop.html">Sandel 03</a></li>
												<li><a href="shop.html">Sandel 04</a></li>
												<li><a href="shop.html">Sandel 05</a></li>
											</ul></li>
										<li><a href="#">Shortcode</a>
											<ul class="single-mega-item">
												<li><a href="shortcode-banner.html" target="_blank">shortcode-banner</a></li>
												<li><a href="shortcode-best-top-on-sale-slider.html"
													target="_blank">too-on-sale</a></li>
												<li><a href="shortcode-blog-item.html" target="_blank">Short
														Blog Item</a></li>
												<li><a href="shortcode-brand-prodcut.html"
													target="_blank">Brand Product</a></li>
												<li><a href="shortcode-brand-slider.html"
													target="_blank">Brand Slider</a></li>
												<li><a href="shortcode-breadcrumb.html" target="_blank">Breadcrumb</a></li>
												<li><a href="shortcode-related-product.html"
													target="_blank">Related Product</a></li>
												<li><a href="shortcode-service.html" target="_blank">Service</a></li>
												<li><a href="shortcode-skill.html" target="_blank">Skill</a></li>
												<li><a href="shortcode-slider.html" target="_blank">Slider</a></li>
												<li><a href="shortcode-team.html" target="_blank">Team</a></li>
												<li><a href="shortcode-testimonial.html"
													target="_blank">Testimonial</a></li>
												<li><a href="shortcode-why-choose-us.html"
													target="_blank">Why Choose Us</a></li>
											</ul></li>
										<li><a href="#">Pages</a>
											<ul class="single-mega-item coloum-4">
												<li><a href="about-us.html" target="_blank">About-us</a></li>
												<li><a href="blog.html" target="_blank">Blog</a></li>
												<li><a href="blog-right.html" target="_blank">Blog-Right</a></li>
												<li><a href="single-blog.html" target="_blank">Single
														Blog</a></li>
												<li><a href="single-blog-right.html" target="_blank">Single
														Blog Right</a></li>
												<li><a href="blog-full.html" target="_blank">Blog-Fullwidth</a></li>
												<li class="menu-title uppercase">pages-02</li>
												<li><a href="blog-full-right.html" target="_blank">Blog
														Ful Rightl</a></li>
												<li><a href="cart.html" target="_blank">Cart</a></li>
												<li><a href="checkout.html" target="_blank">Checkout</a></li>
												<li><a href="compare.html" target="_blank">Compare</a></li>
												<li><a href="complete-order.html" target="_blank">Complete
														Order</a></li>
												<li><a href="contact-us.html" target="_blank">Contact
														US</a></li>
												<li class="menu-title uppercase">pages-03</li>
												<li><a href="login.html" target="_blank">Login</a></li>
												<li><a href="my-account.html" target="_blank">My
														Account</a></li>
												<li><a href="shop-full-grid.html" target="_blank">Shop
														Full Grid</a></li>
												<li><a href="shop-full-list.html" target="_blank">Shop
														Full List</a></li>
												<li><a href="shop-list-right-sidebar.html"
													target="_blank">Shop List Right</a></li>
												<li><a href="shop-list.html" target="_blank">Shop
														List</a></li>
												<li class="menu-title uppercase">pages-03</li>
												<li><a href="shop-right-sidebar.html" target="_blank">Shop
														Right</a></li>
												<li><a href="shop.html" target="_blank">Shop</a></li>
												<li><a href="single-product.html" target="_blank">Single
														Prodcut</a></li>
												<li><a href="wishlist.html" target="_blank">Wishlist</a></li>
											</ul></li>
										<li><a href="about-us.html">about</a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
				<!--mobile menu area end-->
			</div>
		</div>
	</div>
	</div>
</header>

<script type="text/javascript">
       function delHeaderCart(id,price,count){
	 		var data={id:id};
	 		if(confirm("你确定要删除吗？")){
	 			 $.post("deleteCart.do",data,function(data){
		 			if(data){
		 				alert("删除成功") ;
		 				$("#total").text(parseInt($("#total").text())-1);
						$("#totalMoney").text(parseInt($("#totalMoney").text())-price*count);
						$("#"+"headerId_"+id).remove();
						$("#"+"theId_"+id).remove();
		 			}else{
		 				alert("删除失败");
		 			}
		 		});
	 		};
	 	};
	 	$(document).ready(function(){
            $("#single-input1").keyup(function(){//搜索
                var uname =$(this).val();
                if(uname.length >= 1){
                    $.getJSON('search.do',{name:uname},function (data) {
                        var item;
                        $(".searchmore").empty();//清空原来的ul
                        if(data!=null){
                            $.each(data,function(i,res){//循环加入到ul中去
                            	if(i>=5) return false;
                            	item = "<a style='color:blue' href='single-product.do?id="+res.id+"&name="+res.name+"' style='color:blue'><li>"+res.name+"</li></a><br>";
                                $(".searchmore").append(item);
                            })
                            $(".searchmore").show();
                        }else{
                            $(".searchmore").hide();
                        }
                    });
                }else{
                    $(".searchmore").hide();
                }
            })
            $(document).on("click", ".searchmore li", function(){
                $("#single-input1").val(trim($(this).text()));
                $(".searchmore").hide();
            });

            $(".input-box").mouseleave(function(){
                $(".searchmore").hide();
            })

        })
</script>
-->
<!-- End of header area -->