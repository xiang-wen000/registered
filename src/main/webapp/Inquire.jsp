<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<iframe src="http://localhost:8080/registered/home.jsp" width="1500px" height="50px" frameborder="0" scrolling="no">
</iframe>

<title>Inquire</title>

</head>

<body>
<style>
.FullTable {width:100%; margin:0 auto;border-collapse:collapse; border:solid 1px #ddd;}
.FullTable th {font-size:15px;background-color:	#D2E9FF;padding:5px;text-align:center;border:solid 1px #D2E9FF;color:#000;}
.FullTable tr {font-size:15px;width:auto;border:solid 1px #ddd;}
.FullTable td {padding:5px;text-align:left;border:solid 1px #ddd; }
</style>
<style>
.Btn_Green { display:inline-block; font-size:15px; background-color:#5da82b; color:#fff; margin:2px; padding:5px 15px;text-decoration:none; border-radius:6px;}
.Btn_Green:hover { background-color:#3c7714; color:#fff;text-decoration:none;}
</style>
<style type='text/css'>
.CancelTable {width:100%; margin:0 auto;border-collapse:collapse; border:solid 1px #ddd;}
.CancelTable th {font-size:15px;background-color:#ECFFFF;padding:5px;text-align:center;border:solid 1px #ddd;color:	#000000;}
.CancelTable td {padding:5px;text-align:center;border:solid 1px #ddd; color:	#000000; font-size:15px;}
</style>

<style type='text/css'>
.Btn_Red { display:inline-block; font-size:15px; background-color:#f33d2c; color:#fff; margin:2px; padding:5px 15px;text-decoration:none; border-radius:6px;}
.Btn_Red:hover { background-color:#c12618; color:#fff;text-decoration:none;}
</style>
<table class="CancelTable">
<tr>
<div class="Line"></div>
<span id="Cancel" style="display:inline-block;width:100%;"><span>
<table class="FullTable">
<tr>
<th>身份證字號</th>
<td><input name="ctl00$ContentPlaceHolder1$TB_ID" type="text" value="" size="20" id="ctl00_ContentPlaceHolder1_TB_ID" class="Edit" />
<div style="font-size:80%;color:red;">請輸入身份證字號</div>
</td>
</tr>
<tr><td colspan="2" style="text-align:center;height:50px;">

<a id="ctl00_ContentPlaceHolder1_LB_Search" class="Btn_Green" href="http://localhost:8080/registered/Cancel.jsp">查詢</a>


</body>
</html>