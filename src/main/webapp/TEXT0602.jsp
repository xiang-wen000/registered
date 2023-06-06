<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\User\\Documents\\GitHub\\registered\\src\\main\\webapp\\Data.accdb;");
	Statement smt= con.createStatement();
	String sql = "SELECT * FROM Patient ";
	ResultSet rs = smt.executeQuery(sql);
	%>
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
<!--以下MailManagement.jsp -->	
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\User\\Documents\\GitHub\\registered\\src\\main\\webapp\\Data.accdb;");
	Statement smt= con.createStatement();
	String sql = "SELECT * FROM Email  ";
	ResultSet rs = smt.executeQuery(sql);
	%>
<!--以下MailManagement.jsp -->
	<%
	while(rs.next()){%>
	<tr>
    <td><%=rs.getString("Appointmentid")%></td>
    <td><label for="DeliveryStatus"></label>
    <select  name="DeliveryStatus" id="DeliveryStatus" >
    <option value="1">已傳送</option>
    <option value="2">未傳送</option>
    </select> 
    <td><input type="submit" class="Btn_Black" value="確認"></td>
	</tr>
	<%}	
	con.close();
	%>
</body>
</html>