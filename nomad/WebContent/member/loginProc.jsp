<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="mb" class="ark.member.MemberDAO" />
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String url = "login.jsp";
	String msg = "로그인에 실패 하였습니다.";
	  
	boolean result = mb.loginMember(id, pass);
	if(result) {
		session.setAttribute("idKey",id);
		msg = "로그인에 성공 하였습니다.";
	}
%>
<script>
	alert("<%=msg%>");	
	location.href="<%=url%>";
</script>