<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="BIG5">
<title>Register online</title>
</head>
<body>
<table>

<a href="http://localhost:8080/registered/Docterschedule.jsp">上一頁</a>
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
      
<br>
<tr>
<tr>
        <th style="width: 200px;">身份證/居留證</th>
        <td colspan="2">
        <input name="ctl00$ContentPlaceHolder1$TB_ID" type="text" maxlength="10" size="20" id="ctl00_ContentPlaceHolder1_TB_ID" class="Edit" />
        <div style="font-size:60%;color:red;">外籍人士請輸入居留證(舊式)或護照號碼前10 碼</div>
        </td>
</tr>

<div id="ctl00_ContentPlaceHolder1_PL_1st">
		
<tr>
          <th>驗證碼</th>
          <td style="width: 80px;">
          <input name="ctl00$ContentPlaceHolder1$TB_CODE" type="text" size="10" id="ctl00_ContentPlaceHolder1_TB_CODE" class="Edit" /></td>
          <td>
          <img id="ctl00_ContentPlaceHolder1_ImgChkCode" class="pic" src="https://www.scmh.org.tw/CheckImageCode.aspx" /></td>
</tr>
      
</div>

<tr>
        <td colspan="3" style="text-align: center; height: 50px;">
        <div class="RedMsg">
        </div>
        <a href="http://localhost:8080/registered/Basicinformation.jsp">下一步</a>
        <a href="http://localhost:8080/registered/appointment.jsp">重新填寫</a>
        </td>
</tr>
</body>
</html>