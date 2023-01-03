<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
  <style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
</head>
<body>
<iframe src="http://localhost:8080/registered/home1.jsp" width="1500px" height="50px" frameborder="0" scrolling="no">
</iframe>
<h1>郵件管理</h1>
<style>
		table {
		  font-family: arial, sans-serif;
		  border-collapse: collapse;
		  width: 100%;
		}

		td, th {
		  border: 1px solid #D2E9FF  ;
		  text-align: CENTER;
		  padding: 7px;
		}

		tr:nth-child(even) {
		  background-color: #D2E9FF ;
		}
	</style>
<table>
  <tr>
    <th>身分證</th>
    <th>姓名</th>
    <th>Sent1</th>
    <th>Sent2</th>
    <th>Sent3</th>
  </tr>
  <tr>
    <td>1</td>
    <td>黃小明</td>
   <td><input type="checkbox" value="YES" name="YES">是<input type="checkbox" value="NO" name="NO">否</td>
    <td><input type="checkbox" value="YES" name="YES">是<input type="checkbox" value="NO" name="NO">否</td>
    <td><input type="checkbox" value="YES" name="YES">是<input type="checkbox" value="NO" name="NO">否</td>
  </tr>
  <tr>
    <td>2</td>
    <td>陳一訓</td>
    <td><input type="checkbox" value="YES" name="YES">是<input type="checkbox" value="NO" name="NO">否</td>
    <td><input type="checkbox" value="YES" name="YES">是<input type="checkbox" value="NO" name="NO">否</td>
    <td><input type="checkbox" value="YES" name="YES">是<input type="checkbox" value="NO" name="NO">否</td>
  </tr>
</table>
  
</body>
</html>