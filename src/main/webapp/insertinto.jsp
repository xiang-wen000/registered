<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert into</title>
</head>
<body>
	
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	
	//�令�A�̸�Ʈw�̪����W�١A�������k���n�令�@�˪�
	String AgencyCode = new String(request.getParameter("AgencyCode"));
	String EMDepartment = new String(request.getParameter("EMDepartment"));
	String JobTitle = new String(request.getParameter("JobTitle"));
	String SupervisorName = new String(request.getParameter("SupervisorName"));
	String ContactNumber = new String(request.getParameter("ContactNumber"));
	String ExtensionNumber = new String(request.getParameter("ExtensionNumber"));
	String Gmail = new String(request.getParameter("Gmail"));
	
	//���ɶ������(yyyy-MM-dd HH:mm:ss)
	Date Update = new Date( );
	SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
		
	try{
		//��n���W�٤]���U��y�k��������m
		smt.execute("INSERT INTO EmployersList (AgencyCode, EMDepartment, Department, JobTitle, SupervisorName, ContactNumber, ExtensionNumber, Gmail, Update) VALUES('"+AgencyCode+"','"+EMDepartment+"','"+session.getAttribute("accessEid")+"','"+JobTitle+"','"+SupervisorName+"','"+ContactNumber+"','"+ExtensionNumber+"','"+Gmail+"','" + ft.format(Update) + "')");
		con.close();
		out.println("<script>");
		out.println("alert('��Ʒs�W���\!');");
		//�ݸ����a��g�A�̷s�W��ƫ�n�h���ɮצ�m
		out.println("location='???.jsp';");
		out.println("</script>");
	
	}catch (Exception e){
		out.println("<script>");
		out.println("alert('��Ʒs�W���ѡA�����|����J���e!');");
		//�ݸ����a��g�A�̷s�W���ѫ�n�h���ɮצ�m
		out.println("location='???.jsp';");
		out.println("</script>");
	}
	%>
</body>
</html>