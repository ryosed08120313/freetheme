<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>検索結果画面</title>
</head>
<body>
<h1>
詳細表示
</h1>

<br>
<br>
<br>
<br>
条件に合うのは以下のプランです
<br>
<br>
<br>
<br>
<table>
<tr><th>プランID</th><th>プラン名</th><th>国</th><th>日数</th><th>朝食</th><th>送迎</th></tr>
<tr>
<c:forEach items="${planList}" var="plan">
<td><c:out value="${plan.planId }"></c:out></td>
<td><a><c:out value="${plan.planName }"></c:out></a></td>
<td><c:out value="${plan.country }"></c:out></td>
<td><c:out value="${plan.days }"></c:out></td>
<td><c:out value="${plan.morning }"></c:out></td>
<td><c:out value="${plan.pickup }"></c:out></td>
</c:forEach>
</tr>

</table>
<a href="serchPlanServlet">検索画面に戻る</a>

</body>
</html>