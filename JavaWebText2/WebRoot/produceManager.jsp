<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>商品管理系统</title>

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
	<%
		String loginUser = "";
		if (session.getAttribute("loginUser") != null) {
			loginUser = session.getAttribute("loginUser").toString();
			
		} else {

			response.sendRedirect("noLogin.jsp");
		}
	%>
	<center>
		<a href="add.jsp">添加商品信息</a>
	</center>
	<p>
	<table align="center" width="75%" border="1">
		<tr>
			<td>商品名称
			<td>商品类型
			<td>商品描述
			<td>商品价格
			<td>管理 <jsp:useBean id="db" class="javabean.userConn"
					scope="page" /> <%
   String s="select product_id,product_name,product_type,product_info,product_price from t_product;";
   ResultSet rs=db.executeQuery(s);
   while(rs.next()){
   int id=rs.getInt(1);
   out.println("</tr><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getInt("product_price")+"元</td><td><a href='edit.jsp?id="+id+"'>修改</a>&nbsp;<a href='del.jsp?id="+id+"'>删除</a></td></tr>");
    }
    rs.close();
    db.close();
    %>
	</table>
</body>
</html>
