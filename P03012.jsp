<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ja-JP">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品情報詳細表示画面</title>
<!-- Compiled and minified CSS & Fonts CSS -->
<link rel="stylesheet" href="style/materialize.min.css" />
<link rel="stylesheet" href="style/append.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="container pt-4rem">
		<!-- Begin Content -->
		<!-- この部分に内容を記述 -->

		<h1>P03012商品情報詳細表示画面</h1><br>

suzuki作成部分-------------------------------------------------------------------<br>

		<h3><c:out value="${sessionScope.product.productName}"></c:out></h3>
		<br>
		<br>
		<table>
		<tr><td>商品詳細</td><td><c:out value="${sessionScope.product.productDetail}"></c:out></td></tr>
		<tr><td>パッケージ価格</td><td><c:out value="${sessionScope.product.productPrice}"></c:out></td></tr>
		<tr><td>最低催行人数</td><td><c:out value="${sessionScope.product.minimumNumber}"></c:out></td></tr>
		<tr><td>残り在庫数</td><td><c:out value="${sessionScope.product.stockQuantity}"></c:out></td></tr>
		<tr><td>出発日付</td><td><c:out value="${sessionScope.product.departureTime}"></c:out></td></tr>
		<tr><td>戻り日付</td><td><c:out value="${sessionScope.product.arriveTime}"></c:out></td></tr>
		</table>
<br>
<br>
<br>
<form action="予約行うページへ" method="post">
<input type="submit" value="予約する">
</form>




<br>
<br>
<br>





-------------------------------------------------------------------<br>
		<h3>二泊三日で行くソウル食べ歩き弾丸ツアー</h3>
		<br> ホテル：ソウルホテル <br> 金額：25000円（燃料費込） <br>
		備考：朝食はプランに入っておりません。 <br> <a href="DisplayReservationServlet">予約する(ログイン時)</a>
		<br> <br> <a href="DisplayUserLoginServlet">予約する(ログインしてない時)</a>
		<br> <br> <a href="SearchAndDisplayProductServlet">戻る</a>

		<!-- End Content -->
	</div>
	<!-- JQuery, Materialize JS, Custom JS -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/materialize.min.js"></script>
	<script src="js/init.js"></script>
	<script src="js/append.js"></script>
</body>
</html>