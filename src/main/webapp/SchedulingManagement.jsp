<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<iframe src="http://localhost:8080/registered/home1.jsp" width="1500px" height="100px" frameborder="0" scrolling="no">
</iframe>
<style>
		table {
		  font-family: arial, sans-serif;
		  border-collapse: collapse;
		  width: 100%;
		}

		td, th {
		  border: 1px solid #D2E9FF  ;
		  text-align: left;
		  padding: 7px;
		}

		
		}
	</style>
<table>
 <tr>
    <td>休假日期:
    <input type="date" name="bday" /></td>
  </tr><br>
  <tr>
  <td><label for="period">休假時段:</label>
  <select id="period" name="period">
    <option value="1">早上</option>
    <option value="2">下午</option>
    <option value="3">晚上</option>
  </select><tr></td><br>
  <tr>
  <td><label for="reason">休假理由:</label>
  <select id="reason" name="reason">
    <option value="1">事假</option>
    <option value="2">外出看診</option>
    <option value="3">出國</option>
  </select><tr></td>
 <tr><td><input type="submit"></table></tr>

</body>
</html>