<%@ page contentType="text/html; charset=EUC-KR" %>
<!DOCTYPE html>
<html>
<head>
<title>Customer ���� ������</title>
</head>
<body>
<form method="post" action="add.jsp">
	<table border="1" width="300">
		<tr>
			<td width="100"> �̸� </td>
			<td width="200">
				<input type = "text" name = "name" size="25"/>
			</td>
		</tr>
		
		<tr>
			<td width="100"> �̸��� </td>
			<td width="200">
				<input type = "text" name = "email" size ="25" />
			</td>
		</tr>
		<tr>
			<td width="100"> ��ȭ </td>		
			<td width="200">
				<input type ="text" name = "phone" size="25"/>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="����"/>
			</td>
		</tr>
	</table>
</form>
</body>
</html>