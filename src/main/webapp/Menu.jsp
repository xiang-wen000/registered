<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<style>
body {
  font-size: 20px;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #FFFFFF;
  position: -webkit-sticky;
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
<!-- Navbar -->
	<div class="w3-top">
		<div class="w3-bar w3-white w3-card w3-left-align w3-large">
 <a href="index.jsp"target="_parent"class="w3-bar-item w3-button w3-padding-large w3-white">首頁</a>
 <a href="Docterschedule.jsp"target="_parent"class="w3-bar-item w3-button w3-padding-large w3-white">預約看診</a>
 <a href="Inquire.jsp"target="_parent"class="w3-bar-item w3-button w3-padding-large w3-white">查詢/取消預約掛號</a>
 <a href="signUp.html"target="_parent"class="w3-bar-item w3-button w3-padding-large w3-white">管理者</a>
		
     </div>
 </body>    
</html>