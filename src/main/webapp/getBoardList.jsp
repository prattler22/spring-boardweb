<%@page contentType="text/html; charset=EUC-KR"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�� ���</title>
</head>
<body>
	<h1>�� ���</h1>
	<h3>${userName }��!
		�Խ��ǿ� ���Ű� ȯ���մϴ�...<a href="logout.do">Log-out</a>
	</h3>
	<!-- �˻� ���� -->
	<form action="getBoardList.jsp" method="post">
		<table>
			<tr>
				<td align="right"><select name="searchCondition">
						<option value="TITLE">����
						<option value="CONTENT">����
				</select> <input name="searchKeyword" type="text" /> <input type="submit"
					value="�˻�" /></td>
			</tr>
		</table>
	</form>
	<!-- �˻� ���� -->
	<table border="1">
		<tr>
			<th bgcolor="orange">��ȣ</th>
			<th bgcolor="orange">����</th>
			<th bgcolor="orange">�ۼ���</th>
			<th bgcolor="orange">�����</th>
			<th bgcolor="orange">��ȸ��</th>
		</tr>
		<c:forEach items="${boardList }" var="board">
			<tr>
				<td>${board.seq }</td>
				<td align="left"><a href="getBoard.do?seq=${board.seq }">
						${board.title }</a></td>
				<td>${board.writer }</td>
				<td>${board.regDate }</td>
				<td>${board.cnt }</td>
			</tr>
		</c:forEach>
	</table>
	<br> <a href="insertBoard.jsp">���� ���</a>
</body>
</html>