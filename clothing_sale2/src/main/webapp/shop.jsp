<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page autoFlush="true" buffer="1094kb"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Shop || Clothing</title>
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

    
    <!-- Modernizr JS -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  

    <!-- Body main wrapper start -->
       <%@include file="header.jsp" %> 
<c:if test="${empty Board}">
	<jsp:forward page="showParentBoard.do">
		<jsp:param value="findAll" name="op"/>
	</jsp:forward>
</c:if>        
    <div class="wrapper shop">
        <!--breadcumb area start -->
        <div class="breadcumb-area breadcumb-2 overlay pos-rltv">
            <div class="bread-main">
                <div class="bred-hading text-center">
                    <h5>商品展示</h5> </div>
                <ol class="breadcrumb">
                    <li class="home"><a title="Go to Home Page" href="index.jsp">首页</a></li>
                    <li class="active">商店</li>
                </ol>
            </div>
        </div>
        <!--breadcumb area end -->
<!-- 搜索框 -->       
        <!--shop main area are start-->
        <div class="shop-main-area ptb-70">
            <div class="container">
                <div class="row">
                    <!--shop sidebar start-->
                    <div class="col-md-3 col-sm-4 col-xs-12">
                        <div class="row">
                            <div class="shop-sidebar">
                               <!--single aside start-->
                                <aside class="single-aside search-aside search-box">
                                    <form action="#">
                                        <div class="input-box">
                                            <input id="name" class="single-input" placeholder="搜索商品" type="text">
                                            <button class="src-btn sb-2" onclick="showGoodsByName()"><i class="fa fa-search"></i></button>
                                        </div>
                                    </form>
                                 </aside>
                                <!--single aside end-->
<!-- 分类 -->                     
                                <!--single aside start-->
                                <aside class="single-aside catagories-aside">
                                    <div class="heading-title aside-title pos-rltv">
                                        <h5 class="uppercase">种类</h5> 
                                    </div>
                                    <div id="cat-treeview" class="product-cat">
		                                    <ul id="flagClean">
		                                    	<c:forEach items="${Board}" var="board">
		                                            <li class="closed"><a onclick="showGoodsByBoardid(${board.id})">${board.name}</a>
		                                            	<c:forEach items="${board.childBoard}" var="childBoard">
			                                            	<ul>
			                                            		 <li class="closed"><a onclick="showGoodsByBoardid(${childBoard.id})">${childBoard.name}</a></li>
			                                            	</ul>
		                                            	</c:forEach>
		                                            </li>
		                                        </c:forEach>
		                                    </ul>
                                    </div>
                                </aside>
                                <!--single aside end-->
<!-- 价格过滤 -->                               
                                <!--single aside start-->
                                <aside class="single-aside price-aside fix">
                                    <div class="heading-title aside-title pos-rltv">
                                        <h5 class="uppercase">价格</h5> 
                                    </div>
                                    <div class="price_filter">
                                        <div id="slider-range"></div>
                                        <div class="price_slider_amount">
                                            <input type="text" id="amount" name="price" placeholder="Add Your Price" />
                                            <input onclick="showGoodsByPrice()" type="submit" value="价格过滤" /> 
                                        </div>
                                    </div>
                                </aside>
                                <!--single aside end-->
                            </div>
                        </div>
                    </div>
                    <!--shop sidebar end-->
                    
                    <!--main-shop-product start-->
                    <div class="col-md-9 col-sm-8 col-xs-12">
                        <div class="shop-wraper">
                          <div class="col-xs-12">
                               <div class="shop-area-top">
                                  <div class="row">
                                       <div class="col-lg-6 col-md-9 col-sm-9 col-xs-12">
<!-- 排序 -->
                                        <div class="sort product-type">
                                            <label>排序</label>
                                            <select id="input-sort" onchange="queryPage(1,6)">
                                                <option  value="1" selected>默认</option>
                                                <option  value="2">名字 (A - Z)</option>
                                                <option  value="3">名字 (Z - A)</option>
                                                <option  value="4">价格 (低 &gt; 高)</option>
                                                <option  value="5">价格 (高 &gt; 低)</option>
                                            </select>
                                        </div>
                                    </div>
                                       <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        <div class="list-grid-view text-center">
                                            <ul class="nav" role="tablist">
                                                <li role="presentation"  class="active"><a href="#grid" aria-controls="grid" role="tab" data-toggle="tab"><i class="zmdi zmdi-widgets"></i></a></li>
                                                <li role="presentation"><a href="#list" aria-controls="list" role="tab" data-toggle="tab"><i class="zmdi zmdi-view-list-alt"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                   </div>
                               </div>
                           </div>
                       <div class="clearfix"></div>
                       <div class="shop-total-product-area clearfix mt-35">
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <!--tab grid are start-->
<!-- 商品展示1 -->
                            <div role="tabpanel" class="tab-pane fade in active" id="grid">
                                <div class="total-shop-product-grid" id="showGoods">
