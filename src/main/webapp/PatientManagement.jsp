<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>

<body>
<iframe src="http://localhost:8080/registered/home1.jsp" width="1500px" height="100px" frameborder="0" scrolling="no">
</iframe>
<style type='text/css'>
.Btn_Red { display:inline-block; font-size:15px; background-color:#f33d2c; color:#fff; margin:2px; padding:5px 15px;text-decoration:none; border-radius:6px;}
.Btn_Red:hover { background-color:#c12618; color:#fff;text-decoration:none;}
</style>
<form>
病患名單<br>
<input type="checkbox" value="1" name="ID"> 姓名<br>
<input type="checkbox" value="2" name="ID"> 姓名<br>
<input type="checkbox" value="3" name="ID"> 姓名<br>
<a onclick="return&#32;confirm(&#39;是否確定取消此掛號?&#39;);" id="ctl00_ContentPlaceHolder1_DL_List_ctl00_LB_DEL" class="Btn_Red" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$DL_List$ctl00$LB_DEL&#39;,&#39;&#39;)">取消掛號</a>
</form>
</body>
</head>
</html>