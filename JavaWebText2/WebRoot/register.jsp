<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" import="java.sql.*"%>
<jsp:useBean class="javabean.userConn" id="jdbc" />
<html>
<head>
<title>注册信息处理</title>
</head>
<body>

	<%
		//设置成UTF-8编码以防乱码
		request.setCharacterEncoding("UTF-8");
		//获取表单信息
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String truename = request.getParameter("truename");
		String sex = request.getParameter("sex");
		String tele = request.getParameter("tele");
		//首先检查填写的用户名是否在数据库中已经存在
		String sql = "select * from t_user where user_username='" + username + "'";
		ResultSet rs = jdbc.executeQuery(sql);
		if (rs != null && rs.next()) {
	%>
	<center>
		<h3>
			该用户名已经被占用，请<a href="javaScript:history.back()">返回</a>!
		</h3>
	</center>
	<%
		jdbc.close();
		} else {
			sql = "insert into t_user(user_name,user_sex,user_tele,password,user_username)values('" + truename
					+ "','" + sex + "','" + tele + "','" + password + "','" + username + "');";
			int result = jdbc.executeUpdate(sql);
			//判断插入操作是否成功
			if (result == 1) {
	%>
	<center>
		<h2>注册成功！</h2>
		<a href="userList.jsp">查看您的注册信息</a>
		<a href="wonderfulLogin.jsp">返回登录页</a>
	</center>
	<%
		} else {
	%>
	<center>
		<h3>
			注册失败!请重新<a href="register.html">注册
		</h3>
	</center>
	<%
		}
			jdbc.close();
		}
	%>
</body>
</html>