<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert into</title>
</head>
<body>
	
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\User\\Documents\\GitHub\\registered\\src\\main\\webapp\\Data.accdb;");
	Statement smt= con.createStatement();
	
	//改成你們資料庫裡的欄位名稱，等號左右都要改成一樣的
	String ID = new String(request.getParameter("ID"));
	String Name = new String(request.getParameter("Name"));
	
	
		
	try{
		//把要欄位名稱也放到下方語法對應的位置
		smt.execute("SELECT ID, Name FROM Patient WHERE ID= '"+ID+"' AND Name= '"+Name+"'");
		con.close();
		out.println("<script>");
		out.println("alert('資料查詢成功!');");
		//問號的地方寫你們新增資料後要去的檔案位置
		out.println("location='AppointmentSuccess.jsp';");
		out.println("</script>");
	
	}catch (Exception e){
		out.println("<script>");
		out.println("alert('資料查詢失敗，有欄位尚未正確!');");
		//問號的地方寫你們新增失敗後要去的檔案位置
		out.println("location='test20.jsp';");
		out.println("</script>");
	}
	%>
</body>
</html>