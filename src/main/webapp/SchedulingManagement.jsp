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
<style type='text/css'>
.SchedulingTable {width:100%; margin:0 auto;border-collapse:collapse; border:solid 1px #ddd;}
.SchedulingTable th {font-size:15px;background-color:#ECF5FF;padding:5px;text-align:center;border:solid 1px #ddd;color:	#000000;}
.SchedulingTable td {padding:5px;text-align:center;border:solid 1px #ddd; color:	#000000; font-size:15px;}
</style>
<table class="SchedulingTable">
<label>
    休假日期:
    <input type="date" name="bday" />
  </label><br>
  <label for="period">休假時段:</label>
  <select id="period" name="period">
    <option value="1">早上</option>
    <option value="2">下午</option>
    <option value="3">晚上</option>
  </select><br>
    <label for="reason">休假理由:</label>
  <select id="reason" name="reason">
    <option value="1">事假</option>
    <option value="2">外出看診</option>
    <option value="3">出國</option>
  </select>
  <input type="submit">

</body>
</html>