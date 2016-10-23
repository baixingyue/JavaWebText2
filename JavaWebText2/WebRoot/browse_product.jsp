<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" import="java.sql.*"%>
<jsp:useBean class="javabean.userConn" id="jdbc" />
<html>
<head>
<title>商品信息列表</title>
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
	<center>
		<h2>商品信息表</h2>
		<table border bordercolor="blue">
			<th>编号
			<th>商品名
			<th>商品类型
			<th>商品描述
			</tr>
			<%
				//获取表单信息
				String sql = "select product_id,product_name,product_type,product_info from t_product ;";
				ResultSet rs = jdbc.executeQuery(sql);
				while (rs.next()) {
			%>
			<tr>
			  
				<td align="center"><%=rs.getString("product_id")%>
				<td align="center"><%=rs.getString("product_name")%>
				<td align="center"><%=rs.getString("product_type")%>
				<td align="center"><%=rs.getString("product_info")%>
			</tr>
			<%
				}
				jdbc.close();
			%>
		</table>
	</center>
</body>
</html>