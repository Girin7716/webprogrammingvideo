<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="dao.memberDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������ Ȯ��</title>
	
</head>
<body>
	<%
		request.setCharacterEncoding("euc-kr");

		String name = request.getParameter("Name");
		String id = request.getParameter("ID");
		String pw = request.getParameter("Password");
		String kakao = request.getParameter("Kakao");
		String sex = request.getParameter("Sex");
		String age = request.getParameter("Age");
		String area = request.getParameter("Area");
		String mbti = request.getParameter("MBTI");
		String intro = request.getParameter("Introduce");

		System.out.println(name);
		System.out.println(id);
		System.out.println(pw);
		System.out.println(kakao);
		System.out.println(sex);
		System.out.println(age);
		System.out.println(area);
		System.out.println(mbti);
		System.out.println(intro);

		memberDAO dao = memberDAO.getInstance();
		int check = dao.signupcheck(name, id, kakao);

		if (check == 1) { // ȸ������ ����
			System.out.println("signup success!");
			dao.signupinsert(name,id,pw,kakao,sex,age,area,mbti,intro);
			response.sendRedirect("signin.jsp");
		} else if (check == 2) { // id �ߺ� %>
			<script>
				alert("id �ߺ�!");
				history.go(-1);
			</script>
			<%
			System.out.println("id �ߺ�!");
			response.sendRedirect("signup.jsp");
		} else if (check == 3) { // kakao �̸� �ߺ�%>
			<script>
			alert("kakao �ߺ� �ߺ�!");
			history.go(-1);
		</script>
		<%
			System.out.println("kakao �ߺ�");
			response.sendRedirect("signup.jsp");
		} else { // ������ ȸ������ ����%>
			<script>
			alert("ERROR!");
			history.go(-1);
		</script>
		<%
			System.out.println("error!");
			response.sendRedirect("signup.jsp");
		}
	%>
</body>
</html>