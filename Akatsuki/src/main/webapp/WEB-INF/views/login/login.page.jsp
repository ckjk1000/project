<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>로그인 페이지</title>

<script src="resources/js/jquery-1.9.1.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>

<script type="text/javascript">
	function loginsuccess(){
		alert("로그인중기다려주십시오.");
		location.href='index.do';
// 		frm.submit();
	}

	function loginCheck(){
		var param = "id" + "=" + $("#id").val() + "&" +"pw" + "="+ $("#pw").val();
		$.ajax({
			url : "/login.do",
			type : "GET",
			data : param,
			cache : false,
			async : false,
			dataType : "text",
			success : function(response) {								
				if(response=='1')
				{
					loginsuccess();
				}
				else
				{
					alert("아이디 또는 비번이 틀렸습니다. 다시 입력하세요.")
					return false;
				}					
				alert(check);
			},
			error : function(request, status, error) {
				if (request.status != '0') {
					alert("code : " + request.status + "\r\nmessage : "
							+ request.reponseText + "\r\nerror : " + error);
				}
			}	
		});
	}	
</script>
</head>
<body>
	<br>
	<form name="frm" id = "frm" action = "/session.do">
		<P align="center">
			<FONT size="6"><B>로그인 페이지</B></FONT>
		</P>
		<table border="0" align="center" cellspacing="1" bgcolor="PapayaWhip" width="300" height="150">
			<tr>
				<td colspan="2" bgcolor="PeachPuff" align="center" height="30"><b>로그인 확인</b></td>
			</tr>
			<tr align="center">
				<td bgcolor="PeachPuff" width="100">아이디</td>
				<td><input type="text" id="id" name="id" size="12" maxlength="12"></td>
			</tr>
			<tr align="center">
				<td bgcolor="PeachPuff">비밀번호</td>
				<td><input type="password" id="pw" name="pw" size="12" maxlength="12"></td>
			</tr>
			<tr>
				<td colspan="2" bgcolor="PeachPuff" align="center" height="30">
					<input type="button" value="로그인" onclick='loginCheck()'> 
					<input type="button" value="회원 가입" onclick="javascript:location.href='/signup.do';">
					<input type="button" value="비번찾기" onclick="javascript:location.href='/search.do';"> 
				</td>
			</tr>
		</table>
	</form>
</body>
</html>

	<!-- <form name="frm" id = "frm" action = "/session.do">
		<table>
			<colgroup>
				<col width="100"><col width="200">
			</colgroup>
			<thead>
				<tr>
					<td colspan="2" bgcolor="PeachPuff" align="center" height="30"><b>로그인 확인</b></td>
				</tr>
			</thead>
			<tbody>
				<tr align="center" height="35">
					<td bgcolor="PeachPuff">아이디</td>
					<td><input type="text" id="id" name="id" size="12" maxlength="12"></td>
				</tr>
				<tr align="center" height="35">
					<td bgcolor="PeachPuff">비밀번호</td>
					<td><input type="password" id="pw" name="pw" size="12" maxlength="12"></td>
				</tr>
				<tr>
					<td colspan="2" bgcolor="PeachPuff" align="center" height="30">
						<input type="button" value="로그인" onclick='loginCheck()'> 
						<input type="button" value="회원 가입" onclick="javascript:location.href='/membership.do';">
						<input type="button" value="비번찾기" onclick="javascript:location.href='/password_search.do';"> 
					</td>
				</tr>
			</tbody>
		</table>
	</form> -->