<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>


<tr>
     <th><span style="color:red">*</span>姓名</th>
     <input name="Name" type="text" size="20" id="TB_Name" class="Edit" placeholder="姓名" />
<p></p>
    <th><span style="color:red">*</span>生日</th>
 <input type="date" id="birthday" name="birthday">
<p></p>
     <th><span style="color:red">*</span>性別</th>
     <span id="RB_Gender"><input id="RB_Gender_0" type="radio" name="ctl00$ContentPlaceHolder1$RB_Gender" value="M" /><label for="RB_Gender_0">男性</label><input id="RB_Gender_1" type="radio" name="ctl00$ContentPlaceHolder1$RB_Gender" value="F" /><label for="RB_Gender_1">女性</label></span>
</tr>

</body>
</html>