<<<<<<< Updated upstream
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
=======
<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>

<%@ include file="test.jsp" %>
>>>>>>> Stashed changes
<html>
<head>
<body> 
<%@ include file="test.jsp" %>
 <html>
<head><title>Cancel</title></head>


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
<h2>å–æ¶ˆé ç´„</h2>
<form  action="Inquire_inquire.jsp" >
<form method="post">
<div class="container">
<<<<<<< Updated upstream
	<label for="ID"><b>èº«åˆ†è­‰å­—è™Ÿ</b></label>
    <input type="text" placeholder="Enter ID" name="ID" ID="ID"required>
    <button type="submit" name="CancelButton">å–æ¶ˆ</button>
<form>		
=======
	<label for="ID"><b>¨­¤ÀÃÒ¦r¸¹</b></label>
    <input type="text" placeholder="YourID" name="ID" required>
    <button type="submit" name="loginButton">¬d¸ß</button>
</div>
</form>
>>>>>>> Stashed changes
</body>
</html>