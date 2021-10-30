<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="ark.member.MemberBean"%>

<jsp:useBean id="mb" class="ark.member.MemberDAO" />

<%
	String id = (String)session.getAttribute("idKey");
	MemberBean mBean = mb.getMember(id);
%>

<script src="script.js"></script>
<script>
	function zipCheck( ) {
		url = "zipCheck.jsp?check=y";
		window.open(url, "ZipCodeSearch","width=500,height=300,scrollbars=yes");
	}
</script>

<jsp:include page="../include/header.jsp" flush="false"/>

	<h2 class="member">Members <span class="text-title">Edit</span></h2>
	
	<form name="regFrm" method="post" action="memberUpdateProc.jsp">
		<ul class="member">
			<li><input type="text" name="id" value="<%=id%>" class="form-control" readonly></li>				
			<li><input type="password" name="pass" value="<%=mBean.getPass( )%>" class="form-control"></li>			
			<li><input type="text" name="name" value="<%=mBean.getName( )%>" class="form-control"></li>
			<li>
				성별 : 남 <input type="radio" name="sex" value="1" <%=mBean.getSex( ).equals("1") ? "checked" : ""%>>
				여 <input type="radio" name="sex" value="2" <%=mBean.getSex( ).equals("2") ? "checked" : ""%>>
			</li>
			<li><div class="text-birth">생일 : </div><input type="date" name="birthday" value="<%=mBean.getBirthday( )%>" class="form-control input-birth" ></li>			
			<div class="clear"></div>						
			<li><input type="email" name="email" value="<%=mBean.getEmail( )%>" class="form-control"></li>
			<li>
				<input type="text" name="zipcode" value="<%=mBean.getZipcode( )%>" readonly class="form-control check-input">
				<input type="button" value="우편번호찾기" onClick="zipCheck( )" class="btn btn-success check-btn">
			</li>
			<div class="clear"></div>			
			<li><input type="text" name="address" value="<%=mBean.getAddress( )%>" class="form-control"></li>
			<li>
				취미 : 
<%
				String list[ ] = { "인터넷", "여행", "게임", "영화", "운동" };
				String hobbys[] = mBean.getHobby( );
				for (int i = 0; i < list.length; i++) {
					out.println("<input type=checkbox name=hobby ");
					out.println("value=" + list[i] + " "
							+ (hobbys[i].equals("1") ? "checked" : "") + ">"
							+ list[i]);
				}
%>
			</li>			
			<li>
				<select name="job" class="form-control">
					<option value="0" selected>직업을 선택하세요.
					<option value="회사원">회사원
					<option value="연구전문직">연구전문직
					<option value="교수학생">교수학생
					<option value="일반자영업">일반자영업
					<option value="공무원">공무원
					<option value="의료인">의료인
					<option value="법조인">법조인
					<option value="종교,언론,에술인">종교.언론/예술인
					<option value="농,축,수산,광업인">농/축/수산/광업인
					<option value="주부">주부
					<option value="무직">무직
					<option value="기타">기타
				</select>
				<script>document.regFrm.job.value="<%=mBean.getJob( )%>"</script>
			</li>						
			<li class="btn-group btn-g">
				<button type="submit" class="btn btn-primary btn-submit">
					<span class="glyphicon glyphicon-edit"></span> 수정완료
				</button>
				<button type="reset" class="btn btn-warning btn-reset">
					<span class="glyphicon glyphicon-repeat"></span> 다시쓰기
				</button>
				<a href="memberDelete.jsp" class="btn btn-danger m-btn">
					<span class="glyphicon glyphicon-new-window"></span> 회원탈퇴
				</a>
			</li>
		</ul>
	</form>

<jsp:include page="../include/footer.jsp" flush="false"/>
