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
	String NotWorkTime = new String(request.getParameter("NotWorkTime"));
	String NotWorkDate = new String(request.getParameter("NotWorkDate"));
	String Reason = new String(request.getParameter("Reason"));
	
		
	try{
		//��n���W�٤]���U��y�k��������m
		smt.execute("INSERT INTO DrLeave (NotWorkTime, NotWorkDate, Reason) VALUES('"+NotWorkTime+"','"+NotWorkDate+"','"+Reason+"')");
		con.close();
		out.println("<script>");
		out.println("alert('��Ʒs�W���\!');");
		//�ݸ����a��g�A�̷s�W��ƫ�n�h���ɮצ�m
		out.println("location='SchedulingManagement.jsp';");
		out.println("</script>");
	
	}catch (Exception e){
		out.println("<script>");
		out.println("alert('��Ʒs�W���ѡA�����|����J���e!');");
		//�ݸ����a��g�A�̷s�W���ѫ�n�h���ɮצ�m
		out.println("location='SchedulingManagement.jsp';");
		out.println("</script>");
	}
	%>
</body>
</html>