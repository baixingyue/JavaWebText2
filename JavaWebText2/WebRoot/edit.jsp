<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" import="java.sql.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>修改商品信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>

	<jsp:useBean id="db" class="javabean.userConn" scope="page" />
	<%
		request.setCharacterEncoding("utf-8");
		String Strid = request.getParameter("id");
		int id = Integer.valueOf(Strid);
		ResultSet rs = db.executeQuery(
				"select product_id,product_name,product_type,product_info,product_price from t_product where product_id='"
						+ id + "';");
		rs.next();
	%>
	<form action="update.jsp" method="post">
		<table width="50%" border="1" align="center">
			<CAPTION>修改商品信息</CAPTION>
			<tr>
				<th width="30%">商品名：</th>
				<td width="70%"><input name="productname" type="text"
					value="<%=rs.getString("product_name")%>"></td>
			</tr>
			<tr>
				<th width="30%">商品类型：</th>
				<td width="70%"><input name="producttype" type="text"
					value="<%=rs.getString("product_type")%>"></td>
			</tr>
			<tr>
				<th width="30%">商品描述：</th>
				<td width="70%"><input name="productinfo" type="text"
					value="<%=rs.getString("product_info")%>"></td>
			</tr>
			<tr>
				<th width="30%">商品价格：</th>
				<td width="70%"><input name="productprice" type="text"
					value="<%=rs.getString("product_price")%>">元</td>
			</tr>
			<tr>
				<th colspan="2"><input type="hidden" name="id" value="<%=id%>">
					<input type="submit" value="修改"> <input type="reset"
					value="重置"></th>
			</tr>
		</table>
	</form>
</body>
</html>
