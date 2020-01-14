<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>BOARD LIST(spring mvc ���)</title>
<!-- bootstrap�� ����ϱ� ���� CDN�ּ� -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">
	<a href="/logout">�α׾ƿ�</a>
	<br>
	<a href="/deleteMember">ȸ��Ż��</a>
	<br>
	<a href="/">����������ȭ��</a>
		<h1>BOARD LIST(spring mvc ���)</h1>
		<div>��ü���� �� : ${map.totalRowCount}</div>
		
		<table class="table table-striped">
			<thead>
				<tr>
					<th>boardTitle</th>
					<th>boardUser</th>
					<th>boardDate</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="b" items="${map.list}">
					<tr>
						<td><a href="${pageContext.request.contextPath}/getBoardOne?boardNo=${b.boardNo}">${b.boardTitle}</a></td>
						<td>${b.boardUser}</td>
						<td>${b.boardDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<!-- �˻��� �Է�â -->
		<form action="/getBoardList" method="get">
			<label for="searchWord">�˻���(����) : </label>
			<input name="searchWord" type="text">
			<button type="submit">�˻�</button>
		</form>
		
		<ul class="pager">
			<c:if test="${map.currentPage > 1}">
				<li class="previous">
					<a href="${pageContext.request.contextPath}/getBoardList?currentPage=${map.currentPage-1}&searchWord=${map.searchWord}">����</a></li>
			</c:if>
			<c:if test="${map.currentPage < map.lastPage}">
				<li class="next">
					<a href="${pageContext.request.contextPath}/getBoardList?currentPage=${map.currentPage+1}&searchWord=${map.searchWord}">����</a></li>
			</c:if>
		</ul>
		<div>
			<a class="btn btn-default"
				href="${pageContext.request.contextPath}/addBoard">�Խñ� �Է�</a>
		</div>
	</div>
</body>
</html>