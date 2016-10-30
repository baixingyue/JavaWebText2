<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" import="java.sql.*"%>
<jsp:useBean class="javabean.userConn" id="jdbc" />
<html>
<head>
<title>用户信息列表</title>
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
		<h2>用户信息表</h2>
		<table border bordercolor="blue">
			<th>编号
			<th>用户名
			<th>密码
			<th>姓名
			<th>性别
			<th>电话
			</tr>
			<%
				//获取表单信息
				String sql = "select user_id,user_username,password,user_name,user_sex,user_tele from t_user ;";
				ResultSet rs = jdbc.executeQuery(sql);
				while (rs.next()) {
			%>
			<tr>
			  
				<td align="center"><%=rs.getString("user_id")%>
				<td align="center"><%=rs.getString("user_username")%>
				<td align="center"><%=rs.getString("password")%>
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