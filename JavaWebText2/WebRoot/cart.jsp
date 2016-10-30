<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<link rel="stylesheet" type="text/css" href="css.css" />
<title>iCart购物车</title>
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
<li><a href="account.jsp" class="account">我的账户</a></li>
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
        <input type="text" name="filter_name" value="Search"  onkeydown="this.style.color = '#888';" />
      </div>

</div>

<div class="header">
<div class="logo_img"><a href="index.html"><img alt="Site Name" src="images/logo.png"></a></div></div>

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




<div style="width:1000px;margin: 0 auto;margin-top:10px;">
<div class="linktree">
        <a href="produceIndex.jsp">主页</a>
         &raquo; <a href="cart.jsp">购物车</a>
    </div>
<h1 style="margin-top:-10px;">购物车&nbsp;</h1>

<br>
     <form action="#" method="post" id="basket">
      <div class="cart-info">
        <table>
          <thead>
            <tr>
              <td class="remove">移除</td>
              <td class="image">图片</td>
              <td class="name">商品名</td>
              <td class="model">类型</td>
              <td class="quantity">优惠</td>
              <td class="price">价格</td>
              <td class="total">总价</td>
            </tr>
          </thead>
          <tbody>
                        <tr>
              <td class="remove"><input type="checkbox" name="remove[]" value="41" /></td>
              <td class="image"><a href="#"><img src="images/imac_1-80x80.jpg" alt="iMac" title="iMac" /></a>
                </td>
              <td class="name"><a href="#">iMac</a>
              <div>
              </div>
                </td>
              <td class="model">Product 14</td>
              <td class="quantity"><input type="text" name="quantity[41]" value="2" size="3" /></td>
              <td class="price">$100.00</td>
              <td class="total">$200.00</td>
            </tr>
                        <tr>
              <td class="remove"><input type="checkbox" name="remove[]" value="40" /></td>
              <td class="image"><a href="#"><img src="images/20070919010738-99-80x80.jpg" alt="iPhone" title="iPhone" /></a>
                </td>
              <td class="name"><a href="#">iPhone</a>
              <div>
              </div>
                </td>
              <td class="model">product 11</td>
              <td class="quantity"><input type="text" name="quantity[40]" value="1" size="3" /></td>
              <td class="price">$101.00</td>
              <td class="total">$101.00</td>
            </tr>
                        <tr>
              <td class="remove"><input type="checkbox" name="remove[]" value="36" /></td>
              <td class="image"><a href="#"><img src="images/ipod_nano_1-80x80.jpg" alt="iPod Nano" title="iPod Nano" /></a>
                </td>
              <td class="name"><a href="#">iPod Nano</a>
              <div>
              </div>
                </td>
              <td class="model">Product 9</td>
              <td class="quantity"><input type="text" name="quantity[36]" value="1" size="3" /></td>
              <td class="price">$100.00</td>
              <td class="total">$100.00</td>
            </tr>
                                  </tbody>
        </table>
      </div>
    </form>

    <div class="buttons">
      <div class="left"><a class="button"><span>更新</span></a></div>
      <div class="right"><a href="#" class="button"><span>检查</span></a></div>
      <div class="center"><a href="#" class="button" style="width:120px;"><span>继续购买</span></a></div>
    </div>

</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
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
</div></div>

</body>
</html>