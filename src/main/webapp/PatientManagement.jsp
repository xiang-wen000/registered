<%@page contentType="text/html; charset=BIG5"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<html>
	<head><title>PatientManagement</title></head>
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
.Btn_Red { display:inline-block; font-size:15px; background-color:#f33d2c; color:#fff; margin:2px; padding:5px 15px;text-decoration:none; border-radius:6px;}
.Btn_Red:hover { background-color:#c12618; color:#fff;text-decoration:none;}
</style>
<style type='text/css'>
.Btn_Red { display:inline-block; font-size:15px; background-color:#f33d2c; color:#fff; margin:2px; padding:5px 15px;text-decoration:none; border-radius:6px;}
.Btn_Red:hover { background-color:#c12618; color:#fff;text-decoration:none;}
</style>
 
 <!-- �o�̦��@�q�bTEXT0602-->
 <form  action="deletePat.jsp" >
   <H1>�f�w�޲z<H1><input type="button" value="�s�W���"  style="width:90px;height:30px;border:2px none;;background-color:#D2E9FF;">
	 <table border='1'>
	<tr>
	 <th>�����Ҧr��</th>
	 <th>�m�W</th>
	 <th>����</th>
	</tr>
	<tr>
     <td>F123456789</td>
     <td>���p��</td>
     <td><input type="button" value="�ק�" style="width:60px;height:30px;border:2px none;background-color:#D2E9FF;">/<input type="button" value="�R��" style="width:60px;height:30px;border:2px none;background-color:#FF5F5F;"></td>
    </tr>
    <tr>
     <td>F987654321</td>
     <td>�L�@�O</td>
    <td><input type="button" value="�ק�" style="width:60px;height:30px;border:2px none;background-color:#D2E9FF;">/<input type="button" value="�R��" style="width:60px;height:30px;border:2px none;background-color:#FF5F5F;"></td>
    </tr>
    <tr>
     <td>A123456789</td>
     <td>���P�P</td>
     <td><input type="button" value="�ק�" style="width:60px;height:30px;border:2px none;background-color:#D2E9FF;">/<input type="button" value="�R��" style="width:60px;height:30px;border:2px none;background-color:#FF5F5F;"></td>
    </tr>
	 <!-- �o�̦��@�q�bTEXT0602 -->
	
</form>
</body>
</html>