<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en" dir="ltr">
<head>
<link rel="stylesheet" type="text/css" href="css.css" />
<title>iCart 在线购物</title>
</head>
<body>
	<%
		String loginUser = "";
		if (session.getAttribute("loginUser") != null) {
			loginUser = session.getAttribute("loginUser").toString();
	
		} else {

			response.sendRedirect("noLogin.jsp");
		}
	%>
<div class="menu">
<ul>
<li style="width:0px;"><a></a></li>
<li class="active"><a href="produceIndex.jsp" class="home">主页</a></li>
<li><a href="browse_product.jsp" class="wishlist">查看全部商品</a></li>
<li><a href="wishlist.jsp" class="wishlist">心愿列表 (0)</a></li>
<li><a href="account.html" class="account">我的账户</a></li>
<li><a href="cart.jsp" class="cart">购物车</a></li>
<li><a class="checkout">Checkout</a></li>
<li style="float:right;"><a href="wonderfulLogin.jsp" class="login">注销账户</a></li>
<li style="float:right;"><a href="register.html" class="register">注册新账户</a></li>
</ul>
</div>
<div style="width:1000px;margin:0 auto;">
<div id="cart">
<div class="heading">
<a style="padding:8px;margin-left:-14px;">购物车</a><span style="font-size:14px;color:#fff;">&raquo;</span>
<a><span id="cart_total">0 item(s) - $0.00</span></a></div>
<div class="content"></div>
</div>  
<div id="search">
<div class="button-search"></div>
<input type="text" name="filter_name" value="Search" onClick="this.value = '';" onKeyDown="this.style.color = '#888';" />
</div>
</div>
<div class="header">
<div class="logo_img"><a href="default.htm"><img alt="Site Name" src="images/logo.png"></a></div></div>
<div id="menu">
<ul>  
<li><a href="categories.html">台式机</a>
<div>        
<ul>	
<li><a href="default.htm">PC (0)</a></li>
<li><a href="default.htm">iMac (1)</a></li>
</ul>
</div>
</li>
<li><a href="categories.html">笔记本 &amp; Notebooks</a>   	
<div>
<ul>	
<li><a href="default.htm">Macs (0)</a></li>
<li><a href="default.htm">Windows (0)</a></li>
</ul>
</div>
</li>
<li><a href="categories.html">组件</a>
<div>
<ul>	
<li><a href="default.htm">鼠标或键盘 (0)</a></li>
<li><a href="default.htm">主机(2)</a></li>
<li><a href="default.htm">显示器 (0)</a></li>
<li><a href="default.htm">扫描仪 (0)</a></li>
<li><a href="default.htm">摄像头 (0)</a></li>
</ul>
</div>
</li>
<li><a href="categories.html">软件</a></li>
<li><a href="categories.html">手机 &amp; PDAs</a></li>
<li><a href="categories.html">相机</a></li>
</ul>
</div>
<div id="wrapper">
<div class="slider-wrapper theme-orman">
<div class="ribbon"></div>
<div id="slider" class="nivoSlider" style="border: 1px solid #444;box-shadow: 0 0 5px 0 #080808;">
<a href="default.htm"><img src="images/banner.jpg" alt="" title="This is an example of a caption" /></a>
<a href="default.htm"><img src="images/banner2.jpg" alt="" title="This is an example of a caption" /></a>
</div>
<br>
<div class="controlNav_box"></div>
</div>
</div>
<script type="text/javascript" src="slider/scripts/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="slider/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
</script>
<div class="container">
<div class="text_box_left">热卖</div>
<div class="box-product">
<div>
<div class="showhim">
<div class="image">
<a href="product.html"><img src="images/product_holder.jpg" alt="iMac" />
<div class="showme">
<div class="description_featured" style="min-height:110px;">	
<p>Just when you thought iMac had everything, now there is even more. More powerful Intel Core 2 Duo processors. And more memory standard. ...</p>
</div>
</div>
</a>
<div class="name"><a href="#">iMac</a></div>
<div class="priced">
<ul>
<li>$119.50</li>
<li><a href="#">加入购物车</a></li>
</ul>
 </div>
