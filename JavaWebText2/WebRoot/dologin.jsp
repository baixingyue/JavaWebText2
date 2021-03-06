<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" import="java.sql.*" %>

<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="loginUser" class="javabean.loginUsers" scope="page" />
<jsp:useBean id="userConn" class="javabean.userConn" scope="page" />
<jsp:setProperty property="*" name="loginUser" />

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

	//如果用户和密码都如果用户名密码不为空

	if (session.getAttribute("loginUser") != null) {
		//如果用户和密码都等于admin,则登录成功
		if (userConn.usersAdminLogin(loginUser)) {
			session.setAttribute("loginUser", loginUser.getUsername());
			request.getRequestDispatcher("login_success.jsp").forward(request, response);

		}
		//如果用户是普通用户则跳转到普通用户界面
		else if (userConn.usersLogin(loginUser)) {
			session.setAttribute("loginUser", loginUser.getUsername());
			request.getRequestDispatcher("userLogin_success.jsp").forward(request, response);
		}
		//既不是管理员又不是普通用户
		else {
			session.setAttribute("loginUser", loginUser.getUsername());
			response.sendRedirect("login_failure.jsp");
		}

	}
	//既不是管理员又不是普通用户
	else {
		session.setAttribute("loginUser", loginUser.getUsername());
		response.sendRedirect("login_failure.jsp");
	}
%>
<%
	out.print(loginUser.getUsername() + loginUser.getPassword());
%>
