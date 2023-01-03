<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<iframe src="http://localhost:8080/registered/home.jsp" width="1500px" height="50px" frameborder="0" scrolling="no">
</iframe>

<title>Insert title here</title>
</head>
<body>
<style type='text/css'>
.CancelTable {width:100%; margin:0 auto;border-collapse:collapse; border:solid 1px #ddd;}
.CancelTable th {font-size:15px;background-color:#ECF5FF;padding:5px;text-align:center;border:solid 1px #ddd;color:	#000000;}
.CancelTable td {padding:5px;text-align:center;border:solid 1px #ddd; color:	#000000; font-size:15px;}
</style>

<style type='text/css'>
.Btn_Red { display:inline-block; font-size:15px; background-color:#f33d2c; color:#fff; margin:2px; padding:5px 15px;text-decoration:none; border-radius:6px;}
.Btn_Red:hover { background-color:#c12618; color:#fff;text-decoration:none;}
</style>
<table class="CancelTable">
<tr>
<div class="Line"></div>
<span id="ctl00_ContentPlaceHolder1_DL_List" style="display:inline-block;width:100%;"><span>

<table class="CancelTable">
<tr>
<th>姓名</th>
<td>

<input type="hidden" name="ctl00$ContentPlaceHolder1$DL_List$ctl00$HF_REG_IDNO" id="ctl00_ContentPlaceHolder1_DL_List_ctl00_HF_REG_IDNO" value="C221654496" />
<input type="hidden" name="ctl00$ContentPlaceHolder1$DL_List$ctl00$HF_REG_CHRT" id="ctl00_ContentPlaceHolder1_DL_List_ctl00_HF_REG_CHRT" value="9999991" />
</td>
<th>取消</th>

<td>
<a onclick="return&#32;confirm(&#39;是否確定取消此掛號?&#39;);" id="ctl00_ContentPlaceHolder1_DL_List_ctl00_LB_DEL" class="Btn_Red" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$DL_List$ctl00$LB_DEL&#39;,&#39;&#39;)">取消掛號</a>
</td>
</tr>

<tr>
<th>掛號日期</th>
<td>2022/12/29</td>

<th>午別</th>
<td colspan="2">
晚上</td>
</tr>

<tr>
<th>看診醫師</th>
<td>羅明原</td>

<th>掛號號碼</th>
<td colspan="2" style="width:100px;">
<span style="font-size:30px; color:#e41749;">
1
</span>
</td>
</tr>
</table>
</span></span>
</body>
</html>