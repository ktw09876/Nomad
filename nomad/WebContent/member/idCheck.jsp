<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="mb" class="ark.member.MemberDAO" />
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	boolean result = mb.checkId(id);
%>
<html>
<head>
<title>ID 중복체크</title>
<link href="..imgs/favicon.ico" rel="shortcut icon">
<link rel="stylesheet" href="../bootstrap/bootstrap.min.css">
<style>
	.check-wrap { width:200px; margin:30px auto; text-align:center; }
	.check-wrap a { display:block; width:60px; margin:30px auto; }
</style>
</head>
<body bgcolor="#FFFFCC">
	<div class="check-wrap">
		<strong><%=id%></strong>
		<%
			if (result) {
				out.println("는 이미 존재합니다.");
			}else {
				out.println("는 사용 가능 합니다.");
			}
		%>
		
		<a href="#" onClick="self.close( )" class="btn btn-success">닫기</a>
	</div>
</body>
</html>