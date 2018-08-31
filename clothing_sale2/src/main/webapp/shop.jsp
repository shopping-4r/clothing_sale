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
    <div class="wrapper shop">
       <%@include file="header.jsp" %>
<c:if test="${empty goods}">
	<jsp:forward page="showAllGoods.do">
		<jsp:param value="findAll" name="op"/>
	</jsp:forward>
</c:if> 
<c:if test="${empty Board}">
	<jsp:forward page="showParentBoard.do">
		<jsp:param value="findAll" name="op"/>
	</jsp:forward>
</c:if>        
        <!--breadcumb area start -->
        <div class="breadcumb-area breadcumb-2 overlay pos-rltv">
            <div class="bread-main">
                <div class="bred-hading text-center">
                    <h5>Product Grid View</h5> </div>
                <ol class="breadcrumb">
                    <li class="home"><a title="Go to Home Page" href="index.html">Home</a></li>
                    <li class="active">Shop</li>
                </ol>
            </div>
        </div>
        <!--breadcumb area end -->
        
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
                                            <input class="single-input" placeholder="Search...." type="text">
                                            <button class="src-btn sb-2"><i class="fa fa-search"></i></button>
                                        </div>
                                    </form>
                                 </aside>
                                <!--single aside end-->
<!-- 分类 -->                     
								<form action="showGoodsByCondition.do">        
                                <!--single aside start-->
                                <aside class="single-aside catagories-aside">
                                    <div class="heading-title aside-title pos-rltv">
                                        <h5 class="uppercase">种类</h5> 
                                    </div>
                                    <div id="cat-treeview" class="product-cat">
	                                            <select onchange="choiceType()" id="parentType">
	                                            	<option selected>请选择分类</option>
			                                        	<c:forEach items="${Board}" var="board">
				                                                	<option>${board.name}</option>
			                                             </c:forEach>
	                                             </select>
                                             <select id="childType" name="type">
                                             </select>
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
                                        </div>
                                    </div>
                                </aside>
                                <!--single aside end-->
<!-- 颜色 -->                               
                                <!--single aside start-->
                                <aside class="single-aside color-aside">
                                    <div class="heading-title aside-title pos-rltv">
                                        <h5 class="uppercase">颜色</h5> 
                                    </div>
                                    <ul class="color-filter mt-30">
                                        <li><input value="红色" name="color" type="radio">红色</li>
                                        <li><input selected value="白色" name="color" type="radio" >白色</li>
                                        <li><input value="红色" name="color" type="radio" >黑色</li>
                                        <li><input value="绿色" name="color" type="radio" >绿色</li>
                                        <li><input value="蓝色" name="color" type="radio" >蓝色</li>
                                    </ul>
                                </aside>
                                <!--single aside end-->
