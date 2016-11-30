<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="com.opensymphony.xwork2.ActionContext" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>注册</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Min App Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,800,700,600,300' rel='stylesheet' type='text/css'>
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css'/>
<link href="css/bootstrap-theme.css" rel='stylesheet' type='text/css'/>

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	    
<script src="http://ajax.useso.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
 <!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/transition.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/collapse.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/myjs.js"></script>
 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
<!---End-smoth-scrolling---->
<script src="js/responsiveslides.min.js"></script>
 <script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
  </script>

</head>
<body>
		<div class="header">
			<div class="header-top">
				<div class="container">
				<div class="logo">
					<a href="index.html"><img src="images/logo.png"></a>
				</div>
				<div class="top-menu">
					 <span class="menu"> </span> 
					 <ul>
						<li><a href="#about" class="scroll">首页</a></li>
						<li><a href="#services" class="scroll">功能</a></li>
                        
                        <li>
                            <%ActionContext a=ActionContext.getContext();
		    			if(a.getSession().get("islogin")==null){
		    			%>
						<li><a href="login" class="scroll">登录</a></li>
						<li><a href="register" class="scroll">注册</a></li>
		    			<%}
		    			else { %>
		    			<div class="dropdown">
							<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown">
								 <span class="glyphicon glyphicon-user"> 个人</span>
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
								<li role="presentation"><a role="menuitem" tabindex="-1" href="#">个人信息</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1" href="#">查询审批结果</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1" href="#">退出登录</a></li>
								
							</ul>
							</div>
		    			<%} %>
					
                    		
						</li>
						
					</ul>
					</div>
					<div class="clearfix"> </div>
					</div>
					</div>
					</div>
					 <!-- script-for-menu -->
 
<!--signip start here-->
<div align="center">        
            <form id="signupForm" method="post" action="user_signup">
			<div class="sign-top">
					<h3>注册</h3>
					<p id="result">${result}</p>
			</div>
			<table>
			<tr>
				<td>学号</td>
				<td><input type="text" id="student_id" name="student_id" /><br>
				<span class='state1'></span></td>	
			</tr>
			<tr>
				<td>姓名</td>
				<td><input type="text" id="name" name="name" class="required"/><br>
                      <span class='state1'></span></td>	
			</tr>
			<tr>
				<td>学院</td>
				<td><input type="text" id="name" name="academy" class="required"/><br>
                      <span class='state1'></span></td>	
			</tr>
			<tr>
				<td>班级</td>
				<td><input type="text"  name="banji" class="required"/><br>
                      <span class='state1'></span></td>	
			</tr>
			<tr>
				<td>手机号</td>
				<td><input type="text"  name="phone" /><br>
                     <span class='state1'></span></td>	
			</tr>
			<tr>
				<td>邮箱</td>
				<td><input type="text"  name="email" /><br>
                     <span class='state1'></span></td>	
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="text"  name="password" /><br>
                     <span class='state1'></span></td>	
			</tr>
			<tr>
				<td>确认密码</td>
				<td><input type="password" id="confirm_password" name="confirm_password" type="password"><br>
                 <span class='state1'></span></td>	
			</tr>														
				</table>
				<input type="submit" value="注册">
				</form>
			  <div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--signip end here-->					 
</body>
</html>