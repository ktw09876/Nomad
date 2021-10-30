<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:useBean id="bean" class="ark.board.BoardVO" scope="session"/>

<%
	String nowPage = request.getParameter("nowPage");
	String subject = bean.getSubject( );
	String content = bean.getContent( );
%>

<jsp:include page="../include/header.jsp" flush="false"/>

	<h2 class="text-primary">Board <span class="t-darkBlue">REPLY</span></h2>
	
	<form name="post" method="post" action="replyProc.jsp" >
		<table class="table b-table">
			<tr><td><input type="text" name="name" placeholder="이 름" class="form-control" autofocus></td></tr>
			<tr><td><input type="text" name="subject" size="50" value="답변 : <%=subject%>" class="form-control"></td></tr>
			<tr><td><textarea name="content" rows="12" cols="50" placeholder="내 용" class="form-control"><%=content %></textarea></td></tr>
			<tr><td><input type="password" name="pass" placeholder="비밀번호" class="form-control"></td></tr>
		</table>
		<div class="h30"></div>
		<table>
			<tr> 
				<td>
					<input type="submit" value="답변등록" class="btn btn-success b-btn">
					<input type="reset" value="다시쓰기" class="btn btn-warning b-btn">
					<input type="button" value="뒤로" onClick="history.back( )" class="btn btn-default b-btn btn-last">
				</td>
			</tr>
		</table>
		<input type="hidden" name="ip" value="<%=request.getRemoteAddr( )%>" >
		<input type="hidden" name="nowPage" value="<%=nowPage%>">
		<input type="hidden" name="ref" value="<%=bean.getRef( )%>">
		<input type="hidden" name="pos" value="<%=bean.getPos( )%>">
		<input type="hidden" name="depth" value="<%=bean.getDepth( )%>">
	</form>

<jsp:include page="../include/footer.jsp" flush="false"/>	
