<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="bm" class="ark.board.BoardDAO" />
<jsp:useBean id="bean" class="ark.board.BoardVO" scope="session"/>
<jsp:useBean id="upBean" class="ark.board.BoardVO"/>
<jsp:setProperty name="upBean" property="*"/>

<%
	String nowPage = request.getParameter("nowPage");
	String upPass = upBean.getPass( );
	String inPass = bean.getPass( );
	if(upPass.equals(inPass)) {
		bm.updateBoard(upBean);
		String url = "read.jsp?nowPage="+nowPage+"&num="+upBean.getNum( );
		response.sendRedirect(url);
	}else {
%>
	<script>
		alert("입력하신 비밀번호가 아닙니다.");
		history.back( );
	</script>
<%
	}
%>