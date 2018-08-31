<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html >
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Cart || Clothing</title>
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
    <link rel="stylesheet" href="css/custom.css">  <link rel="stylesheet" href="css/color/skin-default.css">
    <!-- 弹框css -->
	<link rel="stylesheet" type="text/css" href="css/css/postbirdAlertBox.min.css">
    <!-- 弹框js -->
    <script type="text/javascript" src="js/js/postbirdAlertBox.min.js"></script>
    <!-- Modernizr JS -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  

    <!-- Body main wrapper start -->
    <div class="wrapper cart">
       
       <%@include file="header.jsp" %>
        <!--breadcumb area start -->
        <div class="breadcumb-area overlay pos-rltv">
            <div class="bread-main">
                <div class="bred-hading text-center">
                    <h5>购物车详情</h5> </div>
                <ol class="breadcrumb">
                    <li class="home"><a title="Go to Home Page" href="index.jsp">主页</a></li>
                    <li class="active">购物车</li>
                </ol>
            </div>
        </div>
        <!--breadcumb area end -->
        
        <!--cart-checkout-area start -->
        <div class="cart-checkout-area  pt-30">
            <div class="container">
                <div class="row">
                    <div class="product-area">
                        <div class="title-tab-product-category">
                            <div class="col-md-12 text-center pb-60">
                                <ul class="nav heading-style-3" role="tablist">
                                    <li role="presentation" class="active shadow-box"><a href="#cart" aria-controls="cart" role="tab" data-toggle="tab"><span>01</span> 购物车</a></li>
                                    <li role="presentation" class="shadow-box"><a ><span>02</span>确认收货地址</a></li>
                                    <li role="presentation" class="shadow-box"><a ><span>03</span> 付款</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-sm-12" >
                            <div class="content-tab-product-category pb-70">
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane fade in active" id="cart">
                                    <!-- cart are start-->
                                    <div class="cart-page-area">
                                       <form method="post" action="#">
                                                   <div class="table-responsive mb-20">
                                                    <table class="shop_table-2 cart table">
                                                        <thead>
                                                            <tr>
                                                                <th class="product-thumbnail ">Image</th>
                                                                <th class="product-name ">名称</th>
                                                                <th class="product-price ">价格</th>
                                                                <th class="product-quantity">数量</th>
                                                                <th class="product-subtotal ">小计</th>
                                                                <th class="product-remove">删除</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach items="${sessionScope.cart }" var="c"> 
                                                            <tr class="cart_item" id="theId_${c.id }">
                                                                <td class="item-img">
                                                                    <a href="#"><img src="images/product/${c.image.split("、")[0] }" alt=""> </a>
                                                                </td>
                                                                <td class="item-title"> <label>名字：${c.name } &nbsp;&nbsp;颜色：${c.color }&nbsp;&nbsp;尺码：${c.size}</label></td>
                                                                <td class="item-price" > 
                                                                <fmt:formatNumber type="number" value="${c.price*c.rebate }" pattern="0.00" maxFractionDigits="2"/>
                                                                
                                                                </td>
                                                                <td class="item-qty">
                                                                    <div class="cart-quantity">
                                                                        <div class="product-qty">
                                                                            <div class="cart-quantity">
                                                                                <div class="cart-plus-minus">
                                                                                    <div class="dec qtybutton" onclick="jianmoney(${c.price*c.rebate },${c.id },${c.stock });" >-</div>
                                                                                   	 <input value="${c.count }" name="qtybutton"  id="valueId_${c.id }" class="cart-plus-minus-box" type="text" >
                                                                                    <div class="inc qtybutton" onclick="addmoney(${c.price*c.rebate },${c.id },${c.stock });">+</div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                                <td class="total-price"><span>￥</span><span  id="totalId_${c.id}"> <fmt:formatNumber type="number" value="${c.price*c.rebate*c.count }" pattern="0.00" maxFractionDigits="2"/></span></td>
                                                                <td class="remove-item"><a onclick="deleteCart(${c.id},${c.price*c.rebate });"><i class="fa fa-trash-o"></i></a></td>
                                                            </tr>
                                                          </c:forEach>  
                                                        </tbody>
                                                    </table>
                                                    </div>


                                                    <div class="cart-bottom-area">
                                                        <div class="row">
                                                            <div class="col-md-8 col-sm-7 col-xs-12">
                                                                <div class="update-coupne-area">
                                                                    <div class="update-continue-btn text-right pb-20">
                                                                        <a href="cart.jsp" class="btn-def btn2">更新</a>
                                                                        <a href="shop.jsp" class="btn-def btn2">继续购物</a>
                                                                    </div>
                                                                    <div class="coupn-area">
                                                                        <div class="catagory-title cat-tit-5 mb-20">
                                                                            <h3>购物券</h3> 
                                                                            <p>输入你的购物券号码</p>
                                                                        </div>                                           
                                                                            <div class="input-box input-box-2 mb-20">
                                                                                <input type="text" placeholder="Coupn" class="info" name="subject"> 
                                                                            </div>
                                                                            <a href="#" class="btn-def btn2">使用购物券</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4 col-sm-5 col-xs-12">
                                                                <div class="cart-total-area">
                                                                    <div class="catagory-title cat-tit-5 mb-20 text-right">
                                                                            <h3>购物车总计</h3> 
                                                                     </div>
                                                                     <div class="process-cart-total">
                                                                         <p>总计 <span id="total2" >${totalMoney}</span><span>￥</span></p>
                                                                     </div>
                                                                     <div class="process-checkout-btn text-right">
                                                                         <a class="btn-def btn2"  href="#checkout" aria-controls="checkout" role="tab" data-toggle="tab" onclick="selectAddr()">提交订单</a>
                                                                     </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                    </div>
                                    <!-- cart are end-->
                                </div>
                                <div role="tabpanel" class="tab-pane  fade in " id="checkout">
                                    <!-- Checkout are start-->
                                    <div class="checkout-area">
                                        <div class="">
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 col-xs-12">
                                                     <h5>
                                                     	<span>确认收货地址</span>
                                                     	<span  style="float:right"><a href="">管理收货地址</a></span>
                                                    	 <div style="height:1px;width:100%;background:#00CCFF;overflow:hidden;"> </div>
                                                     </h5>
                                                     
                                                    
                                                     <div style="line-height:50px;width:1170px;color:FFF0E8;">
                                                     	&nbsp;&nbsp;<label style="hight:50px; font-weight:bold; float:left">寄送至：  </label>&nbsp;
                                                     	<label style="float:left">
                                                     		<select style="width:300px" id="addrSelect">
                                           			 		</select>
                                                     	</label>
                                                     	<label>(${user.uname})</label>&nbsp;
                                                     	<label>${user.tel}</label>&nbsp;
	                                                    <label style="float:right"><a href="" style="color:orange;margin-right:23px;">修改收货地址</a></label>
                                                     </div>
                                              	  	<div style="margin-top:10px">
                                              	  		<a class="btn-def btn2" >添加收货地址</a>
                                              	  	</div>
                                              	  	<div>
                                              	  		<div style="text-align:center; margin-top:30px">
	                                              	  		<a class="btn-def btn2" href="cart.jsp">返回购物车</a>
	                                              	  		<a class="btn-def btn2" onclick="createOrder();" href="#complete-order" aria-controls="complete-order" role="tab" data-toggle="tab">确认收货地址</a>
                                              	  		</div>
                                              	  		
                                              	  	</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Checkout are end-->
                                </div>
                                <div role="tabpanel" class="tab-pane  fade in" id="complete-order">
                                    <div class="row">
                                        <div class="col-xs-12">
                                        <div class="checkout-payment-area">
                                            <div class="checkout-total mt20">
                                               <h3>我的订单</h3>
                                           <form action="#" method="post">
                                           <div class="table-responsive">
                                                <table class="checkout-area table">
                                               <thead>
                                                <tr class="cart_item check-heading">
                                                    <td class="ctg-type"> 商品</td>
                                                    <td class="cgt-des"> 价格</td>
                                                </tr>
                                                </thead>
                                                <tbody  id="goodsOrder">
                                                <!-- 循环生成订单 -->
                                                	
                                                   
                                                    
                                                </tbody>
                                            </table>
                                           </div>
                                        </form>
                                        </div>
                                            <div class="payment-section mt-20 clearfix">
                                                <div class="pay-toggle">
                                                    <form action="#">
                                                       <div class="pay-type-total">
                                                        <!-- <div class="pay-type">
                                                            <input type="radio" id="pay-toggle01" name="pay">
                                                            <label for="pay-toggle01">银行卡转账</label>
                                                        </div>
                                                        <div class="pay-type">
                                                            <input type="radio" id="pay-toggle04" name="pay">
                                                            <label for="pay-toggle04">支付宝</label>
                                                        </div>
                                                        <div class="pay-type">
                                                            <input type="radio" id="pay-toggle04" name="pay">
                                                            <label for="pay-toggle04">微信</label>
                                                        </div> -->
                                                        <label>收货地址：</label><span id="spanAddr"></span>
                                                        <label>账户余额：</label><span>${sessionScope.user.money }</span>
                                                        </div>
                                                        <div class="input-box mt-20">
                                                            <a class="btn-def btn2" onclick="FuKuan(${sessionScope.user.money})">付款</a>
                                                            <a class="btn-def btn2" href="index.jsp">暂不付款，继续购物</a>
                                                        </div>
                                                    </form>
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
                </div>
            </div>
        </div>    
        <!--cart-checkout-area end--> 
        
        <!-- footer area start-->
        <div class="footer-area ptb-50">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                        <div class="single-footer contact-us">
                            <div class="footer-title uppercase">
                                <h5>Contact US</h5> </div>
                            <ul>
                                <li>
                                    <div class="contact-icon"> <i class="zmdi zmdi-pin-drop"></i> </div>
                                    <div class="contact-text">
                                        <p><span>777/a  Seventh Street,</span> <span>Rampura, Bonosri</span></p>
                                    </div>
                                </li>
                                <li>
                                    <div class="contact-icon"> <i class="zmdi zmdi-email-open"></i> </div>
                                    <div class="contact-text">
                                        <p><span><a href="#">company@gmail.com</a></span> <span><a href="#">admin@devitems.com</a></span></p>
                                    </div>
                                </li>
                                <li>
                                    <div class="contact-icon"> <i class="zmdi zmdi-phone-paused"></i> </div>
                                    <div class="contact-text">
                                        <p><span>+11 (019) 25184203</span> <span>+11 (018) 50950555</span></p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12">
                        <div class="single-footer informaton-area">
                            <div class="footer-title uppercase">
                                <h5>Information</h5> </div>
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
                                    <li><a href="#"><img src="images/gallery/01.jpg" alt=""></a></li>
                                    <li><a href="#"><img src="images/gallery/02.jpg" alt=""></a></li>
                                    <li><a href="#"><img src="images/gallery/03.jpg" alt=""></a></li>
                                    <li><a href="#"><img src="images/gallery/04.jpg" alt=""></a></li>
                                    <li><a href="#"><img src="images/gallery/05.jpg" alt=""></a></li>
                                    <li><a href="#"><img src="images/gallery/06.jpg" alt=""></a></li>
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
                                        <a href="#">
                                            <i class="zmdi zmdi-arrow-right"></i>
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
                                <div class="copyrigth"> Copyright @ <a href="devitems.com">Devitems</a> All right reserved </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <ul class="payment-support text-right">
                                    <li>
                                        <a href="#"><img src="images/icons/pay1.png" alt="" /></a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/icons/pay2.png" alt="" /></a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/icons/pay3.png" alt="" /></a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/icons/pay4.png" alt="" /></a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/icons/pay5.png" alt="" /></a>
                                    </li>
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
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>
                        <div class="modal-body">
                            <div class="modal-product">
                              <div class="product-images"> 
                                   <!--modal tab start-->
                                    <div class="portfolio-thumbnil-area-2">
                                        <div class="tab-content active-portfolio-area-2">
                                            <div role="tabpanel" class="tab-pane active" id="view1">
                                                <div class="product-img">
                                                    <a href="#"><img src="images/product/01.jpg" alt="Single portfolio" /></a>
                                                </div>
                                            </div>
                                            <div role="tabpanel" class="tab-pane" id="view2">
                                                <div class="product-img">
                                                    <a href="#"><img src="images/product/02.jpg" alt="Single portfolio" /></a>
                                                </div>
                                            </div>
                                            <div role="tabpanel" class="tab-pane" id="view3">
                                                <div class="product-img">
                                                    <a href="#"><img src="images/product/03.jpg" alt="Single portfolio" /></a>
                                                </div>
                                            </div>
                                            <div role="tabpanel" class="tab-pane" id="view4">
                                                <div class="product-img">
                                                    <a href="#"><img src="images/product/04.jpg" alt="Single portfolio" /></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-more-views-2">
                                            <div class="thumbnail-carousel-modal-2" data-tabs="tabs">
                                                <a href="#view1" aria-controls="view1" data-toggle="tab"><img src="images/product/01.jpg" alt="" /></a>
                                                <a href="#view2" aria-controls="view2" data-toggle="tab"><img src="images/product/02.jpg" alt="" /></a>
                                                <a href="#view3" aria-controls="view3" data-toggle="tab"><img src="images/product/03.jpg" alt="" /></a>
                                                <a href="#view4" aria-controls="view4" data-toggle="tab"><img src="images/product/04.jpg" alt="" /></a>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                    <!--modal tab end-->
                                    <!-- .product-images -->
                                    <div class="product-info">
                                        <h1>Aenean eu tristique</h1>
                                        <div class="price-box-3">
                                            <div class="s-price-box"> <span class="new-price">$160.00</span> <span class="old-price">$190.00</span> </div>
                                        </div> <a href="shop.html" class="see-all">See all features</a>
                                        <div class="quick-add-to-cart">
                                            <form method="post" class="cart">
                                                <div class="numbers-row">
                                                    <input type="number" id="french-hens" value="3" min="1"> </div>
                                                <button class="single_add_to_cart_button" type="submit">Add to cart</button>
                                            </form>
                                        </div>
                                        <div class="quick-desc"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero.Nam fringilla tristique auctor. </div>
                                        <div class="social-sharing-modal">
                                            <div class="widget widget_socialsharing_widget">
                                                <h3 class="widget-title-modal">Share this product</h3>
                                                <ul class="social-icons-modal">
                                                    <li><a target="_blank" title="Facebook" href="#" class="facebook m-single-icon"><i class="fa fa-facebook"></i></a></li>
                                                    <li><a target="_blank" title="Twitter" href="#" class="twitter m-single-icon"><i class="fa fa-twitter"></i></a></li>
                                                    <li><a target="_blank" title="Pinterest" href="#" class="pinterest m-single-icon"><i class="fa fa-pinterest"></i></a></li>
                                                    <li><a target="_blank" title="Google +" href="#" class="gplus m-single-icon"><i class="fa fa-google-plus"></i></a></li>
                                                    <li><a target="_blank" title="LinkedIn" href="#" class="linkedin m-single-icon"><i class="fa fa-linkedin"></i></a></li>
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
    <!-- 删除购物车内的商品 -->
	<script type="text/javascript">

	 	 function addmoney(price,id,stock){
			var totalprice=parseFloat( $("#"+"totalId_"+id).text().toFixed(2));
	        var newVal =parseInt($("#"+"valueId_"+id).val());
	        var count=parseInt(stock);

	        if(count>newVal){
				var data={
			        	count:newVal+1,
			        	id:id
			        }
				$.post("updataCart.do",data,function(data){
					
				});
		        $("#"+"valueId_"+id).val(newVal+1);
		    	$("#"+"totalId_"+id).text(totalprice+parseFloat(price).toFixed(2));
		    	var total2=parseFloat($("#total2").text());
		    	$("#total2").text(total2+price);
		    	$("#count").text(newVal);
		    	$("#price_count").text(totalprice-parseFloat(price).toFixed(2))
	        }else{
	        	alert("库存不足");
	        }
	        
	     } 
	 	function jianmoney(price,id,stock){
			var totalprice=parseFloat( $("#"+"totalId_"+id).text());
			var newVal =parseInt($("#"+"valueId_"+id).val());
	        var count=parseInt(stock);
	        if(newVal>1){
	        	var data={
			        	count:newVal-1,
			        	id:id
			        }
				$.post("updataCart.do",data,function(data){
					
				});
	         	$("#"+"valueId_"+id).val(newVal-1);
		       	$("#"+"totalId_"+id).text(totalprice-parseFloat(price).toFixed(2));
		      	var total2=parseFloat($("#total2").text());
		      	$("#total2").text(total2-price);
		      	$("#count").text(newVal);
		      	$("#price_count").text(totalprice-parseFloat(price).toFixed(2));
	        }else{
	        	$("#"+"valueId_"+id).val(1);
	        }
	       
	        } 
	 	function deleteCart(id,price){
	 		var data={id:id};
	 		if(confirm("你确定要删除吗？")){
	 			 $.post("deleteCart.do",data,function(data){
		 			if(data){
		 				alert("删除成功") ;
		 				$("#total").text(parseInt($("#total").text())-1);
						$("#totalMoney").text(parseInt($("#totalMoney").text())-price.toFixed(2));
						$("#"+"theId_"+id).remove();
						$("#"+"headerId_"+id).remove();
						$("#total2").text("0");
						
		 			}else{
		 				alert("删除失败");
		 			}
		 		});
	 		}
	 	}
	 function selectAddr(){
		var uid="${sessionScope.user.uid}";
		var data1={uid:uid};
    	 $.getJSON('showAddr.do',data1,function(data){  
    		 //console.log(data);
    		 for(var i=0;i<data.length;i++){
    			 $("#addrSelect").append("<option >"+data[i].addr+"</option>");
    		 }
			    	
		})
	 	
	 }
	 function createOrder(){
		 
		 var addr=$("#addrSelect").val();
		 $.post("insertOrder.do",null,function(data){
			 //console.log(data);
			 $("#total").text("0");
			 $(".cart-single-wraper").remove();
			 $("#totalMoney").text("0");
			 $("#goodsOrder").prepend(data);
			 $("#spanAddr").html(addr);
			 
		 });
	 }	
	 
	 function airpay(){
		 
	 		$("#cartTotal").text((parseFloat($.trim($("#carttotal").text()))+3).toFixed(1));
	  }
	 
	 function postage(){
	 		$("#cartTotal").text($.trim($("#carttotal").text()));
	  }
	 
	 //付款的方法
	 function FuKuan(money){
		var jianMoney= parseFloat($("#cartTotal").html());
		var shengYuMoney=money-jianMoney;
		//console.log(money);
		//console.log(jianMoney);
		//console.log(shengYuMoney);
		var str="付款前账户余额: " + money + "  付款金额: "+ jianMoney + "  付款后余额: " + shengYuMoney;
		if(shengYuMoney<0){
			alert("余额不足，请先去充值，商品已加入您的订单，\n"+str);
			  alert("即将跳转到账户信息");
		        window.location.href='my-account.jsp';
			return;
		}
		 PostbirdAlertBox.prompt({
			    'title': '请输入密码',
			    'okBtn': '提交',
			    onConfirm:function (data) {
					var addr=$("#addrSelect").val();
		 			var data1={
						orderAddr:addr,
						pwd:data
		 				}
			    	$.post("YanZhen.do",data1,function (flag){
			    		console.log(flag);
			    		if(flag=="true"){
			    			alert("密码正确");
			    			PostbirdAlertBox.alert({
			    			    'title': '交易信息',
			    			    'content': str,
			    			    'okBtn': '好的',
			    			    'contentColor': 'red',
			    			    'onConfirm': function () {
			    			        //console.log("回调触发后隐藏提示框");
			    			        alert("即将跳转到账户信息");
			    			        window.location.href='my-account.jsp';
			    			    }
			    			});
			    		}else{
			    			alert("密码错误，请重试");
			    		}
			    	});
			       // console.log("输入框内容是：" + data);
			       // alert("输入框内容是：" + data);
			    },
			    onCancel: function (data) {
			       
			        alert("你取消了支付");
			    },
			});
	 }
	</script> 
</body>

</html>