<!-- 商品信息用ajax显示 -->
                                </div>
	                            <div id="pp" class="easyui-pagination" style="background:#efefef;border:1px solid #ccc;"
									data-options="
									total:0,
									pageSize:6,
									pageList:[3,6,9,12],
									pageNumber:${empty param.page ?1:param.page},
									onSelectPage:queryPage">
								</div>
                            </div>
                            <!--shop grid are end-->
 <!-- 商品展示2 -->                           
                            <!--shop product list start-->
                            <div role="tabpanel" class="tab-pane  fade in" id="list">
                                <div class="total-shop-product-list" id="showGoods2">
<!-- 商品信息用ajax显示 -->                        
                                   </div>  
	                            <!--pagination start-->
	                            <div id="pp2" class="easyui-pagination" style="background:#efefef;border:1px solid #ccc;"
									data-options="
									total:0,
									pageSize:2,
									pageList:[2,4,6,8],
									pageNumber:${empty param.page ?1:param.page},
									onSelectPage:queryPage2">
								</div>
	                            <!--pagination end-->
                            </div>
                            <!--shop product list end-->
                            </div>
                       </div>
                    </div>
                    </div>
                    <!--main-shop-product start-->
                </div>
            </div>
        </div>
        <!--shop main area are end-->
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
<script type="text/javascript">
	//设置全局变量记录商品类型id 默认查询所有商品
	var Boardid=-1;
	//商品价格范围
	var priceRange='$40 - $600';
	//商品名字查询
	var goodsName="";
window.onload=function(){
	//页面初始化的时候先显示所有商品
	queryPage(1,6);
	queryPage2(1,2);
};
//根据价格筛选商品的点击事件
  	function showGoodsByPrice(){
	priceRange=$("#amount").val();
	goodsName=$("#name").val();
	queryPage(1,6);
	queryPage2(1,2);
}
//根据商品名字查询的点击事件
    function showGoodsByName(){
    priceRange=$("#amount").val();
    goodsName=$("#name").val();
    queryPage(1,6);
	queryPage2(1,2);
}
//商品类型的点击事件
	function showGoodsByBoardid(boardid){
		Boardid=boardid;
		priceRange=$("#amount").val();
	    goodsName=$("#name").val();
		queryPage(1,6);
		queryPage2(1,2);
	}
