<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="dao.memberDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��� Ȯ��</title>
</head>
<body>
	<%
		request.setCharacterEncoding("euc-kr");

		String id = request.getParameter("inputid");
		String pw = request.getParameter("inputpassword");
		System.out.println(id + pw);

		memberDAO dao = memberDAO.getInstance();
		int check = dao.signincheck(id, pw);

		if (check == 1) { // �α��� ����
			System.out.println("login success!");
			session.setAttribute("nowid",id);
			response.sendRedirect("main.jsp");//////////////index.html -> main.jsp�� �ٲ�
		} else if (check == 0) { // ��й�ȣ Ʋ��%>
			<script>
				alert("��й�ȣ Ʋ��");
				history.go(-1);
			</script>
		<%
			System.out.println("password error!");
			//response.sendRedirect("signin.jsp");
		} else { // ���̵� ����%>
			<script>
				alert("���̵� ����");
				history.go(-1);
			</script>
			<%
			System.out.println("no such id!");		
			response.sendRedirect("signin.jsp");
		}
	%>
</body>
</html>