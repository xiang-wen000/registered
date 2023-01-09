<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>

<%@ include file="test.jsp" %>
   
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

<span id="Cancel" style="display:inline-block;width:100%;"><span>

<table class="CancelTable">
<tr>
<th>姓名</th>
<td></td>



<th>取消</th>
<td>
<a onclick="return&#32;confirm(&#39;是否確定取消此掛號?&#39;);" id="ctl00_ContentPlaceHolder1_DL_List_ctl00_LB_DEL" class="Btn_Red" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$DL_List$ctl00$LB_DEL&#39;,&#39;&#39;)">取消掛號</a>
</td>
</tr>

<tr>
<th>掛號日期</th>
<td><input type="hidden" name="Name" id="Name" value="" /></td>

<th>時段</th>
<td colspan="2"><input type="hidden" name="Name" id="Name" value="" /></td>
</tr>

<tr>
<th>看診醫師</th>
<td>林東照</td>

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