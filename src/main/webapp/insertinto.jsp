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
	
	//改成你們資料庫裡的欄位名稱，等號左右都要改成一樣的
	String AgencyCode = new String(request.getParameter("AgencyCode"));
	String EMDepartment = new String(request.getParameter("EMDepartment"));
	String JobTitle = new String(request.getParameter("JobTitle"));
	String SupervisorName = new String(request.getParameter("SupervisorName"));
	String ContactNumber = new String(request.getParameter("ContactNumber"));
	String ExtensionNumber = new String(request.getParameter("ExtensionNumber"));
	String Gmail = new String(request.getParameter("Gmail"));
	
	//當日時間抓取值(yyyy-MM-dd HH:mm:ss)
	Date Update = new Date( );
	SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
		
	try{
		//把要欄位名稱也放到下方語法對應的位置
		smt.execute("INSERT INTO EmployersList (AgencyCode, EMDepartment, Department, JobTitle, SupervisorName, ContactNumber, ExtensionNumber, Gmail, Update) VALUES('"+AgencyCode+"','"+EMDepartment+"','"+session.getAttribute("accessEid")+"','"+JobTitle+"','"+SupervisorName+"','"+ContactNumber+"','"+ExtensionNumber+"','"+Gmail+"','" + ft.format(Update) + "')");
		con.close();
		out.println("<script>");
		out.println("alert('資料新增成功!');");
		//問號的地方寫你們新增資料後要去的檔案位置
		out.println("location='???.jsp';");
		out.println("</script>");
	
	}catch (Exception e){
		out.println("<script>");
		out.println("alert('資料新增失敗，有欄位尚未輸入內容!');");
		//問號的地方寫你們新增失敗後要去的檔案位置
		out.println("location='???.jsp';");
		out.println("</script>");
	}
	%>
</body>
</html>