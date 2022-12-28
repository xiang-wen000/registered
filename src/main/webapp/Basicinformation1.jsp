<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>

<text>網路掛號</text>

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
  <input type="radio" id="初診" name="record" value="初診">
  <label for="初診">初診</label>
  <input type="radio" id="複診" name="record" value="複診">
  <label for="複診">複診</label>


<p></p>
 <text>身分證字號</text>


 <input type="text" id="appointmentid" name="appointmentid">



</tr>

<p></p>
<a href="確認的網址">確認</a>
<a href="http://localhost:8080/registered/Basicinformation1.jsp">重新填寫</a>


<tr>
        <td colspan="3" style="text-align: center; height: 50px;">
        <div class="RedMsg">
        </div>
      
        </td>
</tr>
</body>
</html>