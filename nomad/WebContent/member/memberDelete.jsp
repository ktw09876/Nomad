<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="ark.member.MemberBean"%>

<jsp:useBean id="mb" class="ark.member.MemberDAO" />

<%
	String id = (String)session.getAttribute("idKey");
	boolean result = mb.deleteMember(id);	
	if(result){
		session.invalidate( );
%>
	<script>
		alert("회원탈퇴 처리했습니다.");
		location.href="login.jsp";
	</script>
<%
	}else{
%>
	<script>
		alert("회원탈퇴 처리에 실패했습니다.");
		history.back( );
	</script>
<%
	}
%>