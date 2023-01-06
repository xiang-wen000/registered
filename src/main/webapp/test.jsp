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
body, h1, h2, h3, h4, h5, h6 {
   font-family: "Lato", sans-serif
}

.w3-bar, h1, button {
   font-family: "Montserrat", sans-serif
}

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


<ul>
  
  <li><a class="active" href="http://localhost:8080/registered/index.jsp">首頁</a></li>
  <li><a href="http://localhost:8080/registered/Docterschedule.jsp">預約看診</a></li>
  <li><a href="http://localhost:8080/registered/Inquire.jsp">查詢/取消掛號</a></li>
  <li><a href="http://localhost:8080/registered/login.jsp">管理者</a></li>
  
</ul>

</head>

</body>
</html>