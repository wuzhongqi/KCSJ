<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="com.opensymphony.xwork2.ActionContext" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
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
					 <!-- script-for-menu -->
		 <script>					
					$("span.menu").click(function(){
						$(".top-menu ul").slideToggle("slow" , function(){
						});
					});
		 </script>
		 <!-- script-for-menu -->

					</div>
				</div>
				</div>
				<div class="banner">
					<div class="container">
						<div class="banner-grids">
						<div class="col-md-6 left-grid">
							<img src="images/m2.jpg" class="img-responsive" alt="/">
						</div>
						<div class="col-md-6 right-grid slider">
						<div class="callbacks_container">
			  		<ul class="rslides" id="slider">
					 <li>	 
					 <h1>教室使用管理系统</h1>         
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi faucibus augue vitae est volutpat eleifend.</p>
					<a href="#" class="button  hvr-shutter-in-horizontal">more info</a>					 
					</li>
				 	<li>	          
					<h1>SOi ut feugiat nisi</h1>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi faucibus augue vitae est volutpat eleifend.</p>
					<a href="#" class="button  hvr-shutter-in-horizontal">more info</a>
				 	</li>
				 	<li>	          
					<h1>iOS Mobile designs</h1>				
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi faucibus augue vitae est volutpat eleifend.</p>
					<a href="#" class="button hvr-shutter-in-horizontal">more info</a>			 	
					</li>
			  </ul>
		  </div>
		  </div>
		  <div class="clearfix"> </div>
		</div>
	</div>
	</div>
			
			<div class="content">
				<div class="service-section" id="services">
					<div class="container">
						<h3> our services</h3>
						<div class="service-grids">
							<div class="col-md-4 service-grid">
								<img src="images/icon1.png">
								<h4>教室审批</h4>
								<p>集体活动</p>
								<a href="#" class="button hvr-shutter-in-horizontal">申请</a>
							</div>
							<div class="col-md-4 service-grid">
								<img src="images/icon2.png">
								<h4>空教室查询</h4>
								<p>个人自习</p>
								<a href="#" class="button hvr-shutter-in-horizontal">查询</a>
							</div>
							<div class="col-md-4 service-grid">
								<img src="images/icon3.png">
								<h4>教室使用情况</h4>
								<p>查询每个教室的具体使用情况</p>
								<a href="#" class="button hvr-shutter-in-horizontal">查询</a>
							</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="about-section" id="about" >
					<div class="container">
						<h3>about</h3>
						<div class="about-grids">
							<div class="col-md-6 left-about">
								<div class="about-grid1">
									<h4>Tempees.com</h4>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi faucibus augue vitae est volutpat eleifend. Donec lobortis tellus quis nulla varius nec sagittis dui vestibulum. Mauris volutpat tellus id est suscipit placerat. Integer ut feugiat nisi. Etiam dictum condimentum mauris, nec pellentesque augue dignissim ut. Integer commodo vulputate ipsum at vehicula. Fusce sit amet metus quam. In hac habitasse platea dictumst.</p>
									</div>
									<div class="about-grid2">
										<h4>skills</h4>
										<section id="skills">
					<progress value="90" max="100"> </progress><span>HTML/HTML5</span>
					<progress value="95" max="100"> </progress><span>CSS/CSS3</span>
					<progress value="85" max="100"> </progress><span>Photoshop / IlLustrator</span>
					<progress value="80" max="100"> </progress><span>Mobile design / Responsive design</span>
					</section>
				
								</div>
						    </div>
						   <div class="col-md-6 right-about">
							  <div class="google-map">
							  	<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3021.0814617966994!2d-73.96467908332265!3d40.782223218920294!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2589a018531e3%3A0xb9df1f7387a94119!2sCentral+Park!5e0!3m2!1sen!2sin!4v1420805667126"></iframe>
								</div>
								<div class="contact">
									<form>
								<input type="text" class="text" value="Name " onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Name ';}">
								 <input type="text" class="text" value="phone " onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'phone ';}">
								 <input type="text" class="text" value="Email " onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Email ';}">
									<div class="contact1">
									<textarea value="Message" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Message';}">Message </textarea>
					 					<input type="submit" value="send">
								</form>		
								</div>
							</div>
						</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="footer-section">
					<div class="container">
						<div class="footer-top">
					<p>Copyright &copy; 2015.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
					</div>
					<script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>


					</div>
					</div>
</body>
</html>