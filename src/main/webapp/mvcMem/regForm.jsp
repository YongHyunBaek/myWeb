<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가입 폼</title>
<link href="css/style.css" type="test/css" rel="stylesheet"/>
<script type="text/javascript" src="script.js"></script>
</head>
<body>
<form method="post" action="member.mdo?cmd=regProc" name="regForm">
	<table border="1">
		<tr><td colspan="2" align="center">회원 가입 정보 입력</td>
		</tr>
		<tr>
				<td align="right"> 아이디 : </td>	
				<td><input type="text" name="id" size="20"/>&nbsp;
				<input type="button" value="중복확인"
						onClick="idCheck(this.form.id.value)"/></td>
		</tr>
		<tr>
				<td align="right"> 패스워드 : </td>
				<td><input type="password" name="pass" /></td>
		</tr>
		<tr>
				<td align="right"> 패스워드 확인 : </td>
				<td><input type="password" name="repass" /></td>
		</tr>
		<tr>
				<td align="right"> 이름 : </td>
				<td><input type="text" name="name" /></td>
		</tr>
		<tr>
				<td align="right" > 전화번호 : </td>
				<td><select name="phone1">
				<option value="02">02</option>
				<option value="010">010</oprion>
				<option value="010">011</oprion>
				<option value="010">016</oprion>
				<option value="010">017</oprion>
				<option value="010">018</oprion>
				<option value="010">019</oprion>
				</select>&nbsp;-&nbsp;
				<input type="text" name="phone2" size="5"/>
				&nbsp;-&nbsp;
				<input type="text" name="phone3" size="5"/></td>
		</tr>
		<tr>
				<td align="right" > 이메일 : </td>
				<td><input type="text" name="email"/></td>
		</tr>
		<tr>
				<td align="right" >	우편번호 : </td>
		<td><input type="text" name="zipcode" size="20" />&nbsp;
		<input type="button" value="찾기" onClick="zipCheck()"/></td>
		</tr>
		<tr>
				<td align="right"> 주소 1 : </td>
		<td><input type="text" name="address1" size="50"/></td>
		</tr>
		
		<tr>
				<td align="right"> 주소 2 : </td>
		<td><input type="text" name="address2" size="30"/></td>
		</tr>
		<tr>
				<td colspan="2" align="center" >
				<input type="button" value="회원가입"
						onClick="inputCheck()"/>&nbsp;&nbsp;
				<input type="reset" value="다시입력" /></td>				
		</tr>				
	</table>
</form>
</body>
</html>