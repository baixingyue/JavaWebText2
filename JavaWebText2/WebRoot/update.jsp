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

<title>修改完成</title>

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
		String productname = request.getParameter("productname");
		String producttype = request.getParameter("producttype");
		String productinfo = request.getParameter("productinfo");
		String Strproductprice = request.getParameter("productprice");
		int productprice = Integer.valueOf(Strproductprice);
		String Strid = request.getParameter("id");
		int id = Integer.valueOf(Strid);
		String sql = "update t_product set product_name='" + productname + "',product_type='" + producttype
				+ "',product_info='" + productinfo + "',product_price='" + productprice + "' where product_id='"
				+ id + "';";
		int i = db.executeUpdate(sql);
		if (i == 1) {
			out.println("<script language='javaScript'>alert('修改成功确定跳转到主页！');</script>");
			request.getRequestDispatcher("produceManager.jsp").forward(request, response);
		} else {
			out.println("<script language='javaScript'>alert('修改失败，单击确定返回修改页面');</script>");
			response.setHeader("refresh", "1;url=edit.jsp");
		}
		db.close();
	%>
</body>
</html>
