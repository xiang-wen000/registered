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
String NotWorkTime=request.getParameter("NotWorkTime");
String NotWorkDate=request.getParameter("NotWorkDate");
String Reason=request.getParameter("Reason");
try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\User\\Documents\\GitHub\\registered\\src\\main\\webapp\\Data.accdb;");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into  DrLeave(NotWorkTime, NotWorkDate, Reason)values('"+NotWorkTime+"','"+NotWorkDate+"','"+Reason+"')");
        out.println("Data is successfully inserted!");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
 %>
</body>
</html>