<!-- 尺寸 -->                                
                                <!--single aside start-->
                                <aside class="single-aside size-aside">
                                    <div class="heading-title aside-title pos-rltv">
                                        <h5 class="uppercase">尺寸</h5> 
                                    </div>
                                    <ul class="size-filter mt-30">
                                        <li><input value="S" name="size" type="radio">S&nbsp;</li>
                                        <li><input selected value="M" name="size" type="radio">M&nbsp;</li>
                                        <li><input value="L" name="size" type="radio">L&nbsp;</li>
                                        <li><input value="XL" name="size" type="radio"> XL</li>
                                        <li><input value="XXL" name="size" type="radio">XXL</li>
                                    </ul>
                                </aside>
                                <input type="submit" value="查询">
                   			 </form>   
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
                                        <c:forEach items="${goods}" var="good">
                                    <div class="col-md-4 col-sm-6 item">
                                        <!-- single product start-->
                                        <div class="single-product">
	                                            <div class="product-img">
	                                                <div class="product-label red">
	                                                    <div class="new">New</div>
	                                                </div>
	                                                <div class="single-prodcut-img  product-overlay pos-rltv">
	                                                    <a href="single-product.html"> <img alt="图片暂无" src="images/product/${good.image.split('、')[0]}" class="primary-image"> <img alt="图片暂无" src="images/product/${good.image.split('、')[1]}" class="secondary-image"> </a>
	                                                </div>
	                                                <div class="product-icon socile-icon-tooltip text-center">
	                                                    <ul>
	                                                        <li><a href="#" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
	                                                        <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
	                                                        <li><a href="#" data-tooltip="Compare" class="cpare"><i class="fa fa-refresh"></i></a></li>
	                                                        <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
	                                                    </ul>
	                                                </div>
	                                            </div>
	                                            <div class="product-text">
	                                                <div class="prodcut-name"> <a href="single-product.html">${good.name}</a> </div>
	                                                <div class="prodcut-ratting-price">
	                                                    <div class="prodcut-price">
	                                                        <div class="new-price"><fmt:formatNumber type="number" value="${good.price*0.8}"
																		pattern="#.00" maxFractionDigits="2" /></div>
	                                                        <div class="old-price"> <del>${good.price}</del> </div>
	                                                    </div>
	                                                </div>
	                                            </div>
                                        </div>
                                        <!-- single product end-->
                                    </div>    
                                            </c:forEach>
                                </div>
	                                <div id="pp" class="easyui-pagination" style="background:#efefef;border:1px solid #ccc;"
									data-options="
									total:${total},
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
                                	<c:forEach items="${goods2}" var="goods">
                                    <div class="col-md-12 item">
                                        <!-- single product start-->
                                        <div class="single-product single-product-list">
                                            <div class="product-img">
                                                <div class="product-label red">
                                                    <div class="new">Sale</div>
                                                </div>
                                                <div class="single-prodcut-img  product-overlay pos-rltv">
                                                    <a href="single-product.html"> <img alt="" src="images/product/${good.image.split('、')[0]}" class="primary-image"> <img alt="" src="images/product/${good.image.split('、')[1]}" class="secondary-image"> </a>
                                                </div>
                                            </div>
                                            <div class="product-text prodcut-text-list fix">
                                                <div class="prodcut-name list-name montserrat"> <a href="single-product.html">${goods.name}</a> </div>
                                                <div class="prodcut-ratting-price">
                                                    <div class="prodcut-ratting list-ratting">  
                                                        <a href="#"><i class="fa fa-star-o"></i></a> 
                                                        <a href="#"><i class="fa fa-star-o"></i></a> 
                                                        <a href="#"><i class="fa fa-star-o"></i></a> 
                                                        <a href="#"><i class="fa fa-star-o"></i></a> 
                                                        <a href="#"><i class="fa fa-star-o"></i></a> 
                                                    </div>
                                                    <div class="prodcut-price list-price">
                                                        <div class="new-price"><fmt:formatNumber type="number" value="${good.price*0.8}"
																		pattern="#.00" maxFractionDigits="2" /></div>
                                                        <div class="old-price"> <del>${goods.price}</del> </div>
                                                    </div>
                                                </div>
                                                <div class="list-product-content">
                                                    <p>${goods.describe}</p>
                                                </div>
                                                <div class="social-icon-wraper mt-25">
                                                    <div class="social-icon socile-icon-style-1">
                                                        <ul>
                                                            <li><a href="#"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                            <li><a href="#"><i class="zmdi zmdi-favorite-outline"></i></a></li>
                                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal" tabindex="0"><i class="zmdi zmdi-eye"></i></a></li>
                                                            <li><a href="#"><i class="zmdi zmdi-repeat"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- single product end-->
                                       </div>
                                     </c:forEach>
                                   </div>  
	                            <!--pagination start-->
	                            <div id="pp" class="easyui-pagination" style="background:#efefef;border:1px solid #ccc;"
									data-options="
									total:${total},
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
<script type="text/javascript">
//ajax排序和分页第一个商品显示页面
	function queryPage(page, size) {
		var type=$("#input-sort").val();
		$.getJSON('showGoods.do',{type:type,page:page,size:size},function(data){
			$("#showGoods").html("");
			var goods=data.goods;
			$.each(goods,function(i,res){
				$("#showGoods").append("<div class='col-md-4 col-sm-6 item'>"
            	+"<div class='single-product'>"
                    +"<div class='product-img'>"
                        +"<div class='product-label red'>"
                            +"<div class='new'>New</div>"
                        +"</div>"
                        +"<div class='single-prodcut-img  product-overlay pos-rltv'>"
                        	+"<a href='single-product.jsp'> <img alt='图片暂无' src='images/product/"+res.image+"' class='primary-image'> <img alt='图片暂无' src='images/product/02.jpg' class='secondary-image'> </a>"
                        +"</div>"
                        +"<div class='product-icon socile-icon-tooltip text-center'>"
                        	+"<ul>"
	                        	+"<li><a href='#' data-tooltip='Add To Cart' class='add-cart' data-placement='left'><i class='fa fa-cart-plus'></i></a></li>"
	                        	+"  <li><a href='#' data-tooltip='Wishlist' class='w-list'><i class='fa fa-heart-o'></i></a></li>"
	                        	+"  <li><a href='#' data-tooltip='Compare' class='cpare'><i class='fa fa-refresh'></i></a></li>"
	                        	+"  <li><a href='#' data-tooltip='Quick View' class='q-view' data-toggle='modal' data-target='.modal'><i class='fa fa-eye'></i></a></li>"
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
		});
		queryPage2(1,2);
	}
	//ajax排序和分页第二个商品显示页面
		function queryPage2(page,size){
			var type=$("#input-sort").val();
			$.getJSON('showGoods2.do',{type:type,page:page,size:size},function(data){
				$("#showGoods2").html("");
				var goods=data.goods2;
				$.each(goods,function(i,res){
						$("#showGoods2").append("<div class='col-md-12 item'>"
                        +"<div class='single-product single-product-list'>"
                        	+"<div class='product-img'>"
                        		+"<div class='product-label red'>"
                        			+"<div class='new'>Sale</div>"
                        		+"</div>"
                        		+"<div class='single-prodcut-img  product-overlay pos-rltv'>"
                        			+"<a href='single-product.jsp'> <img alt='' src='images/product/"+res.image+"' class='primary-image'> <img alt='' src='images/product/03.jpg' class='secondary-image'> </a>"
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
                                    +"<p>"+res.describe+"</p>"
                                +"</div>"
                                +"<div class='social-icon-wraper mt-25'>"
                                	+"<div class='social-icon socile-icon-style-1'>"
                                		+"<ul>"
                                			+"<li><a href='#'><i class='zmdi zmdi-shopping-cart'></i></a></li>"
                                			+"<li><a href='#'><i class='zmdi zmdi-favorite-outline'></i></a></li>"
                                			+"<li><a href='#' data-tooltip='Quick View' class='q-view' data-toggle='modal' data-target='.modal' tabindex='0'><i class='zmdi zmdi-eye'></i></a></li>"
                                			+"<li><a href='#'><i class='zmdi zmdi-repeat'></i></a></li>"
                                		+"</ul>"
                                	+"</div>"
                                +"</div>"
                             +"</div>"
                         +"</div>"
                       +"</div>");
					})
				})
		}
	function choiceType(){
		var parentName=$("#parentType").val();
		$.getJSON('showChildBoard.do',{parentName:parentName},function(data) {
			$("#childType").html("");
			$.each(data,function(i,res){
				$("#childType").append("<option>"+res.name+"</option>");
			});
		});
	}
</script>
<%@include file="footer.jsp" %>