<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="mb" class="ark.member.MemberDAO"/>
<jsp:useBean id="bean" class="ark.member.MemberBean"/>
<jsp:setProperty  name="bean" property="*"/>

<%
	boolean result = mb.insertMember(bean);
	if(result) {
%>
	<script>
		alert("회원가입을 하였습니다.");
		location.href="login.jsp";
	</script>
<% 
	}else {
%>
	<script>
		alert("회원가입에 실패 하였습니다.");
		history.back( );
	</script>
<%
	} 
%>