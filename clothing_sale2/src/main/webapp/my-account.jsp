<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>My Account || Clothing</title>
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
	<!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

	<!-- Body main wrapper start -->
	<div class="wrapper my-account">
		<%@ include file="header.jsp"%>
		<!-- Start of header area -->
		<!-- End of header area -->

		<!--breadcumb area start -->
		<div class="breadcumb-area overlay pos-rltv">
			<div class="bread-main">
				<div class="bred-hading text-center">
					<h5>我的账号</h5>
				</div>
				<ol class="breadcrumb">
					<li class="home"><a title="Go to Home Page" href="index.jsp">主界面</a></li>
					<li class="active">账号</li>
				</ol>
			</div>
		</div>
		<!--breadcumb area end -->

		<!--service idea area are start -->
		<div class="idea-area  ptb-80">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-4 col-xs-12">
						<div class="idea-tab-menu">
							<ul class="nav idea-tab" role="tablist">
								<li role="presentation" class="active"><a
									href="#creativity" onclick="showUser()"
									aria-controls="creativity" role="tab" data-toggle="tab">个人信息</a></li>
								<li role="presentation"><a href="#ideas"
									onclick="showAddr()" aria-controls="ideas" role="tab"
									data-toggle="tab">收货地址</a></li>
								<li role="presentation"><a href="#devlopment"
									onclick="showOrder(-1)" aria-controls="devlopment" role="tab"
									data-toggle="tab">我的订单</a></li>
								<li role="presentation"><a href="#markenting"
									onclick="showMoney()" aria-controls="markenting" role="tab"
									data-toggle="tab">账号充值</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-9 col-sm-8 col-xs-12">
						<div class="idea-tab-content">
							<!-- Tab panes -->
							<div class="tab-content">
								<!-- 个人基本信息 -->
								<div role="tabpanel" class="tab-pane fade in active"
									id="creativity">
									<form action="updateUser.do" method="post" id="updateForm">
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="input-box mb-20">
												<label>原账号名<em>*</em></label> <input readOnly="readOnly"
													id="uname" type="text" class="info">
											</div>
										</div>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="input-box mb-20">
												<label>新账号名<em>*</em></label> <input id="newName"
													type="text" name="uname" class="info" placeholder="新用户名">
											</div>
										</div>
										<p align="right" id="newNameMsg" style="color: red;"></p>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="input-box mb-20">
												<label>原密码<em>*</em></label> <input readOnly="readOnly"
													value="*******" type="text" class="info">
											</div>
										</div>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="input-box mb-20">
												<label>新密码<em>*</em></label> <input id="newPwd"
													type="password" name="pwd" class="info" placeholder="你的新密码">
												<p align="right" id="newPwdMsg" style="color: red;"></p>
											</div>
										</div>

										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="input-box mb-20">
												<label>原邮箱<em>*</em></label> <input readOnly="readOnly"
													id="email" type="email" class="info">
											</div>
										</div>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="input-box mb-20">
												<label>新邮箱<em>*</em></label> <input id="newEmail"
													type="email" name="email" class="info" placeholder="你的新邮箱">
												<p align="right" id="newEmailMsg" style="color: red;"></p>
											</div>
										</div>

										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="input-box mb-20">
												<label>原电话<em>*</em></label> <input readOnly="readOnly"
													id="tel" type="number" class="info">
											</div>
										</div>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="input-box mb-20">
												<label>新电话<em>*</em></label> <input id="newTel" type="text"
													name="tel" class="info" placeholder="你的新号码">
												<p align="right" id="newTelMsg" style="color: red;"></p>
											</div>
										</div>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="input-box mb-20">
												<label>原年龄<em>*</em></label> <input readOnly="readOnly"
													id="age" type="number" class="info">
											</div>
										</div>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="input-box mb-20">
												<label>新年龄<em>*</em></label> <input id="newAge"
													type="number" name="age" class="info" placeholder="修改年龄">
												<p align="right" id="newAgeMsg" style="color: red;"></p>
											</div>
										</div>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="input-box mb-20">
												<label>原性别<em>*</em></label> <input readOnly="readOnly"
													id="sex" type="email" class="info">
											</div>
										</div>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="input-box mb-20">
												<label>新性别<em>*</em></label> <select id="newSex" name="sex"
													class="info">
													<option value="1">男</option>
													<option value="2">女</option>
												</select>
												<p align="right" id="newSexMsg" style="color: red;"></p>
											</div>
										</div>
										<div class="text-right">
											<a class="btn-def btn2" id="submitUpdate">确认修改</a>
										</div>
									</form>
								</div>
								<!-- 地址 -->
								<div role="tabpanel" class="tab-pane fade in" id="ideas">
									<div class="col-md-12 col-sm-12 col-xs-12" id="addr"></div>
									<div class="col-xs-12 text-right">
										<a id="add" class="btn-def btn2" href="#">添加地址</a>
									</div>
								</div>
								<!-- 我的订单 -->
								<div role="tabpanel" class="tab-pane fade in" id="devlopment">
									<a style="font-size: 20px;" onclick="showOrder(1)">待付款&nbsp;&nbsp;</a>
									<a style="font-size: 20px;" onclick="showOrder(0)">待发货</a>&nbsp;&nbsp;
									<a style="font-size: 20px;" onclick="showOrder(2)">待收货</a>&nbsp;&nbsp;
									<a style="font-size: 20px;" onclick="showOrder(3)">待评价</a>
									<div class="table-responsive">
										<table class="checkout-area table text-center">
											<thead>
												<tr class="cart_item check-heading">
													<td>订单号</td>
													<td>下单时间</td>
													<td>订单状态</td>
													<td>查看详情</td>
													<td>操作</td>
												</tr>
											</thead>
											<tbody id="order">
											</tbody>
										</table>
									</div>
								</div>
								<!-- 账号充值 -->
								<div role="tabpanel" class="tab-pane fade in" id="markenting">
									<form action="recharge.do" method="post" id="rechargeForm">
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="input-box mb-20">
												<label>您的当前账号<em>*</em></label> <input type="text"
													id="userName" readOnly="readonly" class="info">
											</div>
										</div>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="input-box mb-20">
												<label>余额<em>*</em></label> <input type="text"
													id="userMoney" readOnly="readonly" class="info">
											</div>
										</div>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="input-box mb-20">
												<label>充值方式<em>*</em></label> <select
													class="selectpicker select-custom" data-live-search="true"
													name="method">
													<option value="支付宝">支付宝</option>
													<option value="微信">微信</option>
												</select>
											</div>
										</div>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="input-box mb-20">
												<label>充值金额<em>*</em></label> <input type="number"
													name="money" id="money" class="info">
											</div>
										</div>
										<div class="text-right">
											<a class="btn-def btn2" onclick="recharge()">立即充值</a>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
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
							<div role="tabpanel" class="tab-pane fade in" id="devlopment">
								<div class="table-responsive">
									<table class="checkout-area table text-center">
										<thead>
											<tr class="cart_item check-heading">
												<td>商品名</td>
												<td>颜色</td>
												<td>尺寸</td>
												<td>购买数量</td>
												<td>小计</td>
											</tr>
										</thead>
										<tbody id="order2">
										</tbody>
									</table>
									<div class="text-right" id="showPay"></div>
								</div>
							</div>
							<!-- .modal-body -->
						</div>
					</div>
				</div>
				<!-- .modal-content -->
			</div>
			<!-- .modal-dialog -->
		</div>
		<!-- END Modal -->
	</div>
	<!--service idea area are end -->
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
								<li><a href="#"><img src="images/icons/pay1.png" alt="" /></a></li>
								<li><a href="#"><img src="images/icons/pay2.png" alt="" /></a></li>
								<li><a href="#"><img src="images/icons/pay3.png" alt="" /></a></li>
								<li><a href="#"><img src="images/icons/pay4.png" alt="" /></a></li>
								<li><a href="#"><img src="images/icons/pay5.png" alt="" /></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--footer bottom area end-->
	<script type="text/javascript">
	var flag1=false;
	var flag2=false;
	var flag3=false;
	var flag4=false;
	var flag5=false;
	$("#newName").blur(function(){
	  	if($("#newName").val()==null||$("#newName").val()==""){
	  		$("#newNameMsg").html("该项不能为空");
	  		flag1=false;
	  	}
	  	else{
	  		$("#newNameMsg").html("");
	  		flag1=true;
	  	}
	});
	$("#newPwd").blur(function(){
	  	if($("#newPwd").val()==null||$("#newPwd").val()==""){
	  		$("#newPwdMsg").html("该项不能为空");
	  		flag2=false;
	  	}else{
	  		$("#newPwdMsg").html("");
	  		flag2=true;
	  	}
	});
	$("#newEmail").blur(function(){
		var content=$("#newEmail").val();
	  	if(content==null||content==""){
	  		$("#newEmailMsg").html("该项不能为空");
	  		flag3=false;
	  	}else if(content.indexOf(".com")<0||content.indexOf("@")<0){
	  		$("#newEmailMsg").html("邮箱必须包含'@'和'.com'");
	  		flag3=false;
	  	}else{
	  		$("#newEmailMsg").html("");
	  		flag3=true;
	  	}
	});
	$("#newTel").blur(function(){
		var content=$("#newTel").val();
	  	if(content==null||content==""){
	  		$("#newTelMsg").html("该项不能为空");
	  		flag4=false;
	  	}else if(content.length!=11||isNaN(content)){
	  		$("#newTelMsg").html("电话必须为11位且为全数字");
	  		flag4=false;
	  	}else{
	  		$("#newTelMsg").html("");
	  		flag4=true;
	  	}
	});
	$("#newAge").blur(function(){
		var content=$("#newAge").val();
	  	if(content==null){
	  		$("#newAgeMsg").html("该项不能为空");
	  		flag5=false;
	  	}else if(content<0||content>120){
	  		$("#newAgeMsg").html("电话必须为11位且为全数字");
	  		flag5=false;
	  	}else{
	  		$("#newAgeMsg").html("");
	  		flag5=true;
	  	}
	});
	$("#submitUpdate").click(function(){
		  var targetUrl = $("#updateForm").attr("action");    
		  var data = $("#updateForm").serialize();     
			if(flag1==false||flag2==false||flag3==false||flag4==false||flag5==false){
				alert("有选项不符合规范");
			}
			else{
				var r=confirm('是否修改');
				if(r==true){
					   $.ajax({ 
					    type:'post',  
					    url:targetUrl, 
					    cache: false,
					    data:data,  
					    dataType:'text', 
					    success:function(data){      
					      alert(data);
					    },
					    error:function(){ 
					     alert("修改失败")
					    }
					   })
				}
			}
		});
    function showAddr(){
    	$("#addr").html("");
    	 $.getJSON('showAddr.do',null,function(data){  
			    	$.each(data,function(i,res){
				     	 $("#addr").append("<div class='input-box mb-20' ><label>地址"+(i+1)+" <em>*</em></label><input type='text' id='addr"+i+"' value='"+res.addr+"' class='info mb-10'><a class='btn-def btn2' onclick='updateAddr("+res.id+","+res.uid+","+i+")'>修改</a>&nbsp;<a class='btn-def btn2' onclick='deleteAddr("+res.id+")'>删除</a></div>");
			   })
		})
    };
    function deleteAddr(id){
    	var r=confirm('是否删除');
		if(r==true){
	    	$.post('deleteAddr.do',{id:id},function(data){
	    			showAddr();
	    	});
		}
    }
    function showUser(){
    	 $.getJSON('showUser.do',null,function(data){  
				     	 $("#uname").val(data.uname);
				     	 $("#email").val(data.email);
				     	 $("#tel").val(data.tel);
				     	$("#age").val(data.age);
				     	if(data.sex==0){
				     		$("#sex").val("女");
				     	}else{
				     	 	$("#sex").val("男");
				     	}
		});
    };
    function updateAddr(id,uid,addrId){
    	var addr=$("#addr"+addrId).val();
    	var date={id:id,addr:addr,uid:uid};
    	var r=confirm('是否修改');
		if(r==true){
	    	$.post('updateAddr.do',date,function(data){  
		     	alert("修改成功");
			});
		}
    };
    $("#add").click(function(){
    	$("#addr").append("<div class='input-box mb-20' ><label>新地址 <em>*</em></label><input type='text' id='addText'  class='info mb-10'><a class='btn-def btn2' onclick='updateAddrAndShow()'>添加</a></div>");
    })
    function updateAddrAndShow(){
   		 var addr=$("#addText").val();
   		var r=confirm('是否添加');
		if(r==true){
	   		$.post('addAddr.do',{addr:addr},function (data){
	   			showAddr();
	    	});
		}
    }
    function showOrder(flag){
    	$("#order").html("");
    	 $.getJSON('showOrder.do',flag,function(data){  
			    	$.each(data,function(i,res){
			    		var status="待付款";
			    		if(res.status==0){
			    			status="待发货";
			    		}else if(res.status==2){
			    			status="待收货";
			    		}else if(res.status==3){
			    			status="待评价";
			    		}
			    		if(flag==res.status){
			    			$("#order").append("<tr class='cart_item check-item prd-name'>"
	                                +" <td class='ctg-type'>"+res.id+"</td>"
	                                +" <td class='cgt-type'>"+res.time+"</td>"
	                                +"<td class='cgt-type'>"+status+"</td>"
	                                 +"<td class='cgt-des'> <a onclick='showDetailed("+res.id+","+res.status+")' data-tooltip='Quick View' class='q-view' data-toggle='modal' data-target='.modal'>查看详情</a></td>"
	                                 +"<td><a class='btn-def btn2' onclick='deleteOrder("+res.id+")'>删除订单</a></td></tr>");
			    			if(flag==3){
			    				$("#order").append("<td><a class='btn-def btn2' onclick='commtent("+res.id+")'>评论</a></td>");
			    			}
			    		}
				     	if(flag==-1){
				     		$("#order").append("<tr class='cart_item check-item prd-name'>"
	                                +" <td class='ctg-type'>"+res.id+"</td>"
	                                +" <td class='cgt-type'>"+res.time+"</td>"
	                                +"<td class='cgt-type'>"+status+"</td>"
	                                 +"<td class='cgt-des'> <a onclick='showDetailed("+res.id+","+res.status+")' data-tooltip='Quick View' class='q-view' data-toggle='modal' data-target='.modal'>查看详情</a></td>"
	                                 +"<td><a class='btn-def btn2' onclick='deleteOrder("+res.id+")'>删除订单</a></td></tr>");
				     	}
			   })
		})
    };
    function deleteOrder(id){
    	var r=confirm('是否删除');
		if(r==true){
	    	$.post('deleteOrders.do',{id:id},function(data){
	    		showOrder();
	    	});
		}
    }
    function showDetailed(oid,status){
    	$("#order2").html("");
    	$("#showPay").html("");
    	$.getJSON('findOrders.do',{id:oid},function(data){  
    		var count=0;
    		$.each(data,function(i,res){
    			$("#order2").append("<tr class='cart_item check-item prd-name'>"
                        +" <td class='ctg-type'>"+res.name+"</td>"
                        +" <td class='cgt-type'>"+res.color+"</td>"
                        +"<td class='cgt-type'>"+res.size+"</td>"
                         +"<td class='cgt-des'>"+res.count+"</td>"
                         +"<td class='cgt-type'>"+res.price*res.count+"</td></tr>");
    			count+=res.price*res.count;
    		});
    		$("#order2").append("<tr><td class='ctg-type'>总计</td><td>--</td><td>--</td><td>--</td><td class='cgt-type'>"+count+"</td></tr>")
			if(status!=0){
				$("#showPay").append("<a class='btn-def btn2' href='#'>去支付</a>");
			}
    	});
    }
    //显示用户账号和账号余额的点击事件
    function showMoney(){
    	$("#userName").val("");
		$("#userMoney").val("");
		$("#money").val("");
    	$.getJSON('showUser.do',null,function(data){ 
    		$("#userName").val(data.uname);
    		$("#userMoney").val(data.money);
    	})
    }
    //充值
    function recharge(){
    	var targetUrl = $("#rechargeForm").attr("action");    
		  var data = $("#rechargeForm").serialize();   
		  var r=confirm('确定充值？');
			if(r==true){
		    	$.post(targetUrl,data,function(data){ 
		    		showMoney();
		    	})
			}
    }
    $(function (){
    	$.getJSON('showUser.do',null,function(data){  
	     	 $("#uname").val(data.uname);
	     	 $("#pwd").val(data.pwd);
	     	 $("#email").val(data.email);
	     	 $("#tel").val(data.tel);
	     	$("#age").val(data.age);
	     	if(data.sex==0){
	     		$("#sex").val("女");
	     	}else{
	     	 	$("#sex").val("男");
	     	}
		})
    });
</script>
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
	<script type="text/javascript">
	
	//评论
		function commtent(id){
		
		
		}
		function addCart(id,price){
			var data={gid:id}
			$.post("ajax_addCart.do",data,function(data){
				$("#cart").prepend(data);
				$("#total").text(parseInt($("#total").text())+1);
				$("#totalMoney").text(parseInt($("#totalMoney").text())+price);
			});
		}
		
		
		function select(id){
			var data={id:id}
			$.post("selectById.do",data,function(data){
				console.log(data);
				var value=data.split("/");
				$("#new_price").text((value[2]*value[3]).toFixed(2));
				$("#old_price").text(value[2]);
				$("#describe").text(value[0]);
				$("#product_name").text(value[1]);
			});
		}
	</script>

</body>

</html>
