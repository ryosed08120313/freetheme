<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>検索画面</title>
</head>
<body>
<h2>条件を入力してください</h2>

<br>
<br>
<br>
<form action="searchDetailServlet"method="post">
<table>


<tr><th>国</th>
<td><select name="country">
<option value="india">インド</option>
<option value="japan">日本</option>
<option value="korea">韓国</option>
<option value="china">中国</option>
</select></td></tr>

<tr><th>旅行日程</th>
<td><select name="days">
<option value="2">一泊二日</option>
<option value="3">二泊三日</option>
<option value="4">三泊四日</option>
<option value="5">四泊五日</option>
<option value="6">五泊六日</option>
<option value="7">六泊七日</option>
<option value="8">七泊八日</option>
</select></td>


<tr><th>こだわり条件</th>
<td><input type="checkbox" name="morning" value="1">朝食付き
<input type="checkbox" name="pickup" value="1">送迎あり
</td>

</tr>

</table>
<input type="submit" value="検索実行">
</form>

</body>
</html>