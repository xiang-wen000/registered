<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%
if(session.getAttribute("access") !="y"){
	out.println("您無權存取此網頁，或超過存取期限！");
}else{
	out.println("登入成功<br>");
	out.println("登入者："+
			session.getAttribute("accessid")+"！<br>");
}
%>
<html>
</body>
</html>