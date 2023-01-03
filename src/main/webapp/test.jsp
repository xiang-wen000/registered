<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<head>
<style>
body {
  font-size: 28px;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #FFFFFF;
  position: -webkit-sticky; /* Safari */
  position: sticky;
  top: 0;
}

li {
  float: left;
}

li a {
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #E0E0E0;
}

.active {
  background-color: #FFFFFF;
}
</style>
</head>
<body>



<ul>
  <li><a class="active" href="#home">首頁</a></li>
  <li><a href="#news">預約看診</a></li>
  <li><a href="#contact">查詢/取消掛號</a></li>
  <li><a href="#contact">管理者</a></li>
</ul>


<!-- Navbar -->
	<div class="w3-top">
		

 <a href="http://localhost:8080/registered/index.jsp"target="_parent"class="w3-bar-item w3-button w3-padding-large w3-white">首頁</a>
 <a href="http://localhost:8080/registered/Docterschedule.jsp"target="_parent"class="w3-bar-item w3-button w3-padding-large w3-white">預約看診</a>
 <a href="http://localhost:8080/registered/Inquire.jsp"target="_parent"class="w3-bar-item w3-button w3-padding-large w3-white">查詢/取消預約掛號</a>
 <a href="http://localhost:8080/registered/signUp.html"target="_parent"class="w3-bar-item w3-button w3-padding-large w3-white">管理者</a>
		
     </div>






</head>
</body>
</html>