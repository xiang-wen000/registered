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
	String sql = "SELECT * FROM Email & Appointment ";
	ResultSet rs = smt.executeQuery(sql);
	%>

   <H1>病患管理<H1>
	 <table border='1'>
	 <tr>
	 <th>身分證字號</th>
	 <th>姓名</th>
	 <th>已傳送</th>
     <th>未傳送</th>
	 </tr>
	
	<%
	while(rs.next()){%>
	<tr>
	
    <td><%=rs.getString("Appointmentid")%></td>
    <td><%=rs.getString("ID")%></td>	 
    <td> <input type="checkbox" value="1"></td>
    <td> <input type="checkbox" value="2"></td>
	</tr>
	<%}	
	con.close();
	%>
 </form>	
</body>
</html>