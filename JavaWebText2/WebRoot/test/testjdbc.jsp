<%@ page import="java.sql.*"%>
<body>
	<%
		try {
			Class.forName("com.mysql.jdbc.Driver"); // 加载数据库驱动，注册到驱动管理器
			String url = "jdbc:mysql://localhost:3306/baixingyue"; // 数据库连接字符串
			String username = "root"; // 数据库用户名
			String password = "501109zhy"; // 数据库密码
			Connection conn = DriverManager.getConnection(url, username, password);
			// 创建Connection连接
			// 判断数据库连接是否为空
			if (conn != null) {
				out.println("数据库连接成功！"); // 输出连接信息
				conn.close(); // 关闭数据库连接
			} else {
				out.println("数据库连接失败！"); // 输出连接信息
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			out.println("1数据库连接失败！");
		} catch (SQLException e) {
			e.printStackTrace();
			out.println("数据库连接失败！");
		}
	%>
</body>