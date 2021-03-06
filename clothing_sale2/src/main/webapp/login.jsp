<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Login || Clothing</title>
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
    <div class="wrapper login">
       
        <%@include file="header.jsp" %>
        <!--breadcumb area start -->
        <div class="breadcumb-area overlay pos-rltv">
            <div class="bread-main">
                <div class="bred-hading text-center">
                    <h5>Login Register</h5> </div>
                <ol class="breadcrumb">
                    <li class="home"><a title="Go to Home Page" href="index.jsp">Home</a></li>
                    <li class="active">Login</li>
                </ol>
            </div>
        </div>
        <!--breadcumb area end -->
        
        <!-- Account Area Start -->
        <div class="account-area ptb-80">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-12" style="margin-left:350px">
                        <form action="login.do" id="userForm">
                            <div class="login-reg"  >
                            <p id="msg" style="color:red">${msg}</p>
                                <h3><spring:message code="login"></spring:message></h3>
                                <div class="input-box mb-20">
                                    <label class="control-label"><spring:message code="email"></spring:message></label><div id="emailMsg" style="color:red"></div>
                                    <input id="email" type="email" placeholder="<spring:message code="email2"></spring:message>" value="" name="email" class="info">
                                </div>
                                <div class="input-box">
                                    <label class="control-label"><spring:message code="password"></spring:message></label><div id="pwdMsg"></div>
                                    <input id="password" type="password" placeholder="<spring:message code="password2"></spring:message>" value="" name="pwd" class="info">
                                </div>
                                <div class="input-box">
                                    <label class="control-label"><spring:message code="yzm"></spring:message></label><div id="yzmMsg" style="color:red"></div>
                                    <input id="yzm" type="text" placeholder="<spring:message code="yzm2"></spring:message>" value="" name="yzm"  style="width:400px">
                                	<img alt="无图片" id="img" src="vc.do" height="30px" onclick="change(this)" style="float:right">
                                </div>
                            </div>
                            <div class="frm-action">
                                <div class="input-box tci-box">
                                    <a onclick="submit2()" type="button" class="btn-def btn2"
                                    style="width:100px"><spring:message code="login"></spring:message></a>
                                </div>
                                <div class="input-box tci-box">
                                	<a onclick="reset()" type="button" class="btn-def btn2" 
                                	style="width:100px;margin-left:20px"><spring:message code="reset"></spring:message></a>
                                </div>
                                <div class="input-box tci-box">
                                	<a href="regist.jsp" type="button" class="btn-def btn2" 
                                	style="width:100px;margin-left:20px"><spring:message code="regist"></spring:message></a>
                                </div>
                                <span style="float:right;margin-top:5px">
                             		<input class="remr" type="checkbox"> <spring:message code="rememberMe"></spring:message>
                         		</span>
                                <a href="refindPwd.jsp" class="forgotten forg"><spring:message code="forgottenPassword"></spring:message></a>
                            </div>
                        </form>
                    </div>
                  
                </div>
            </div>
	        <div class="text-right">
	        	 选择语言(language):
	    	<a class="btn-def btn2" style="color:bleak;" href="translate1.do?lang=zh_CN"><spring:message code="language.cn"/></a> &nbsp;&nbsp;&nbsp;
	    	<a class="btn-def btn2" style="color:bleak;" href="translate1.do?lang=en_US"><spring:message code="language.en"/></a>
	        </div>
        </div>
        <!-- Account Area End -->
    </div>
<script type="text/javascript">
//重置的点击事件
	function reset(){
	$("#email").val("");
	$("#password").val("");
	$("#yzm").val("");
	var img=$("#img");
	change(img);
}
//表单验证的点击事件
	function submit2(){
		var yzm=$("#yzm").val();
		var email=$("#email").val();
		var pwd=$("#password").val();
		if(email==null||email==""){
			$("#pwdMsg").html("");
			$("#yzmMsg").html("");
	  		$("#emailMsg").html("该项不能为空");
	  	}else if(email.indexOf(".com")<0||email.indexOf("@")<0){
	  		$("#pwdMsg").html("");
	  		$("#yzmMsg").html("");
	  		$("#emailMsg").html("邮箱必须包含'@'和'.com'");
	  	}else if(pwd==null||pwd==""){
	  		$("#emailMsg").html("");
	  		$("#yzmMsg").html("");
	  		$("#pwdMsg").html("该项不能为空");
	  	}else if(yzm==null||yzm==""){
	  		$("#emailMsg").html("");
	  		$("#pwdMsg").html("");
	  		$("#yzmMsg").html("验证码不能为空");
	  	}else{
	  		$("#userForm").submit();
	  	}
	}
		var i=1;
	//刷新yzm的方法
	function change(a){
		//这里如果src地址与原来的src地址一样  则，该代码无法实现
		a.src="vc.do?a="+(++i);
	}
</script>
<%@include file="footer.jsp" %>