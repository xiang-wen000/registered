<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%
	int a=10;
	out.println(" 變數 a=10 <BR>");
	
	if(a>10){
		out.println(" 變數 a>10 的條件式成立");
	}else if(a==10){
	out.println(" 變數 a==10 的條件式成立");
	}else
	{out.println("運算結束");	
	}
	%>
</body>
</html>