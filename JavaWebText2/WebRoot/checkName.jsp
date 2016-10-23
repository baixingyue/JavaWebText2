<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" import="java.sql.*"%>
<jsp:useBean class="javabean.userConn" id="jdbc"/>
<html>
<head>
<title>检查用户名是否存在</title>
</head>
<body>

<% String username=request.getParameter("username");
   String sql="select * from t_user where user_username='"+username+"'";
   ResultSet rs=jdbc.executeQuery(sql);
   if(rs!=null&&rs.next())
   out.print("该用户名已经被占用！");
   else
   out.print("该用户名可用");
   jdbc.close();
 %>
</body>
</html>
