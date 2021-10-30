<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script src="js/script.js"></script>
<script>
	function idCheck(id) {
		frm = document.regFrm;
		if (id == "") {
			alert("아이디를 입력해 주세요.");
			frm.id.focus( );
			return;
		}
		url = "idCheck.jsp?id=" + id;
		window.open(url, "IDCheck", "width=300,height=150");
	}

	function zipCheck( ) {
		url = "zipCheck.jsp?check=y";
		window.open(url, "ZipCodeSearch","width=500,height=300,scrollbars=yes");
	}
</script>

<jsp:include page="../include/header.jsp" flush="false"/>

	<h2 class="member">Members <span class="text-title">Join</span></h2>
	<form name="regFrm" method="post" action="memberProc.jsp">
		<ul class="member">
			<li class="input-group">
				<span class="input-group-addon"> <span class="glyphicon glyphicon-log-in"> </span> </span>
				<input type="text" name="id" placeholder="아이디" class="form-control check-input" autofocus> 
				<span class="input-group-btn"> <button onClick="idCheck(this.form.id.value)" class="btn btn-primary">Check</button> </span>
			</li>
			<div class="clear"></div>
			
			<li class="input-group">
				<span class="input-group-addon"> <span class="glyphicon glyphicon-lock"></span> </span>
				<input type="password" name="pass" placeholder="비밀번호" class="form-control">
			</li>
			<li class="input-group">
				<span class="input-group-addon"> <span class="glyphicon glyphicon-lock"></span> </span>
				<input type="password" name="repass" placeholder="비밀번호 확인" class="form-control">
			</li>
			<li class="input-group">
				<span class="input-group-addon"> <span class="glyphicon glyphicon-user"> </span> </span>
				<input type="text" name="name" placeholder="이름" class="form-control">
			</li>
			<li>
				성별 : 남 <input type="radio" name="sex" value="1" checked="checked">&nbsp;
				여 <input type="radio" name="sex" value="2">
			</li>
			<li>
				<div class="text-birth ">생일 : </div> <input type="date" name="birthday" class="form-control input-birth" >
			</li>			
			<div class="clear"></div>
			<li class="input-group">
				<span class="input-group-addon"> <span class="glyphicon glyphicon-envelope"></span> </span>
				<input type="email" name="email" placeholder="이메일" class="form-control">
			</li>
			<li>
				<input type="text" name="zipcode" placeholder="우편번호" readonly class="form-control check-input">
				<input type="button" value="우편번호찾기" onClick="zipCheck( )" class="btn btn-success check-btn">
			</li>
			<div class="clear"></div>
			<li><input type="text" name="address" placeholder="주소" class="form-control"></li>
			<li>
				취미 : <input type="checkbox" name="hobby" value="인터넷">인터넷 &nbsp; 
				<input type="checkbox" name="hobby" value="여행">여행 &nbsp;
				<input type="checkbox" name="hobby" value="게임">게임 &nbsp; 
				<input type="checkbox" name="hobby" value="영화">영화 &nbsp;
				<input type="checkbox" name="hobby" value="운동">운동
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
			</li>						
			<li class="btn-group">
				<button onclick="inputCheck( )" class="btn btn-info m-btn"><span class="glyphicon glyphicon-user"></span>&nbsp; 회원가입</button>
				<button type="reset" class="btn btn-warning m-btn"><span class="glyphicon glyphicon-repeat"></span>&nbsp; 다시쓰기</button>
				<a href="login.jsp" class="btn btn-primary m-btn"><span class="glyphicon glyphicon glyphicon-log-in"></span>&nbsp; 로 그 인</a>
			</li>
		</ul>
	</form>

<jsp:include page="../include/footer.jsp" flush="false"/>
