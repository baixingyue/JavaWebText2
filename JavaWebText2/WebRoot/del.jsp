<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"  import="java.sql.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>删除商品</title>
    
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
  int i=db.executeUpdate("delete from t_product where product_id='"+id+"';");
   if(i==1)
   {
   out.println("<script language='javaScript'>alert('删除成功确定跳转到主页！');</script>");
   request.getRequestDispatcher("produceManager.jsp").forward(request, response);
   }
   else{
   out.println("<script language='javaScript'>alert('删除失败，单击确定返回主页！');</script>");
  }
  db.close();
 
 %>
  </body>
</html>
