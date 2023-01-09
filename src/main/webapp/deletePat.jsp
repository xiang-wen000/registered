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
		smt.execute("DELETE FROM Patient WHERE ID= '"+ID+"' and Name= '"+Name+"'");
		con.close();
		out.println("<script>");
		out.println("alert('資料刪除成功!');");
		//問號的地方寫你們新增資料後要去的檔案位置
		out.println("location='PatientManagement.jsp';");
		out.println("</script>");
	
	}catch (Exception e){
		out.println("<script>");
		out.println("alert('資料刪除失敗，有欄位尚未輸入內容!');");
		//問號的地方寫你們新增失敗後要去的檔案位置
		out.println("location='PatientManagement.jsp';");
		out.println("</script>");
	}
	%>
</body>
</html>