<div style="margin-top:24px;"></div>
</div>	
<div class="showme">	        	
</div></div>           
</div>            
<div>
<div class="showhim">
<div class="image">
<a href="product.html"><img src="images/product_holder.jpg" alt="iPhone" />
<div class="showme">
<div class="description_featured" style="min-height:110px;">	
<p>iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favo...</p>
</div>
</div>
</a>
<div class="name"><a href="#">iPhone</a></div>
<div class="priced">
<ul>
<li>$120.68</li>
<li><a href="#">加入购物车</a></li>
</ul>
</div>
<div style="margin-top:24px;"></div>
</div>	
</div>      
</div>
<div>
<div class="copyrights">收集 <a href="https://github.com/baixingyue"  title="collect">github</a></div>
<div class="showhim">
<div class="image">
<a href="product.html"><img src="images/product_holder.jpg" alt="iPod Classic" />
<div class="showme">
<div class="description_featured" style="min-height:110px;">	
<p>More room to move.With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy...</p>
</div>
</div>
</a>
<div class="name"><a href="#">iPod Classic</a></div>
<div class="priced">
<ul>
<li>$119.50</li>
<li><a href="#">加入购物车</a></li>
</ul>
</div>
<div style="margin-top:24px;"></div>
</div>	
<div class="showme">	        	
</div>
</div>
</div>
<div>
<div class="showhim">
<div class="image">
<a href="product.html"><img src="images/product_holder.jpg" alt="iPod Nano" />
<div class="showme">
<div class="description_featured" style="min-height:110px;">	
<p>Video in your pocket. Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy...</p>
</div>
</div>
</a>
<div class="name"><a href="#">iPod Nano</a></div>
<div class="priced">
<ul>
<li>$119.50</li>
<li><a href="#">加入购物车</a></li>
</ul>
</div>
<div style="margin-top:24px;"></div>
</div>	
<div class="showme">	        	
</div>
</div>
</div>
</div>
</div>
<br>
<div class="icart-footer">
<div class="icart-footer-top">
	<div style="width:1000px; margin:0 auto;">	
	</div>
</div>
<div class="icart-footer-container">
	<div class="column_footer" style="width:350px;">
		<h3>关于我们</h3>
<div class="footer_description">
		本网站是icart在线购物商城，主营各种电子设备，外设，图书等。详情请关注：https://github.com/baixingyue
</div>
	</div>
	
	<div class="column_footer">
		<h3>用户服务</h3>
		<ul>
		<li><a href="#">关于我们</a></li>
      		<li><a href="#">更多信息</a></li>
      		<li><a href="#">隐私权政策</a></li>
      		<li><a href="https://github.com/baixingyue">联系我们</a></li>
      		
		</ul>
	</div>
	
	<div class="column_footer" style="width:150px;">
		<h3>额外</h3>
		<ul>
      		<li><a href="#">品牌</a></li>
      		<li><a href="#">礼品券 </a></li>
      		<li><a href="#">分支机构 </a></li>
      		<li><a href="#">特价 </a></li>
		</ul>
	</div>	
	<div class="column_footer" style="width:150px;">
		<h3>我的账户</h3>
		<ul>
      		<li><a href="#">我的账户</a></li>
      		<li><a href="#">历史订单</a></li>
      		<li><a href="#">心愿列表</a></li>
      		<li><a href="#">通讯方式</a></li>
		</ul>
</div>
		
	<div class="column_footer" style="margin-right:0px;">
		<h3>Social</h3>
		<ul class="social">
			<li class="twitter"><a href="www.twitter.com">Twitter Username</a></li>
			<li class="facebook"><a href="www.facebook.com ">Facebook</a></li>
			<li class="rss"><a href="#">RSS Feed</a></li>
		</ul>				
	</div>		
	<div class="clearfix"></div>
	</div>		
	<div class="icart-footer-bottom">
		<div style="width:1000px; margin:0 auto;">				
		<div class="icart-logo-footer"><a href="index.php"><img src="images/logo-footer.png" alt="Footer Logo"></a></div>	
			<ul>
			<li style="float:right;padding-top:10px;list-style:none;">violet制作，详情请关注我的github：<a href="https://github.com/baixingyue" class="wishlist">https://github.com/baixingyue</a></li>
			</ul>		
		<div class="clearfix"></div>
		</div>

</div>
</div>

</body>
</html>