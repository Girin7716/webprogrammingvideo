<%@page import="java.sql.*"%>
<%-- JDBC API ����Ʈ �۾� --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUR-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/tutorial?serverTimezone=UTC";
		String id = "root";
		String pwd = "samsung159";

		try {
			//[1] JDBC ����̹� �ε�
			Class.forName(driverName);
		} catch (ClassNotFoundException e) {
			out.println("Where is your mysql jdbc driver?");
			e.printStackTrace();
			return;
		}
		out.println("mysql jdbc Driver registered!!");

		//[2]����Ÿ���̽� ���� 
		Connection conn = DriverManager.getConnection(url, id, pwd);
		out.println("DB���Ἲ��!!");

		//[3]����Ÿ���̽� ���� ����
		conn.close();
	%>
</body>
</html>