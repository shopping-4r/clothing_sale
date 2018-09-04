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
    <link rel="stylesheet" href="css/custom.css">  <link rel="stylesheet" href="css/color/skin-default.css">
<!-- 评论 区-->
<style type="text/css"> 

*{margin:0;padding:0;list-style-type:none;}

body{color:#666;font:12px/1.5 Arial;}

/* star */

#star{position:relative;width:600px;margin:20px auto;height:120px;}

#star ul,#star span{float:left;display:inline;height:19px;line-height:19px;}

#star ul{margin:0 10px;}

#star li{float:left;width:24px;cursor:pointer;text-indent:-9999px;background:url(images/star.png) no-repeat;}

#star strong{color:#f60;padding-left:10px;}

#star li.on{background-position:0 -28px;}

#star p{position:absolute;top:20px;width:159px;height:60px;display:none;background:url(images/icon.gif) no-repeat;padding:7px 10px 0;}

#star p em{color:#f60;display:block;font-style:normal;}

</style>
<!-- end评论 -->
<!-- Modernizr JS -->
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
	<!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <!-- Body main wrapper start -->
    <div class="wrapper my-account">
       <%@ include file="header.jsp" %>
        <!-- Start of header area -->
        <!-- End of header area -->
        
        <!--breadcumb area start -->
        <div class="breadcumb-area overlay pos-rltv">
            <div class="bread-main">
                <div class="bred-hading text-center">
                    <h5>我的账号</h5> </div>
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
                                <li role="presentation" class="active"><a href="#creativity" onclick="showUser()" aria-controls="creativity" role="tab" data-toggle="tab">个人信息</a></li>
                                <li role="presentation"><a href="#ideas" onclick="showAddr()" aria-controls="ideas" role="tab" data-toggle="tab">收货地址</a></li>
                                <li role="presentation"><a href="#devlopment" onclick="showOrder(-1)" aria-controls="devlopment" role="tab" data-toggle="tab">我的订单</a></li>
                                <li role="presentation"><a href="#markenting" onclick="showMoney()" aria-controls="markenting" role="tab" data-toggle="tab">账号充值</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-9 col-sm-8 col-xs-12">
                        <div class="idea-tab-content">
                            <!-- Tab panes -->
                            <div class="tab-content">
<!-- 个人基本信息 -->
                                <div role="tabpanel" class="tab-pane fade in active" id="creativity">
                                      <form action="updateUser.do" method="post" id="updateForm">
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                            <div class="input-box mb-20">
                                                <label>原账号名<em>*</em></label>
                                                <input readOnly="readOnly" id="uname" type="text" class="info" >
                                            </div>
                                       </div>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-box mb-20">
                                            <label>新账号名<em>*</em></label>
                                            <input id="newName" type="text" name="uname" class="info" placeholder="新用户名">
                                        </div>
                                        </div>
												<p align="right" id="newNameMsg" style="color:red;"></p>
                                   <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-box mb-20">
                                            <label>原密码<em>*</em></label>
                                            <input readOnly="readOnly"  value="*******" type="text"  class="info">
                                        </div>
                                        </div>
                                         <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-box mb-20">
                                            <label>新密码<em>*</em></label>
                                            <input id="newPwd" type="password" name="pwd" class="info" placeholder="你的新密码">
                                        	<p align="right" id="newPwdMsg" style="color:red;"></p>
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
                                            <label>原邮箱<em>*</em></label>
                                            <input readOnly="readOnly" id="email" type="email" class="info">
                                        </div>
                                   </div>
                                   <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-box mb-20">
                                            <label>新邮箱<em>*</em></label>
                                            <input id="newEmail" type="email" name="email" class="info" placeholder="你的新邮箱">
                                       		<p align="right" id="newEmailMsg" style="color:red;"></p>
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-box mb-20">
                                            <label>原电话<em>*</em></label>
                                            <input readOnly="readOnly" id="tel" type="number" class="info">
                                        </div>
                                   </div>
                                   <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-box mb-20">
                                            <label>新电话<em>*</em></label>
                                            <input id="newTel" type="text" name="tel" class="info" placeholder="你的新号码">
                                        	<p align="right" id="newTelMsg" style="color:red;"></p>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-box mb-20">
                                            <label>原年龄<em>*</em></label>
                                            <input readOnly="readOnly" id="age" type="number" class="info">
                                        </div>
                                   </div>
                                   <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-box mb-20">
                                            <label>新年龄<em>*</em></label>
                                            <input id="newAge" type="number" name="age" class="info" placeholder="修改年龄">
                                       		<p align="right" id="newAgeMsg" style="color:red;"></p>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-box mb-20">
                                            <label>原性别<em>*</em></label>
                                            <input readOnly="readOnly" id="sex" type="email" class="info">
                                        </div>
                                   </div>
                                   <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-box mb-20">
                                            <label>新性别<em>*</em></label>
                                            <select id="newSex" name="sex" class="info">
                                            	<option value="1">男</option>
                                            	<option value="2">女</option>
                                            </select>
                                       		<p align="right" id="newSexMsg" style="color:red;"></p>
                                        </div>
                                    </div>
                                    <div class="text-right">
                                            <a class="btn-def btn2" id="submitUpdate">确认修改</a>
                                        </div>
                                </form>
                                </div>
<!-- 地址 -->
                                <div role="tabpanel" class="tab-pane fade in" id="ideas">
                                   <div class="col-md-12 col-sm-12 col-xs-12" id="addr">
                                    </div>
                                    <div class="col-xs-12 text-right">
                                   		 <a id="add" class="btn-def btn2" href="#">添加地址</a>
                                    </div>
                                </div>
<!-- 我的订单 -->
                                <div role="tabpanel" class="tab-pane fade in" id="devlopment">
                                	<h1>订单分类</h1>
                                    <a style="font-size: 20px;" onclick="showOrder(1)">待付款&nbsp;&nbsp;</a>
									<a style="font-size: 20px;" onclick="showOrder(0)">待发货</a>&nbsp;&nbsp;
									<a style="font-size: 20px;" onclick="showOrder(2)">待收货</a>&nbsp;&nbsp;
									<a style="font-size: 20px;" onclick="showOrder(3)">待评价</a>&nbsp;&nbsp;
									<a style="font-size: 20px;" onclick="showOrder(4)">退款，售后</a>
                                        <div class="table-responsive">
                                            <table class="checkout-area table text-center">
                                                <thead>
                                                    <tr class="cart_item check-heading">
                                                        <td> 订单号</td>
                                                        <td> 下单时间</td>
                                                        <td> 订单状态</td>
                                                        <td> 查看详情</td>
                                                        <td> 操作</td>
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
	                                                <label>您的当前账号<em>*</em></label>
	                                                <input type="text" id="userName"  readOnly="readonly" class="info">
	                                            </div>
	                                       </div>
	                                       <div class="col-md-6 col-sm-6 col-xs-12">
	                                            <div class="input-box mb-20">
	                                                <label>余额<em>*</em></label>
	                                                <input type="text" id="userMoney" readOnly="readonly" class="info">
	                                            </div>
	                                       </div>
	                                       <div class="col-md-6 col-sm-6 col-xs-12">
	                                            <div class="input-box mb-20">
	                                                <label>充值方式<em>*</em></label>
	                                               <select class="selectpicker select-custom" data-live-search="true" name="method">
	                                               			<option value="支付宝">支付宝</option>
	                                               			<option value="微信">微信</option>
	                                               </select>
	                                            </div>
	                                       </div>
	                                        <div class="col-md-6 col-sm-6 col-xs-12">
	                                			 <div class="input-box mb-20">
	                                                <label>充值金额<em>*</em></label>
	                                               <input type="number" name="money" id="money" class="info">
	                                            </div>
	                                		</div>
		                                       <div class="text-right">
	                                            <a class="btn-def btn2" onclick="recharge()">立即充值</a>
	                                        </div>
                                        </form>
                                </div>
<!-- 商铺管理 -->                               
                             <c:if test="${user.role==1}">
                                <div role="tabpanel" class="tab-pane fade in" id="saler">
                                	<div class="col-md-6 col-sm-6 col-xs-12">
                                				<div class="input-box mb-20">
	                                                <img src="" id="image"></img>
	                                                <label>店名<em>*</em></label>
	                                                <input type="text" id="sname" class="info">
	                                            </div>
	                                </div>
	                                <div class="payment-btn-area mt-20">
	                                            <div class="col-md-4 col-sm-4 col-xs-12 text-left">
                                   					 <a onclick="addGoods()" class="btn-def btn2" href="#">商品上架</a>
                                   				</div>
	                                            <div class="col-md-4 col-sm-4 col-xs-12 text-right">
                                   					 <a onclick="showAllGoods" class="btn-def btn2" href="#">商品下架</a>
                                   				</div>
                                	</div>
                           		</div>
                            </c:if>
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
						<div class="modal-body" id="bodyContent">
						
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
									<li><a href="#"><img src="images/gallery/01.jpg"alt=""></a></li>
									<li><a href="#"><img src="images/gallery/02.jpg"alt=""></a></li>
									<li><a href="#"><img src="images/gallery/03.jpg"alt=""></a></li>
									<li><a href="#"><img src="images/gallery/04.jpg"alt=""></a></li>
									<li><a href="#"><img src="images/gallery/05.jpg"alt=""></a></li>
									<li><a href="#"><img src="images/gallery/06.jpg"alt=""></a></li>
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
									<li><a href="#"><img src="images/icons/pay1.png"alt="" /></a></li>
									<li><a href="#"><img src="images/icons/pay2.png"alt="" /></a></li>
									<li><a href="#"><img src="images/icons/pay3.png"alt="" /></a></li>
									<li><a href="#"><img src="images/icons/pay4.png"alt="" /></a></li>
									<li><a href="#"><img src="images/icons/pay5.png"alt="" /></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--footer bottom area end-->
	<!-- 评价 -->
	<script type="text/javascript">
    //显示限制输入字符method
    function textAreaChange(obj){
        var $this = $(obj);
        var count_total = $this.next().children('span').text();
        var count_input = $this.next().children('em');
        var area_val = $this.val();
        if(area_val.len()>count_total){
            area_val = autoAddEllipsis(area_val,count_total);//根据字节截图内容
            $this.val(area_val);
            count_input.text(0);//显示可输入数
        }else{
            count_input.text(count_total - area_val.len());//显示可输入数
        }
    }
    //得到字符串的字节长度
    String.prototype.len = function(){
        return this.replace(/[^\x00-\xff]/g, "xx").length;
    };
    /*
     * 处理过长的字符串，截取并添加省略号
     * 注：半角长度为1，全角长度为2
     * pStr:字符串
     * pLen:截取长度
     * return: 截取后的字符串
     */
    function autoAddEllipsis(pStr, pLen) {
        var _ret = cutString(pStr, pLen);
        var _cutFlag = _ret.cutflag;
        var _cutStringn = _ret.cutstring;
        return _cutStringn;
    }
    /*
     * 取得指定长度的字符串
     * 注：半角长度为1，全角长度为2
     * pStr:字符串
     * pLen:截取长度
     * return: 截取后的字符串
     */
    function cutString(pStr, pLen) {
        // 原字符串长度
        var _strLen = pStr.length;
        var _tmpCode;
        var _cutString;
        // 默认情况下，返回的字符串是原字符串的一部分
        var _cutFlag = "1";
        var _lenCount = 0;
        var _ret = false;
        if (_strLen <= pLen/2){_cutString = pStr;_ret = true;}
        if (!_ret){
            for (var i = 0; i < _strLen ; i++ ){
                if (isFull(pStr.charAt(i))){_lenCount += 2;}
                else {_lenCount += 1;}
                if (_lenCount > pLen){_cutString = pStr.substring(0, i);_ret = true;break;}
                else if(_lenCount == pLen){_cutString = pStr.substring(0, i + 1);_ret = true;break;}
            }
        }
        if (!_ret){_cutString = pStr;_ret = true;}
        if (_cutString.length == _strLen){_cutFlag = "0";}
        return {"cutstring":_cutString, "cutflag":_cutFlag};
    }
    /*
     * 判断是否为全角
     *
     * pChar:长度为1的字符串
     * return: true:全角
     *         false:半角
     */
    function isFull (pChar){
        if((pChar.charCodeAt(0) > 128)){return true;}
        else{return false;}
    }
</script>
<script type="text/javascript"> 
function pingFen(){
	var oStar = document.getElementById("star");
	var aLi = oStar.getElementsByTagName("li");
	var oUl = oStar.getElementsByTagName("ul")[0];
	var oSpan = oStar.getElementsByTagName("span")[1];
	var oP = oStar.getElementsByTagName("p")[0];
	var i = iScore = iStar = 0;
	var aMsg = [
				"很不满意|差得太离谱，与卖家描述的严重不符，非常不满",
				"不满意|部分有破损，与卖家描述的不符，不满意",
				"一般|质量一般，没有卖家描述的那么好",
				"满意|质量不错，与卖家描述的基本一致，还是挺满意的",
				"非常满意|质量非常好，与卖家描述的完全一致，非常满意"
				]
	for (i = 1; i <= aLi.length; i++){
		aLi[i - 1].index = i;
		//鼠标移过显示分数
		aLi[i - 1].onmouseover = function (){
			fnPoint(this.index);
			//浮动层显示
			oP.style.display = "block";
			//计算浮动层位置
			oP.style.left = oUl.offsetLeft + this.index * this.offsetWidth - 104 + "px";
			//匹配浮动层文字内容
			oP.innerHTML = "<em><b>" + this.index + "</b> 分 " + aMsg[this.index - 1].match(/(.+)\|/)[1] + "</em>" + aMsg[this.index - 1].match(/\|(.+)/)[1]
		};
		//鼠标离开后恢复上次评分
		aLi[i - 1].onmouseout = function (){
			fnPoint();
			//关闭浮动层
			oP.style.display = "none"
		};
		//点击后进行评分处理
		aLi[i - 1].onclick = function (){
			iStar = this.index;
			oP.style.display = "none";
			oSpan.innerHTML = "<strong id='level'>" + (this.index) + " 分</strong> (" + aMsg[this.index - 1].match(/\|(.+)/)[1] + ")"
		}
	}
	//评分处理
	function fnPoint(iArg){
		//分数赋值
		iScore = iArg || iStar;
		for (i = 0; i < aLi.length; i++) aLi[i].className = i < iScore ? "on" : "";	
	}
};
</script>
    <!-- end 评价 -->
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
			    		}else if(res.status==4){
			    			status="退款，售后";
			    		}
			    		if(flag==res.status){
				     	   $("#order").append("<tr class='cart_item check-item prd-name'>"
                                +" <td class='ctg-type'>"+res.id+"</td>"
                                +" <td class='cgt-type'>"+res.time+"</td>"
                                +"<td class='cgt-type'>"+status+"</td>"
                                 +"<td class='cgt-des'> <a onclick='showDetailed("+res.id+","+res.status+",1)' data-tooltip='Quick View' class='q-view' data-toggle='modal' data-target='.modal'>查看详情</a></td>"
                                 +"<td><a class='btn-def btn2' onclick='deleteOrder("+res.id+")'>删除订单</a></td></tr>");
			   			if(flag==3){
			    				$("#order").append("<td><a style='color:CCFF33' onclick='showDetailed("+res.id+","+res.status+",2)' data-tooltip='Quick View' class='q-view' data-toggle='modal' data-target='.modal'>点击评价</a></td>");
			    			}
			    	}
			    	if(flag==-1){
				     		$("#order").append("<tr class='cart_item check-item prd-name'>"
	                                +" <td class='ctg-type'>"+res.id+"</td>"
	                                +" <td class='cgt-type'>"+res.time+"</td>"
	                                +"<td class='cgt-type'>"+status+"</td>"
	                                 +"<td class='cgt-des'> <a onclick='showDetailed("+res.id+","+res.status+",1)' data-tooltip='Quick View' class='q-view' data-toggle='modal' data-target='.modal'>查看详情</a></td>"
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
    function showDetailed(oid,status,flag){
    	if(flag==1){
    	$("#bodyContent").html("<div role='tabpanel' class='tab-pane fade in' id='devlopment'>"+
               "<div class='table-responsive'>"+
        "<table class='checkout-area table text-center'>"+
            "<thead>"+
                "<tr class='cart_item check-heading'>"+
                    "<td>商品名</td>"+
                    "<td>单价</td>"+
                    "<td>颜色</td>"+
                    "<td>尺寸</td>"+
                    "<td>购买数量</td>"+
                    "<td>小计</td>"+
                "</tr>"+
            "</thead>"+
            "<tbody id='order2'>"+
            "</tbody>"+
        "</table>"+
            "<div class='text-right' id='showPay'></div>"+
    "</div>"+
"</div>");
    	$("#order2").html("");
    	$("#showPay").html("");
    	$.getJSON('findOrders.do',{id:oid},function(data){  
    		var jianMoney=0;
    	
    		$.each(data,function(i,res){
    			$("#order2").append("<tr class='cart_item check-item prd-name'>"
                        +" <td class='ctg-type'>"+res.name+"</td>"
                        +" <td class='ctg-type'>"+res.price+"</td>"
                        +" <td class='cgt-type'>"+res.color+"</td>"
                        +"<td class='cgt-type'>"+res.size+"</td>"
                         +"<td class='cgt-des'>"+res.count+"</td>"
                         +"<td class='cgt-type'>"+res.price*res.count+"</td></tr>");
    			jianMoney+=(res.price*res.count);
    			
    		
    		});
    		$("#order2").append("<tr><td class='ctg-type'>总计</td><td>--</td><td>--</td><td>--</td><td class='cgt-type'>"+jianMoney+"</td></tr>")
			if(status==1){
				$("#showPay").append("<button type='button' class='btn btn-info' id='testConfirm' onclick='zhiFu("+oid+","+jianMoney+")'>支付</button>");
			}
    	});
    }else if(flag==2){
    	$("#bodyContent").html(" <div class='modal-product'>"+
    			"<div id='star'>"+
    			"<span style='font-size:15px'>对此次订单的评分：</span>"+
    			"<ul>"+
    				"<li><a href='javascript:;'>1</a></li>"+
    				"<li><a href='javascript:;'>2</a></li>"+
    				"<li><a href='javascript:;'>3</a></li>"+
    				"<li><a href='javascript:;'>4</a></li>"+
    				"<li><a href='javascript:;'>5</a></li>"+
    			"</ul>"+
    			"<span></span>"+
    			"<p></p>"+
    		"</div>"+
    	        "<label class='col-md-3 control-label'>请输入评论内容：</label>"+
    	        "<div class='col-md-6'>"+
    	            "<textarea class='form-control' name='test' onkeyup='textAreaChange(this)' onkeydown='textAreaChange(this)' rows='5' id='comment'></textarea>"+
    	            "<div class='text-right'>"+
    	                "<em style='color:red'>200</em>/<span>200</span>"+
    	            "</div>"+
    	        "</div>"+
    	    
	"<div class='col-md-offset-3 col-md-6'>"+
        "<button type='button' class='btn btn-info' id='testConfirm' onclick='subComment("+oid+")'>提交</button>"+
   	"</div>"+
   	"</div>");
    	//调用评分js
    	pingFen();
    }
    }
  //判断字符是否为空的方法
    function isEmpty(obj){
        if(typeof obj == "undefined" || obj == null || obj == ""){
            return true;
        }else{
            return false;
        }
    }
    //提交评分
    function subComment(id){
    	var comment=$("#comment").val();
    	if(isEmpty($("#level").html())){
    		alert("请给我们打个分");
    		return;
    	}
    	if(isEmpty(comment)){
    		alert("请高抬贵手写一点评论吧");
    		return;
    	}
    	var level=$("#level").html().substr(0,1);
    	var data={id:id,level:level,comment:comment};
    	$.post("comment.do",data,function(){
    		alert("评论成功");
    		$("#productModal").modal('hide');
    		showOrder(3);
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
    //查询商铺
    function showSaler(){
    	$.getJSON('showSaler.do',null,function(data){
    		$("#image").attr("src",data.image);
    		$("#sname").val(data.name);
    	});
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
				//console.log(data);
				var value=data.split("/");
				$("#new_price").text((value[2]*value[3]).toFixed(2));
				$("#old_price").text(value[2]);
				$("#describe").text(value[0]);
				$("#product_name").text(value[1]);
			});
		}
	</script>
	<!-- 支付 -->
	<script type="text/javascript">
		function zhiFu(id,jianMoney){
			var money="${sessionScope.user.money}";
			var shengYuMoney=money-jianMoney;
			var str="付款前账户余额: " + money + "  付款金额: "+ jianMoney + "  付款后余额: " + shengYuMoney;
			console.log(str);
			$("#productModal").modal('hide');
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
			 			var data1={
							id:id,
							pwd:data,
							money:shengYuMoney
			 				}
				    	$.post("YanZhen.do",data1,function (flag){
				    		//console.log(flag);
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
				    },
				    onCancel: function (data) {
				        alert("你取消了支付，我在订单中等你");
				        window.location.href='my-account.jsp';
				    },
				});
		 }
		
	</script>
</body>

</html>
