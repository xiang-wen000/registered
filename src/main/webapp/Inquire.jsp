<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>

<%
 if(request.getParameter("ID") !=null &&
	request.getParameter("ID") !=null){
        Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\User\\Documents\\GitHub\\registered\\src\\main\\webapp\\Data.accdb;");
	Statement smt= con.createStatement
			(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String getpaperdata = "SELECT * FROM Patient WHERE ID='"+
			request.getParameter("ID")+"' AND ID='" +
			request.getParameter("ID")+"'";
	ResultSet paperrs = smt.executeQuery(getpaperdata);
	if(paperrs.next()){
		response.sendRedirect("Cancel.jsp");
	}else
		out.println("身分證字號不符！請重新登入");
}
%>
<html>
<head><title>登入頁面</title></head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 此style參考自www.w3schools.com -->
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #ABFFFF;
  color: black;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.container {
  padding: 16px;
}

span.memberpwd {
  float: right;
  padding-top: 16px;
}

</style>
<body>
<h2>查詢預約</h2>
<form method="post">
<div class="container">
	<label for="ID"><b>身分證字號</b></label>
    <input type="text" placeholder="YourID" name="ID" required>

    <label for="ID"><b>再次確認</b></label>
    <input type="password" placeholder="YourID Again" name="ID" required>
        
    <button type="submit" name="loginButton">查詢</button>
</div>
</form>
</body>
</html>