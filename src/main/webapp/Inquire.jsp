<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>

<%
session.setAttribute("access","n");
if(request.getParameter("ID") !=null){
Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\User\\Documents\\GitHub\\registered\\src\\main\\webapp\\Data.accdb;");
	Statement smt= con.createStatement
			(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String getpaperdata = "SELECT * FROM Patient WHERE ID='"+request.getParameter("ID")+"'";
	ResultSet paperrs = smt.executeQuery(getpaperdata);
	if(paperrs.next()){
		session.setAttribute("access","y");
		session.setAttribute("accessid",request.getParameter("ID"));
		session.setMaxInactiveInterval(5);
		response.sendRedirect("session.jsp");
	}else
		out.println("身分證字號不符！請重新輸入");
}
%>
<html>
<head><title>Inquire</title></head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text]{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #F0FFF0	;
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

.signbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .signbtn {
     width: 100%;
  }
}
</style>
<%@ include file="test.jsp" %>
<body>

<h2>查詢</h2>
<form method="post">
<div class="container">
	<label for="ID"><b>身分證字號</b></label>
    <input type="text" placeholder="Enter ID" name="ID" required>
	<% if(request.getParameter("ID")!= null){ %>
		value = '<%=request.getParameter("ID") %>'
	<%}%>
   
    <button type="submit" name="InquireButton">查詢</button>
</div>

    
  </div>
</form>
</body>
</html>