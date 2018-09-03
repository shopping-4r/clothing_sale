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
                    <h5>忘记密码</h5> </div>
                <ol class="breadcrumb">
                    <li class="home"><a title="Go to Home Page" href="index.jsp">首页</a></li>
                    <li class="active"><a title="Go to login Page" href="login.jsp">登录</a></li>
                </ol>
            </div>
        </div>
        <!--breadcumb area end -->
        
        <!-- Account Area Start -->
        <div class="account-area ptb-80">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-12" style="margin-left:350px">
                        <form action="refindPwd.do" id="refindForm">
                            <div class="login-reg">
                            <p id="msg" style="color:red">${msg}</p>
                                <h3><spring:message code="refindPwd"></spring:message></h3>
                                <div class="input-box mb-20">
                                    <label class="control-label"><spring:message code="email"></spring:message></label><div id="emailMsg" style="color:red"></div>
                                    <input id="email" type="email" placeholder="<spring:message code="email2"></spring:message>" value="" name="email" class="info">
                                </div>
                                <div class="input-box mb-20">
                                    <label class="control-label"><spring:message code="password3"></spring:message></label><div id="pwdMsg" style="color:red"></div>
                                    <input id="email" type="email" placeholder="<spring:message code="password4"></spring:message>" value="" name="pwd" class="info">
                                </div>
                                <div class="input-box">
                                    <label class="control-label"><spring:message code="yzm"></spring:message></label><div id="yzmMsg" style="color:red"></div>
                                    <input id="yzm" type="text" placeholder="<spring:message code="yzm2"></spring:message>" value="" name="yzm"  style="width:400px">
                                	<button type="button" id="img" onclick="getYzm()" style="float:right;color:black;margin-top:10px">获取验证码</button>
                                </div>
                            </div>
                            <div class="frm-action">
                                <div class="input-box tci-box">
                                    <a onclick="submit2()" type="button" class="btn-def btn2"
                                    style="width:100px"><spring:message code="refindPwd"></spring:message></a>
                                </div>
                            </div>
                        </form>
                    </div>
                  
                </div>
            </div>
	        <div class="text-right">
	        	 选择语言(language):
	    	<a class="btn-def btn2" style="color:bleak;" href="translate3.do?lang=zh_CN"><spring:message code="language.cn"/></a> &nbsp;&nbsp;&nbsp;
	    	<a class="btn-def btn2" style="color:bleak;" href="translate3.do?lang=en_US"><spring:message code="language.en"/></a>
	        </div>
        </div>
        <!-- Account Area End -->
    </div>
<script type="text/javascript">
	function getYzm(){
		var email=$("#email").val();
		$.post('sendYzm.do',{email:email},function(data){
			if(data=="验证码发送成功，请注意查收"){
				alert(data);
			}else{
				$("#msg").html(data);
			}
		})
	}
	function submit2(){
		var email=$("#email").val();
		var yzm=$("#yzm").val();
		var flag=true;
		$("#emailMsg").html("");
		$("#yzmMsg").html("");
		$("#msg").html("");
		if(email==null||email==""){
			$("#emailMsg").html("邮箱不能为空");
			flag=false;
		}
		if(email.indexOf(".com")<0||email.indexOf("@")<0){
	  		$("#emailMsg").html("邮箱必须包含'@'和'.com'");
	  		flag=false;
	  	}
		if(yzm==null||yzm==""){
			$("#yzmMsg").html("不能为空");
	  		flag=false;
		}
		if(flag==true){
			$.post('testEmailAndYzm.do',{email:email,yzm:yzm},function(data){
				if(data=="正确"){
					$("#refindForm").submit();
				}else{
					$("#msg").html(data);
				}
			})
		}
	}
</script>
<%@include file="footer.jsp" %>