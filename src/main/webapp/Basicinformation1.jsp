<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

<form action="/action_page.php">
  <span style="color:red">*</span>姓名
  <input type="text" id="fname" name="fname">

<p></p>
  <span style="color:red">*</span>性別
  <input type="radio" id="男性" name="your gender" value="男性">
  <label for="男性">男性</label>
  <input type="radio" id="女性" name="your gender" value="女性">
  <label for="女性">女性</label>

<p></p>
  <span style="color:red">*</span>手機電話
  <input type="text" id="phone" name="phone">

<p></p>
<a href="http://localhost:8080/registered/AppointmentSuccess.jsp">確認</a>

</body>
</html>

</form>