<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" import="java.sql.*"%>
<jsp:useBean class="javabean.userConn" id="jdbc" />
<html>
<head>
<title>用户信息列表</title>
</head>
<body>
	<center>
		<h2>用户信息列表</h2>
		<table border bordercolor="blue">
			<th>用户名
			<th>姓名
			<th>性别
			<th>电话
			</tr>
			<%
				request.setCharacterEncoding("UTF-8");
				//获取表单信息
				String username = request.getParameter("username");
				String truename = request.getParameter("truename");
				String sex = request.getParameter("sex");
				String tele = request.getParameter("tele");
				String sql = "select user_username,user_name,user_sex,user_tele from t_user where user_username='"+ username + "';";
				ResultSet rs = jdbc.executeQuery(sql);
				while (rs!=null&&rs.next()) {
			%>
			<tr>
				<td align="center"><%=rs.getString("user_username")%>
				<td align="center"><%=rs.getString("user_name")%>
				<td align="center"><%=rs.getString("user_sex")%>
				<td align="center"><%=rs.getString("user_tele")%>
			</tr>
			<%
				}
				jdbc.close();
			%>
		</table>
	</center>
</body>
</html>