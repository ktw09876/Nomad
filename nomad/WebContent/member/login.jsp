<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("idKey");
%>

<script>
	function loginCheck( ) {
		if (document.loginFrm.id.value == "") {
			alert("아이디를 입력해 주세요.");
			document.loginFrm.id.focus( );
			return;
		}
		
		if (document.loginFrm.pass.value == "") {
			alert("비밀번호를 입력해 주세요.");
			document.loginFrm.pass.focus( );
			return;
		}
		document.loginFrm.submit( );
	}
</script>

<jsp:include page="../include/header.jsp" flush="false"/>

	<h2 class="member">Members <span class="text-title">Log-In</span></h2>
<%if(id != null) {%>
	<p class="welcome"><strong><span class="glyphicon glyphicon-user"></span>&nbsp; <%=id%></strong>님 환영 합니다.</p>
	<ul class="member">
		<li>
			<a href="logout.jsp" class="btn btn-warning m-btn"> <span class="glyphicon glyphicon-log-out"></span>&nbsp;&nbsp; 로그아웃</a>
			<a href="memberUpdate.jsp" class="btn btn-info m-btn"> <span class="glyphicon glyphicon-edit"></span>&nbsp;&nbsp; 정보수정</a>
			<a href="memberDelete.jsp" class="btn btn-info m-btn"> <span class="glyphicon glyphicon-new-window"></span>&nbsp;&nbsp; 회원탈퇴</a>
		</li>
	</ul>
<%}else {%>
	<form name="loginFrm" method="post" action="loginProc.jsp">
		<ul class="member">
			<li><input type="text" name="id" placeholder="아이디" class="form-control" autofocus required></li>
			<li><input type="password" name="pass" placeholder="비밀번호" class="form-control" required></li>
			<li>
				<button onclick="loginCheck( )" class="btn btn-success m-btn"><span class="glyphicon glyphicon glyphicon-log-in"></span>&nbsp; 로 그 인</button>
				<a href="member.jsp" class="btn btn-info m-btn"><span class="glyphicon glyphicon-user"></span>&nbsp; 회원가입</a>
			</li>
		</ul>
	</form>
<%}%>
	<div class="h200"></div>
	
<jsp:include page="../include/footer.jsp" flush="false"/>