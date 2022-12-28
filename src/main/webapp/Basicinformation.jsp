<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
  border-collapse: collapse;
  width: 100%;
   
}

td, th {
  border: 1px solid #BA4A00;
  text-align: left;
  padding: 8px;
 
}

tr:nth-child(even) {
  background-color: #FFEEDD;
}
</style>
</head>
<body>


<table>
  
  <tr>
</tr>
  <tr>
  
  
<th>身份字號/病歷號</th>
<td><input name="ctl00$ContentPlaceHolder1$TB_ID" type="text" value="" size="20" id="ctl00_ContentPlaceHolder1_TB_ID" class="Edit" />

<div style="font-size:70%;color:red;">請輸入身份證字號或病歷號</div>

</td>
</tr>
  <tr>
  
</table>
<center>
<a id="ctl00_ContentPlaceHolder1_LB_Search" class="Btn_Green" href="http://localhost:8080/registered/Cancel.jsp">查詢</a>
</body>
</html>

