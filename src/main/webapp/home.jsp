<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head><title>新增資料</title></head>
<body>
    <%
    Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        Connection con=DriverManager.getConnection(
        "jdbc:ucanaccess://C:\\Users\\User\\Documents\\GitHub\\registered\\src\\main\\webapp\\Data.accdb;");
    Statement smt= con.createStatement();
    out.println("Patient");
    STRING  SQL="INSERT INTO personData(ID, Name, Gender, Email, MobilPhone) VALUES('"String"', '','','')";
    STRING  SQL2="INSERT INTO personData(ID, Name,) VALUES('', '')";
    If
    smt.executeUpdate("SQL");
    Else
    smt.executeUpdate("SQL2");
    
    
    con.close();
    %>
</body>
</html>