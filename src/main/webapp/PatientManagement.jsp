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
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\User\\Documents\\GitHub\\registered\\src\\main\\webapp\\Data.accdb;");
	Statement smt= con.createStatement();
	String sql = "SELECT * FROM Patient ";
	ResultSet rs = smt.executeQuery(sql);
	%>

 <form  action="deletePat.jsp" >
   <H1>病患管理<H1>
	 <table border='1'>
	 <tr>
	 <th>身分證字號</th>
	 <th>姓名</th>
	 <th>刪除</th>
	 </tr>

	<%
	while(rs.next()){%>
	<tr>
    <td><%=rs.getString("ID")%></td>	 
    <td><%=rs.getString("Name")%></td>
    <td><a href="deletePat.jsp?ID=<%=rs.getString("ID")%>" class="Btn_Red">刪除</a></td>
	</tr>
	<%}	
	con.close();
	%>
</form>
</body>
</html>