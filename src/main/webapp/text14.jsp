<%@page contentType="text/html; charset=BIG5"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<html>
	<head><title>Select</title></head>
	<meta charset="BIG5">
<body>
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
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\User\\Documents\\GitHub\\registered\\src\\main\\webapp\\Data.accdb;");
	Statement smt= con.createStatement();
	out.println("�s�W��Ʀ�person");
	smt.executeUpdate("INSERT INTO DrLeave(NotWorkTime,NotWorkDate,Reason) VALUES('���W', '2022/02/06','�X��');");
	
	con.close();
	%>
<H1>�f�w�޲z<H1>
<table>
 <tr>
    <td>�𰲤��:
    <input type="date" name="NotWorkDate" /></td>
  </tr><br>
  <tr>
  <td><label for="NotWorkTime">�𰲮ɬq:</label>
  <select id="NotWorkTime" name="NotWorkTime">
    <option value="1">���W</option>
    <option value="2">�U��</option>
    <option value="3">�ߤW</option>
  </select><tr></td><br>
  <tr>
  <td><label for="reason">�𰲲z��:</label>
  <select id="reason" name="reason">
    <option value="1">�X��</option>
    <option value="2">�쩲�ݶE</option>
    <option value="3">�ư�</option>
  </select>
 
</table> 
<input type="submit">
</body>
</html>