<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%@ include file="Menu.jsp" %>


<!--<iframe src="http://localhost:8080/registered/home.jsp" width="1500px" height="100px" frameborder="0" scrolling="no"></iframe>
-->

<table>

<div class="Mtitle">網路掛號</div>

  <colgroup span="1" style="background-color:aliceblue;"></colgroup>
  <colgroup style="background-color:#FFECEC	;"></colgroup>
  <td colspan=4>2022/12/16 星期五 早上 8:30~12:00</td>
  
  <tr>
    <th>看診醫師</th>
    <th>已掛號人次</th>
  </tr>
  <tr>
    <th>林東照醫師</th>
    <td>0</td>
  </tr>
</table>
</body>
</html>

<body>     

<p></p>
   <th style="width: 200px;">身份證字號</th>
   <td colspan="2">
   <input name="ctl00$ContentPlaceHolder1$TB_ID" type="text" maxlength="10" size="20" id="ctl00_ContentPlaceHolder1_TB_ID" class="Edit" />
        </td>

<p></p>
  <input type="radio" id="初診" name="record" value="初診">
  <label for="初診">初診</label>
  <input type="radio" id="複診" name="record" value="複診">
  <label for="複診">複診</label>

<p></p>

<a href="http://localhost:8080/registered/appointment.jsp">確認</a>
<a href="http://localhost:8080/registered/appointment.jsp">重新填寫</a>

        <td colspan="3" style="text-align: center; height: 50px;">
        <div class="RedMsg">
        </div>
      
        </td>
</body>
</html>
