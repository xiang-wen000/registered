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
<!-- text0602�ĤT�q  <form  action="insertintoMail.jsp" >-->
<body>	
   <H1>�f�w�޲z<H1>
	 <table border='1'>
	 <tr>
	 <th>�f�����X</th>
	 <th>������X</th>
     <th>�ǰe�ɶ�</th>
	 <th>�ǰe���A</th>
	 <th>�ק�</th>
	 </tr>
	  <tr>
	 <th>00001</th>
	 <th>0911223344</th>
     <th>2023/06/14 20:00</th>
	<th>
    <select name="Reason" id="Reason" >
     <option value="1">�w�ǰe</option>
     <option value="2">���ǰe</option>
     <option value="3">����</option>
    </select>
    </th>
	 <th><input type="button" value="�ק�" style="width:60px;height:30px;background-color:#D2E9FF;"></th>
	 </tr>
	  <tr>
	 <th>00002</th>
	 <th>0955667788</th>
     <th>2023/06/14 20:00</th>
	<th>
    <select name="Reason" id="Reason" >
     <option value="1">�w�ǰe</option>
     <option value="2">���ǰe</option>
     <option value="3">����</option>
    </select>
    </th>
	 <th><input type="button" value="�ק�" style="width:60px;height:30px;background-color:#D2E9FF;"></th>
	 </tr>
	 <tr>
	 <th>00003</th>
	 <th>0912345678</th>
     <th>2023/06/14 20:00</th>
	<th>
    <select name="Reason" id="Reason" >
     <option value="1">�w�ǰe</option>
     <option value="2">���ǰe</option>
     <option value="3">����</option>
    </select>
    </th>
	 <th><input type="button" value="�ק�" style="width:60px;height:30px;background-color:#D2E9FF;"></th>
	 </tr>
<!-- �o�̦��@�q�bTEXT0602 -->	
 </form>
</body>
</html>