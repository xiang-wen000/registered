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
  <input type="text" id="fname" name="fname" placeholder="姓名">
<p></p>
  <span style="color:red">*</span>生日
  <input type="date" id="birthday" name="birthday" value="yyyy-mm-dd">
<p></p>
  <span style="color:red">*</span>性別
  <input type="radio" id="男性" name="your gender" value="男性">
  <label for="男性">男性</label>
  <input type="radio" id="女性" name="your gender" value="女性">
  <label for="女性">女性</label>
<p></p>
  <span style="color:red">*</span>血型
  <input type="radio" id="A" name="your blood type" value="A">
  <label for="A">A</label>
  <input type="radio" id="B" name="your blood type" value="B">
  <label for="B">B</label>
  <input type="radio" id="AB" name="your blood type" value="AB">
  <label for="AB">AB</label>
  <input type="radio" id="O" name="your blood type" value="O">
  <label for="O">O</label>
</form>





</body>
</html>