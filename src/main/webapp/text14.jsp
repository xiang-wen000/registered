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
<H1>�l��޲z<H1>
	<table border='1'>
	<tr>
	<th>�w���N�X</th>
	<th>�����Ҧr��</th>
	<th>�ǰe���A</th>
	</tr>
	
	<%
	while(rs.next()){%>
	<tr>
	<td><input type="checkbox" value="1" name="ID"></td>
		 <td><%=rs.getString("Appointmentid")%></td>
		 <td><%=rs.getString("ID")%></td>
	</tr>
	<%}	
	con.close();
	%>


	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection(
		"jdbc:ucanaccess://D:\\Java\\Access\\dataBase.accdb;");
	Statement smt= con.createStatement();
	out.println("Email");
	smt.executeUpdate("INSERT INTO Email(DeliveryStatus) VALUES('');");
	
	con.close();
	%>

</html>
</body>
</html>