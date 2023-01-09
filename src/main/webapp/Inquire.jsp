<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>


<html>
<head><title>查詢</title></head>

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
<%  
            String ID=request.getParameter("ID");  
            ID=new String(ID.getBytes("iso-8859-1"));  
  
            out.print("ID");  
        %>  
         <%  
            out.print("Name"+request.getParameter("Name"));  
        %>  
<body>
<h2>查詢預約</h2>
<form  action="Inquire_inquire.jsp" >

 <form method="post">
   <div class="container">
	<label for="ID"><b>身分證字號</b></label>
    <input type="text" placeholder="請輸入身分證字號" name="ID"  id="ID"required> 
    <input type="Submit" value="查詢">
   </div>
 </form>
</form>
</body>
</html>