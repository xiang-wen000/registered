<%@page contentType="text/html; charset=BIG5"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<html>
	<head><title>Select</title></head>
	<meta charset="BIG5">
<body>
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\User\\Documents\\GitHub\\registered\\src\\main\\webapp\\Data.accdb;");
	Statement smt= con.createStatement();
	String sql = "SELECT * FROM Email Appointment ";
	ResultSet rs = smt.executeQuery(sql);
	%>
<H1>郵件管理<H1>
	<table border='1'>
	<tr>
	<th>預約代碼</th>
	<th>身分證字號</th>
	<th>傳送狀態</th>
	</tr>
	
	<%
	while(rs.next()){%>
	<tr>
	<td><input type="checkbox" value="1" name="ID"></td>
	
		 <td><%=rs.getString("Appointmentid")%></td>
		  <td><%=rs.getString("ID")%></td>
		 <td><%=rs.getString("DeliveryStatus")%></td>	 
	</tr>
	<%}	
	con.close();
	%>
	
</body>
</html>