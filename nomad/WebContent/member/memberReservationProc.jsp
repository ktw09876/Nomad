<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="mb" class="ark.member.MemberDAO"/>
<jsp:useBean id="bean" class="ark.member.MemberBean"/>
<jsp:setProperty  name="bean" property="*"/>

<%
	boolean resultInsertReservation = mb.insertReservation(bean);
	String mainPageUrl = "../index.jsp";
	String reserveSuccessMessage = "예약이 완료되었습니다.";
	String reserveFailedMessage = "예약이 실패하였습니다.";
	String reserveFailedMessageSubject = "수강과목을 선택해주세요.";
	String reserveFailedMessageTime = "수강시간을 선택해주세요.";
	String reserveFailedMessageMutual = "수강과목과 수강시간을 선택해주세요.";
	
	
	if ( resultInsertReservation ) {
%>
		<script>
			alert("<%=reserveSuccessMessage%>");
			location.href="<%=mainPageUrl%>";
		</script>
<%
	} else if ( bean.getCoffeeClassSubject() == null && bean.getCoffeeClassTime() != null ) {
%>
		<script>
			alert("<%=reserveFailedMessageSubject%>");
			history.back();
		</script>
<%
	} else if ( bean.getCoffeeClassSubject() != null && bean.getCoffeeClassTime() == null ) {
%>
		<script>
			alert("<%=reserveFailedMessageTime%>");
			history.back();
		</script>
<%
	} else if ( bean.getCoffeeClassSubject() == null && bean.getCoffeeClassTime() == null ) {
%>
		<script>
			alert("<%=reserveFailedMessageMutual%>");
			history.back();
		</script>
<%	
	} else {
%>
		<script>
			alert("<%=reserveFailedMessage%>");
			history.back();
		</script>
<%
		
	}

%>


