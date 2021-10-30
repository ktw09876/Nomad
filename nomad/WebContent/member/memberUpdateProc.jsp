<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="mb" class="ark.member.MemberDAO"/>
<jsp:useBean id="mBean" class="ark.member.MemberBean"/>
<jsp:setProperty  name="mBean" property="*"/>

<%
	boolean result = mb.updateMember(mBean);
	if(result){
%>
	<script>
		alert("회원정보 수정 하였습니다.");
		location.href="login.jsp";
	</script>	
<%
	}else{
%>
	<script>
		alert("회원정보 수정에 실패 하였습니다.");
		history.back( );
	</script>
<%
	}
%>