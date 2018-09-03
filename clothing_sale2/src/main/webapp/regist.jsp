<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!doctype html>
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
                    <li class="home"><a title="Go to Home Page" href="index.html">Home</a></li>
                    <li class="active">Login</li>
                </ol>
            </div>
        </div>
        <!--breadcumb area end -->
        
        <!-- Account Area Start -->
         <div class="account-area ptb-80">
            <div class="container">
                <div class="row">
     		  <div class="col-sm-6 col-xs-12 lr2" style="margin-left:350px">
                        	<form action="regist.do" id="registForm">
                            <div class="login-reg">
                            <p id="msg" style="color:red">${msg}</p>
                                <h3><spring:message code="regist"></spring:message></h3>
                   <!--昵称  -->
                                  <div class="input-box mb-20">
                                    <label class="control-label"><spring:message code="nickname"></spring:message></label><div id="nickNameMsg" style="color:red"></div>
                                    <input id="nickname" class="info" placeholder="<spring:message code="nickname2"></spring:message>" value="" name="nickname">
                                </div>
                    <!--真实姓名  -->
                                <div class="input-box mb-20">
                                    <label class="control-label"><spring:message code="realName"></spring:message></label><div id="unameMsg" style="color:red"></div>
                                    <input id="uname" class="info" placeholder="<spring:message code="realName2"></spring:message>" value="" name="uname">
                                </div>
                     <!--密码  -->
                                <div class="input-box">
                                    <label class="control-label"><spring:message code="password"></spring:message></label><div id="pwdMsg" style="color:red"></div>
                                    <input id="password" type="password" class="info" placeholder="<spring:message code="password2"></spring:message>" value="" name="pwd">
                                </div>
                      <!--确认密码  -->
                                <div class="input-box">
                                    <label class="control-label"><spring:message code="confirm"></spring:message></label><div id="pwd2Msg" style="color:red"></div>
                                    <input id="password2" type="password" class="info" placeholder="<spring:message code="password2"></spring:message>" value="" name="rpwd">
                                </div>
                       <!--电话  -->
                                <div class="input-box">
                                    <label class="control-label"><spring:message code="phone"></spring:message></label><div id="phoneMsg" style="color:red"></div>
                                    <input id="phone" type="text" class="info" placeholder="<spring:message code="phone2"></spring:message>" name="tel">
                                </div>
                       <!--年龄  -->
                                <div class="input-box">
                                    <label class="control-label"><spring:message code="age"></spring:message></label><div id="ageMsg" style="color:red"></div>
                                    <input id="age" type="number" class="info" placeholder="<spring:message code="age2"></spring:message>"  name="age">
                                </div>
                        <!--性别  -->
                                <div class="input-box">
                                    <label><spring:message code="sex"></spring:message></label>
                                    <input checked style="margin-left:100px;width:15px;height:15px" type="radio" value="0" name="sex"><spring:message code="man"></spring:message>
                                    <input style="margin-left:100px;width:15px;height:15px" type="radio" value="1" name="sex"><spring:message code="woman"></spring:message>
                                </div>
                        <!--邮箱  -->
                                <div class="input-box mb-20">
                                    <label class="control-label"><spring:message code="email"></spring:message></label><div id="emailMsg" style="color:red"></div>
                                    <input id="email" type="email" class="info" placeholder="<spring:message code="email2"></spring:message>" value="" name="email">
                                </div>
                                
                            </div>
                            <div class="frm-action" style="text-align:center;">
                                <div class="input-box tci-box">
                                <input onclick="submit2()" type="button" class="btn-def btn2" style="width:510px;background:orange" value="<spring:message code="regist"></spring:message>" >
                                </div>
                            </div>
                        </form>
                    </div>
                         </div>
            </div>
	        <div class="text-right">
	        	 选择语言(language):
		    	<a class="btn-def btn2" style="color:bleak;" href="translate2.do?lang=zh_CN"><spring:message code="language.cn"/></a> &nbsp;&nbsp;&nbsp;
		    	<a class="btn-def btn2" style="color:bleak;" href="translate2.do?lang=en_US"><spring:message code="language.en"/></a>
	        </div>
      </div>
      </div>
        <!-- Account Area End -->
<script type="text/javascript">
function submit2(){
	var email=$("#email").val();
	var pwd=$("#password").val();
	var pwd2=$("#password2").val();
	var nickname=$("#nickname").val();
	var uname=$("#uname").val();
	var age=$("#age").val();
	var phone=$("#phone").val();
	//验证真实姓名的正则表达式
	 var reg= /^(([a-zA-Z+\.?\·?a-zA-Z+]{2,30}$)|([\u4e00-\u9fa5+\·?\u4e00-\u9fa5+]{2,30}$))/;
	var flag=true;
  		$("#emailMsg").html("");
		$("#pwdMsg").html("");
		$("#pwd2Msg").html("");
		$("#nickNameMsg").html("");
		$("#unameMsg").html("");
		$("#phoneMsg").html("");
		$("#ageMsg").html("");
	if(email==null||email==""){
  		$("#emailMsg").html("邮箱不能为空");
  		flag=false;
  	}
	if(phone==null||phone==""){
		$("#phoneMsg").html("电话不能为空");
  		flag=false;
	}
	if(phone.length!=11||isNaN(phone)){
		$("#phoneMsg").html("电话必须为11位且全数字");
  		flag=false;
	}
	if(age==null||age==""){
		$("#ageMsg").html("年龄不能为空");
  		flag=false;
	}
	if(age<0||age>200){
		$("#ageMsg").html("年龄在0到200之间");
  		flag=false;
	}
	if(!reg.test(uname)||uname==null||uname==""){
  		$("#unameMsg").html("姓名输入有误，请重新输入");
  		flag=false;
  	}
	if(email.indexOf(".com")<0||email.indexOf("@")<0){
  		$("#emailMsg").html("邮箱必须包含'@'和'.com'");
  		flag=false;
  	}
	if(pwd==null||pwd==""){
  		$("#pwdMsg").html("密码不能为空");
  		flag=false;
  	}
	if(pwd2!=pwd){
  		$("#pwd2Msg").html("确认密码与密码不一致");
  		flag=false;
  	}
	if(nickname==null||nickname==""){
  		$("#nickNameMsg").html("昵称不能为空");
  		flag=false;
  	}
	if(flag){
		$.post('test.do',{nickName:nickname,email:email,tel:phone},function(data){
			if(data=="正确"){
  				$("#registForm").submit();
			}else{
				$("#msg").html(data);
			}
		})
  	}
}
</script>
<%@include file="footer.jsp" %>