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
	String sql = "SELECT * FROM Patient ";
	ResultSet rs = smt.executeQuery(sql);
	%>
<H1>病患管理<H1>
	<table border='1'>
	<tr>
	<th>勾選</th>
	<th>身分證字號</th>
	<th>姓名</th>
	</tr>
	<a onclick="return&#32;confirm(&#39;是否確定取消此掛號?&#39;);" id="cancel register" class="Btn_Red" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$DL_List$ctl00$LB_DEL&#39;,&#39;&#39;)">取消掛號</a>
	<%
	while(rs.next()){%>
	<tr>
	<td><input type="checkbox" value="1" name="ID"></td>
		 <td><%=rs.getString("ID")%></td>
		 <td><%=rs.getString("Name")%></td>	 
	</tr>
	<%}	
	con.close();
	%>
	
</body>
</html>