<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<h2>取消預約</h2>
<!-- 暫時<form  action="Inquire_inquire.jsp" > -->
<form method="post">
<div class="container">
	<label for="ID"><b>身分證字號</b></label>
    <input type="text" placeholder="Enter ID" name="ID" ID="ID"required>
  <!-- 暫時 <button type="submit" name="CancelButton">取消</button> --> 
   <button class='popuptest' type="botton" value="取消">取消</button>
    <p class='show'></p>

    <script>
        var button = document.querySelector('.popuptest');
        var showtxt = document.querySelector('.show');

        function popup2(e) {
            window.confirm('是否取消預約？');
            if (confirm('是否取消預約？') == true) {
                showtxt.innerHTML = '您已取消預約';
            } else {
                showtxt.innerHTML = '您已取消確認';
            }

        };
        button.addEventListener('click', popup2);
    </script>
<form>		
</body>
</html>