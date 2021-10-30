<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ark.board.BoardVO"%>

<jsp:useBean id="dao" class="ark.board.BoardDAO" />

<%
	request.setCharacterEncoding("UTF-8");
	String nowPage = request.getParameter("nowPage");
	int num = Integer.parseInt(request.getParameter("num"));
	
	if(request.getParameter("pass") != null) {
		String inPass = request.getParameter("pass");
		BoardVO bean = (BoardVO) session.getAttribute("bean");
		String dbPass = bean.getPass( );
		
		if(inPass.equals(dbPass)) {
			dao.deleteBoard(num);
			String url = "list.jsp?nowPage=" + nowPage;
			response.sendRedirect(url);
		}else {
%>
<script>
	alert("입력하신 비밀번호가 아닙니다.");
	history.back( );
</script>
<%
		}
	}else {
%>
<script>
	function check( ) {
		if (document.delFrm.pass.value == "") {
			alert("패스워드를 입력하세요.");
			document.delFrm.pass.focus( );
			return false;
		}
		document.delFrm.submit( );
	}
</script>

<jsp:include page="../include/header.jsp" flush="false"/>

<body>
	<h2 class="text-primary">Board <span class="t-darkBlue">DELETE</span></h2>
	
	<table class="table b-table"><tr><td>사용자의 비밀번호를 입력해주세요.</td></tr></table>
	<form name="delFrm" method="post" action="delete.jsp">
		<table class="table b-table">
			<tr><td><input type="password" name="pass" placeholder="비밀번호" class="form-control"></td></tr>						
		</table>
		<div class="h30"></div>
		<table>
			<tr>
				<td>
					<input type="button" value="삭 제" onClick="check( )" class="btn btn-danger b-btn"> 
					<input type="reset" value="다시쓰기" class="btn btn-warning b-btn">
					<input type="button" value="뒤 로" onClick="history.go(-1)" class="btn btn-default btn-last b-btn">
				</td>
			</tr>
		</table>
		<input type="hidden" name="nowPage" value="<%=nowPage%>">
		<input type="hidden" name="num" value="<%=num%>">
	</form>
<%
	} //else:end
%>
</body>
</html>