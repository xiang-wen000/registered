<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%

   Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
   Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\USER\\Documents\\GitHub\\registered\\src\\main\\webapp\\Data.accdb;");
	if(con.isClosed())
		out.println("資料庫已經關閉!<br>");
	else
		out.println("資料庫正開啟中!<br>");
	con.close();
	
	if(con.isClosed())
		out.println("資料庫已經關閉!<br>");
	else
		out.println("資料庫正開啟中!<br>");	
	%>
</body>
</html>