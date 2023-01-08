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
	String NotWorkTime = new String(request.getParameter("NotWorkTime"));
	String NotWorkDate = new String(request.getParameter("NotWorkDate"));
	String Reason = new String(request.getParameter("Reason"));
	
		
	try{
		//把要欄位名稱也放到下方語法對應的位置
		smt.execute("INSERT INTO DrLeave (NotWorkTime, NotWorkDate, Reason) VALUES('"+NotWorkTime+"','"+NotWorkDate+"','"+Reason+"')");
		con.close();
		out.println("<script>");
		out.println("alert('資料新增成功!');");
		//問號的地方寫你們新增資料後要去的檔案位置
		out.println("location='SchedulingManagement.jsp';");
		out.println("</script>");
	
	}catch (Exception e){
		out.println("<script>");
		out.println("alert('資料新增失敗，有欄位尚未輸入內容!');");
		//問號的地方寫你們新增失敗後要去的檔案位置
		out.println("location='SchedulingManagement.jsp';");
		out.println("</script>");
	}
	%>
</body>
</html>