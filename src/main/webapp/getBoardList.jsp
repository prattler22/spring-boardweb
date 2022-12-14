<%@page contentType="text/html; charset=EUC-KR"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>글 목록</title>
</head>
<body>
	<h1>글 목록</h1>
	<h3>${userName }님!
		게시판에 오신걸 환영합니다...<a href="logout.do">Log-out</a>
	</h3>
	<!-- 검색 시작 -->
	<form action="getBoardList.jsp" method="post">
		<table>
			<tr>
				<td align="right"><select name="searchCondition">
						<option value="TITLE">제목
						<option value="CONTENT">내용
				</select> <input name="searchKeyword" type="text" /> <input type="submit"
					value="검색" /></td>
			</tr>
		</table>
	</form>
	<!-- 검색 종료 -->
	<table border="1">
		<tr>
			<th bgcolor="orange">번호</th>
			<th bgcolor="orange">제목</th>
			<th bgcolor="orange">작성자</th>
			<th bgcolor="orange">등록일</th>
			<th bgcolor="orange">조회수</th>
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
	<br> <a href="insertBoard.jsp">새글 등록</a>
</body>
</html>