//ajax排序和分页第一个商品显示页面
	function queryPage(page, size) {
		//获取排序方式
		var type=$("#input-sort").val();
		$.getJSON('showGoods.do',{name:goodsName,priceRange:priceRange,boardid:Boardid,type:type,page:page,size:size},function(data){
			$("#showGoods").html("");
			var goods=data.goods;
			if(goods==null||goods.length==0){
				$("#showGoods").html("暂无该条件的商品");
			}else{
				$.each(goods,function(i,res){
					$("#showGoods").append("<div class='col-md-4 col-sm-6 item'>"
	            	+"<div class='single-product'>"
	                    +"<div class='product-img'>"
	                        +"<div class='product-label red'>"
	                            +"<div class='new'>New</div>"
	                        +"</div>"
	                        +"<div class='single-prodcut-img  product-overlay pos-rltv'>"
	                        	+"<a href='single-product.do?id="+res.id+"&name="+res.name+"'> <img alt='图片暂无' src='images/product/"+res.image+"' class='primary-image'> <img alt='图片暂无' src='images/product/02.jpg' class='secondary-image'> </a>"
	                        +"</div>"
	                        +"<div class='product-icon socile-icon-tooltip text-center'>"
	                        	+"<ul>"
		                        	+"  <li><a href='#' data-tooltip='Wishlist' class='w-list'><i class='fa fa-heart-o'></i></a></li>"
		                        	+"  <li><a href='#' data-tooltip='Compare' class='cpare'><i class='fa fa-refresh'></i></a></li>"
		                        	+"  <li><a onclick='showInfo("+res.id+")' data-tooltip='Quick View' class='q-view' data-toggle='modal' data-target='.modal'><i class='fa fa-eye'></i></a></li>"
	                        	+"</ul>"
	                        +"</div>"
	                    +"</div>"
	                    +"<div class='product-text'>"
	                      +"<div class='prodcut-name'> <a href='single-product.jsp'>"+res.name+"</a> </div>"
	                      +"<div class='prodcut-ratting-price'>"
	                      		+"<div class='prodcut-price'>"
	                      			+"<div class='new-price'>"+(res.price*res.rebate).toFixed(2)
	                      			+"<div class='old-price'> <del>"+res.price+"</del> </div>"
	                      		+"</div>"
	                      	+"</div>"
	                      +"</div>"
	             +"</div>"
		        +"</div> ")
				})
			}
				var total=data.total;
				var page=data.page;
				jQuery.noConflict();
				$('#pp').pagination('refresh');	// 刷新分页栏信息
				$('#pp').pagination('refresh',{	// 改变选项，并刷新分页栏信息
					total: total,
					pageNumber: page
				});
		});
	}
	//ajax排序和分页第二个商品显示页面
		function queryPage2(page,size){
			var type=$("#input-sort").val();
			$.getJSON('showGoods2.do',{name:goodsName,priceRange:priceRange,boardid:Boardid,type:type,page:page,size:size},function(data){
				$("#showGoods2").html("");
				var goods=data.goods2;
				if(goods==null||goods.length==0){
					$("#showGoods").html("暂无该条件的商品");
				}else{
					$.each(goods,function(i,res){
							$("#showGoods2").append("<div class='col-md-12 item'>"
	                        +"<div class='single-product single-product-list'>"
	                        	+"<div class='product-img'>"
	                        		+"<div class='product-label red'>"
	                        			+"<div class='new'>Sale</div>"
	                        		+"</div>"
	                        		+"<div class='single-prodcut-img  product-overlay pos-rltv'>"
	                        			+"<a href='single-product.do?id="+res.id+"&name="+res.name+"'> <img alt='' src='images/product/"+res.image+"' class='primary-image'> <img alt='' src='images/product/03.jpg' class='secondary-image'> </a>"
	                        		+"</div>"
	                        	+"</div>"
	                        	+"<div class='product-text prodcut-text-list fix'>"
	                        		+"<div class='prodcut-name list-name montserrat'> <a href='single-product.jsp'>"+res.name+"</a> </div>"
	                        		+"<div class='prodcut-ratting-price'>"
	                        			+"<div class='prodcut-ratting list-ratting'>"  
	                        				+"<a href='#'><i class='fa fa-star-o'></i></a>" 
	                        				+"<a href='#'><i class='fa fa-star-o'></i></a>" 
	                        				+"<a href='#'><i class='fa fa-star-o'></i></a>"
	                        				+"<a href='#'><i class='fa fa-star-o'></i></a>" 
	                        				+"<a href='#'><i class='fa fa-star-o'></i></a>" 
	                                    +"</div>"
	                                    +" <div class='prodcut-price list-price'>"
	                                    	+"<div class='new-price'>"+(res.price*res.rebate).toFixed(2)+"</div>"
	                                    	+"<div class='old-price'> <del>"+res.price+"</del> </div>"
	                                    +"</div>"
	                                +"</div>"
	                                +"<div class='list-product-content'>"
	                                    +"<p>"+res.gdescribe+"</p>"
	                                +"</div>"
	                                +"<div class='social-icon-wraper mt-25'>"
	                                	+"<div class='social-icon socile-icon-style-1'>"
	                                		+"<ul>"
	                                			+"<li><a href='#'><i class='zmdi zmdi-favorite-outline'></i></a></li>"
	                                			+"<li><a onclick='showInfo("+res.id+")' data-tooltip='Quick View' class='q-view' data-toggle='modal' data-target='.modal' tabindex='0'><i class='zmdi zmdi-eye'></i></a></li>"
	                                			+"<li><a href='#'><i class='zmdi zmdi-repeat'></i></a></li>"
	                                		+"</ul>"
	                                	+"</div>"
	                                +"</div>"
	                             +"</div>"
	                         +"</div>"
	                       +"</div>");
						})
				}
				var total=data.total;
				var page=data.page;
				jQuery.noConflict();
				$('#pp2').pagination('refresh');	// 刷新分页栏信息
				$('#pp2').pagination('refresh',{	// 改变选项，并刷新分页栏信息
					total: total,
					pageNumber: page
				});
				})
		}
</script>
<%@include file="footer.jsp" %>