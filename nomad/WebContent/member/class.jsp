<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("idKey");
	String mainPageUrl = "../index.jsp";
	String notLoginMessage = "로그인 후 이용해주세요.";
	
	if ( id == null ) {
%>
		<script>
			alert("<%=notLoginMessage%>");
			location.href=("<%=mainPageUrl%>");
		</script>
<%
	}
%>

<jsp:include page="../include/header.jsp" flush="false"/>

<h2 class="member">Class <span class="text-title">예약</span></h2>                     	
	<h4>Class</h4>                            
	<form role="form" action="memberReservationProc.jsp" method="post">
		<input type="hidden" name="id" value="<%=id %>" />
		<ul  class="member">
		    <li class="input-group">
		        <span class="input-group-addon"> <span class="glyphicon glyphicon-book"></span> </span>
		        <select name="coffeeClassSubject" class="form-control">
		            <option value="" disabled selected hidden>수강과목</option>
		            <option value="장비 및 기구">장비 및 기구</option>
		            <option value="원두">원두</option>
		            <option value="내리는 법">내리는 법</option>
		        </select>
		    </li>
		    <li class="input-group form-mgt">
		        <span class="input-group-addon"> <span class="glyphicon glyphicon-time"></span> </span>
		        <select name="coffeeClassTime" class="form-control">
		            <option value="" disabled selected hidden>시간 선택</option>
		            <option value="10:00">10:00 ~ 11:00</option>
		            <option value="11:00">11:00 ~ 12:00</option>
		            <option value="16:00">16:00 ~ 17:00</option>
		            <option value="17:00">17:00 ~ 18:00</option>
		            <option value="19:00">19:00 ~ 20:00</option>
		            <option value="20:00">20:00 ~ 21:00</option>
		        </select>
		    </li>
		    <li class="input-group form-mgt">
		        <span class="input-group-addon"> <span class="glyphicon glyphicon-user"> </span> </span>
		        <input type="number" name="coffeeClassTotalPeople" class="form-control" placeholder="인원 수">
		    </li>
		    <button type="submit" class="btn btn-success pull-right class-btn">전송</button>
		</ul>
	</form>
	<div class="clear"></div>
<jsp:include page="../include/footer.jsp" flush="false"/>
