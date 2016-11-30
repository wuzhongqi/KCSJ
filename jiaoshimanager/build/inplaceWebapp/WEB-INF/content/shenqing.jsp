<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="com.opensymphony.xwork2.ActionContext" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>登录</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Min App Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,800,700,600,300' rel='stylesheet' type='text/css'>
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css'/>
<link href="css/bootstrap-theme.css" rel='stylesheet' type='text/css'/>
<script type="text/javascript" src="jedate/jedate.js"></script>


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
					</div>
					</div>
					</div>
					 <!-- script-for-menu -->
					 <!--login start here-->
<div >
	<div align="center">
		
			
				<h1 style="font-size: 30px"><b>申请</b></h1>
				
			<div class="login-bottom">
				<form method="post" action="apply_add">
				<table>
			<tr>
				<td style="font-size: 20px">用途</td>
				<td><input type="text"  name="activity" />
					
			</tr>
			<tr>
				<td style="font-size: 20px">使用组织</td>
				<td><input type="text"  name="group1" /><br>
                     
			</tr>
			<tr>
				<td style="font-size: 20px">时间</td>
				<td><input name="date" class="datainp" id="datebut" type="text" placeholder="请选择"  readonly><input type="button" onClick="jeDate({dateCell:'#datebut',isTime:true,format:'YYYY-MM-DD hh:mm:ss'})" value="选择"></td>	
                      <span style="color: red;">${result}</span>
			</tr>
														
				</table>
<script type="text/javascript">
    //jeDate.skin('gray');
	jeDate({
		dateCell:"#indate",//isinitVal:true,
		format:"YYYY-MM",
		isTime:false, //isClear:false,
		minDate:"2015-10-19 00:00:00",
		maxDate:"2016-11-8 00:00:00"
	})
    jeDate({
		dateCell:"#dateinfo",
		format:"YYYY年MM月DD日 hh:mm:ss",
		isinitVal:true,
		isTime:true, //isClear:false,
		minDate:"2014-09-19 00:00:00",
		okfun:function(val){alert(val)}
	})

    //alert("YYYY/MM".match(/\w+|d+/g).join("-"))
</script>
				<input style="font-size: 20px"	 type="submit" value="申请">
				</form>
			</div>
		  <div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--login end here-->



</body>
</html>