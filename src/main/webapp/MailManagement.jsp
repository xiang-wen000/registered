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
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\User\\Documents\\GitHub\\registered\\src\\main\\webapp\\Data.accdb;");
	Statement smt= con.createStatement();
	String sql = "SELECT * FROM Email  ";
	ResultSet rs = smt.executeQuery(sql);
	%>
 <form  action="insertintoMail.jsp" >	
   <H1>�f�w�޲z<H1>
	 <table border='1'>
	 <tr>
	 <th>�w����</th>
	 <th>�ǰe���A</th>
	 <th>�T�{</th>
	 </tr>
	
	<%
	while(rs.next()){%>
	<tr>
    <td><%=rs.getString("Appointmentid")%></td>
    <td><label for="DeliveryStatus"></label>
    <select  name="DeliveryStatus" id="DeliveryStatus" >
    <option value="1">�w�ǰe</option>
    <option value="2">���ǰe</option>
    </select> 
    <td><input type="submit" class="Btn_Black" value="�T�{"></td>
	</tr>
	<%}	
	con.close();
	%>
 </form>
</body>
</html>