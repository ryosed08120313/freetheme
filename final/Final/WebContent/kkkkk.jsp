<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css.css"></head>
<script src="kkk.js"></script>
<body>

<c:out value="${num}"></c:out>
<p><span id="demo4">demo4</span></p>
<br>
<script type="text/javascript">

var num=${num};

if (num>4.5) {
	document.getElementById('demo4').innerHTML = '<img src="star5.png" alt="サンプル画像"  height="50" width="200">';

}else if (num>3.5) {
	document.getElementById('demo4').innerHTML = '<img src="star4.png" alt="サンプル画像"  height="50" width="200">';

}else if (num>2.5) {
	document.getElementById('demo4').innerHTML = '<img src="star3.png" alt="サンプル画像"  height="50" width="200">';

}else if (num>1.5) {
	document.getElementById('demo4').innerHTML = '<img src="star2.png" alt="サンプル画像"  height="50" width="200">';

}else if (num>0.5) {

	document.getElementById('demo4').innerHTML = '<img src="star1.png" alt="サンプル画像"  height="50" width="200">';
}else{

	document.getElementById('demo4').innerHTML = '<img src="star0.png" alt="サンプル画像"  height="50" width="200">';
}



</script>





<table id="result">
  <tr>
    <td>5</td>
  </tr>
  <tr>
    <td >-10</td>
  </tr>
</table>

<br>
<br>
<br>

<p>pタグ</p>

<br>
<br>
<br>

<input type="button" value="OK" onclick="ohayou()">

<br>
<br>
<br>
<div class="star-rating">
            <div class="star-rating-front" style="width: 50%">★★★★★</div>
            <div class="star-rating-back">★★★★★</div>
        </div>
</body>
</html>