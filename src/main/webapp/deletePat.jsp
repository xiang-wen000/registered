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
	
	//�令�A�̸�Ʈw�̪����W�١A�������k���n�令�@�˪�
	String ID = new String(request.getParameter("ID"));
	String Name = new String(request.getParameter("Name"));
	
	try{
		//��n���W�٤]���U��y�k��������m
		smt.execute("DELETE FROM Patient WHERE ID= '"+ID+"' and Name= '"+Name+"'");
		con.close();
		out.println("<script>");
		out.println("alert('��ƧR�����\!');");
		//�ݸ����a��g�A�̷s�W��ƫ�n�h���ɮצ�m
		out.println("location='PatientManagement.jsp';");
		out.println("</script>");
	
	}catch (Exception e){
		out.println("<script>");
		out.println("alert('��ƧR�����ѡA�����|����J���e!');");
		//�ݸ����a��g�A�̷s�W���ѫ�n�h���ɮצ�m
		out.println("location='PatientManagement.jsp';");
		out.println("</script>");
	}
	%>
</body>
</html>