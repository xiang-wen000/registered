<%@page contentType="text/html; charset=BIG5"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<html>
	<head><title>MailManagement</title></head>
	<meta charset="BIG5">
<body>
<iframe src="http://localhost:8080/registered/home1.jsp" width="1500px" height="50px" frameborder="0" scrolling="no">
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
	</style>
<style type='text/css'>
.Btn_Black { display:inline-block; font-size:15px; background-color:#D0D0D0; color:	#000000; margin:2px; padding:5px 10px;text-decoration:none; border-radius:5px;}
.Btn_Black:hover { background-color:#D0D0D0; color:	#000000;text-decoration:none;}
</style>
<!-- text0602第三段  <form  action="insertintoMail.jsp" >-->
<body>	
   <H1>病患管理<H1>
	 <table border='1'>
	 <tr>
	 <th>病歷號碼</th>
	 <th>手機號碼</th>
     <th>傳送時間</th>
	 <th>傳送狀態</th>
	 <th>修改</th>
	 </tr>
	  <tr>
	 <th>00001</th>
	 <th>0911223344</th>
     <th>2023/06/14 20:00</th>
	<th>
    <select name="Reason" id="Reason" >
     <option value="1">已傳送</option>
     <option value="2">未傳送</option>
     <option value="3">取消</option>
    </select>
    </th>
	 <th><input type="button" value="修改" style="width:60px;height:30px;background-color:#D2E9FF;"></th>
	 </tr>
	  <tr>
	 <th>00002</th>
	 <th>0955667788</th>
     <th>2023/06/14 20:00</th>
	<th>
    <select name="Reason" id="Reason" >
     <option value="1">已傳送</option>
     <option value="2">未傳送</option>
     <option value="3">取消</option>
    </select>
    </th>
	 <th><input type="button" value="修改" style="width:60px;height:30px;background-color:#D2E9FF;"></th>
	 </tr>
	 <tr>
	 <th>00003</th>
	 <th>0912345678</th>
     <th>2023/06/14 20:00</th>
	<th>
    <select name="Reason" id="Reason" >
     <option value="1">已傳送</option>
     <option value="2">未傳送</option>
     <option value="3">取消</option>
    </select>
    </th>
	 <th><input type="button" value="修改" style="width:60px;height:30px;background-color:#D2E9FF;"></th>
	 </tr>
<!-- 這裡有一段在TEXT0602 -->	
 </form>
</body>
</html>