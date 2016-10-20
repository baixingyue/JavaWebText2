<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'testConn.jsp' starting page</title>
    
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
    This is my JSP page. <br>
    <P>数据库添加记录前的数据记录是：
 <% String name,sex;
    Connection con;
    Statement sql; 
    ResultSet rs;
    try{
    	Class.forName("com.mysql.jdbc.Driver");
       }
    catch(ClassNotFoundException e){out.print("error1");}
    try { con=DriverManager.getConnection("jdbc:mysql://localhost:3306/baixingyue?user=root&password=501109zhy");
         sql=con.createStatement();
         rs=sql.executeQuery("SELECT  user_name,user_sex FROM t_user where user_username='txz' and password='123456';");
         out.print("<Table Border>");
         out.print("<TR>");
            out.print("<TH width=100>"+"姓名");
            out.print("<TH width=100>"+"性別");
         out.print("</TR>");
       while(rs.next())
       { out.print("<TR>");
             name=rs.getString(1); 
             out.print("<TD >"+name+"</TD>"); 
             sex=rs.getString(2); 
             out.print("<TD >"+sex+"</TD>");
        out.print("</TR>") ; 
        }
        out.print("</Table>");
        con.close();
     }
   catch(SQLException e1) {out.print("error");}
 %>
  </body>
</html>
