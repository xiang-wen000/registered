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
	String Gender = new String(request.getParameter("Gender"));
	String MobilPhone = new String(request.getParameter("MobilPhone"));
	String Email = new String(request.getParameter("Email"));
	
		
	try{
		//��n���W�٤]���U��y�k��������m
		smt.execute("INSERT INTO Patient (ID, Name,  Gender, MobilPhone, Email) VALUES('"+ID+"','"+Name+"','"+Gender+"','"+MobilPhone+"','"+Email+"')");
		con.close();
		out.println("<script>");
		out.println("alert('��Ʒs�W���\!');");
		//�ݸ����a��g�A�̷s�W��ƫ�n�h���ɮצ�m
		out.println("location='AppointmentSuccess.jsp';");
		out.println("</script>");
	
	}catch (Exception e){
		out.println("<script>");
		out.println("alert('��Ʒs�W���ѡA�����|����J���e!');");
		//�ݸ����a��g�A�̷s�W���ѫ�n�h���ɮצ�m
		out.println("location='test20.jsp';");
		out.println("</script>");
	}
	%>
</body>
</html>