<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>appointment</title>
</head>

<body>
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="http://localhost:8080/registered/index.jsp" class="w3-bar-item w3-button w3-padding-large w3-white">首頁</a>
<br>
        <th style="width: 200px;">身份證/居留證/病歷號</th>
        <td colspan="2">
        <input name="ctl00$ContentPlaceHolder1$TB_ID" type="text" maxlength="10" size="20" id="ctl00_ContentPlaceHolder1_TB_ID" class="Edit" />
        <div style="font-size:60%;color:red;">外籍人士請輸入居留證(舊式)或護照號碼前10 碼</div>
        </td>


<div id="ctl00_ContentPlaceHolder1_PL_1st">
		

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