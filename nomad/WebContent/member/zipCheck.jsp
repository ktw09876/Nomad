<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="ark.member.ZipcodeBean"%>
<%@page import="java.util.Vector"%>

<jsp:useBean id="mb" class="ark.member.MemberDAO" />

<%
	request.setCharacterEncoding("UTF-8");
	String check = request.getParameter("check");
	String area3 = null;	
	Vector<ZipcodeBean> vlist = null;
	
	if (check.equals("n")) {
		area3 = request.getParameter("area3");
		vlist = mb.zipcodeRead(area3);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>우편번호 검색</title>
<link href="../imgs/favicon.ico" rel="shortcut icon">
<link rel="stylesheet" href="../bootstrap/bootstrap.min.css"/>
<script>
	function dongCheck( ) {
		frm = document.zipFrm;
		if (frm.area3.value == "") {
			alert("동이름을 입력하세요.");
			frm.area3.focus( );
			return;
		}
		frm.action = "zipCheck.jsp"
		frm.submit( );
	}

	function sendAdd(zipcode, area1, area2, area3, area4) {
		add = area1 + " " + area2 + " " + area3 + " " + area4 + " ";
		opener.document.regFrm.zipcode.value = zipcode;
		opener.document.regFrm.address.value = add;
		self.close( );
	}
</script>
<style>
	label { float:left; padding:7px; 0 0 10px; }
	.search { float:left; width:200px; margin-right:10px; }
	a.btn-info { display:block; width:60px; margin:30px auto; }
</style>
</head>

<body>
	<form name="zipFrm" method="post">
		<table class="table">
			<tr>
				<td>
					<label>동이름 입력 : </label>
					<input name="area3" type="text" value="" class="form-control search">
					<input type="button" value="검색" onclick="dongCheck( );" class="btn btn-success">
				</td>
			</tr>				
<%if(check.equals("n")) {
		if(vlist.isEmpty( )) {%>
			<tr><td><br>검색된 결과가 없습니다.</td></tr>
<%	}else {%>
			<tr><td align="center"><br>※검색 후, 아래 우편번호를 클릭하면 자동으로 입력됩니다.</td></tr>
<%
			for(int i = 0; i < vlist.size(); i++) {
				ZipcodeBean bean = vlist.get(i);
				String rZipcode = bean.getZipcode( );
				String rArea1 = bean.getArea1( );
				String rArea2 = bean.getArea2( );
				String rArea3 = bean.getArea3( );
				String rArea4 = bean.getArea4( );
%>
			<tr>
				<td>
					<a href="#" onclick="javascript:sendAdd('<%=rZipcode%>','<%=rArea1%>','<%=rArea2%>','<%=rArea3%>','<%=rArea4%>')">
					<%=rZipcode%>&nbsp; <%=rArea1%>&nbsp; <%=rArea2%>&nbsp; <%=rArea3%>&nbsp;	<%=rArea4%></a>
				</td>
			</tr>
<%
			}//for:end
		}//else:end
	}//if:end
%>
			<tr><td><a href="#" onClick="self.close( )" class="btn btn-info">닫기</a></td></tr>
		</table>
		<input type="hidden" name="check" value="n">
	</form>
</body>
</html>