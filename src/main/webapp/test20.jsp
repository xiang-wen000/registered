<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>

<title>Insert title here</title>
<style>
.btn-color {
        color:#FFECEC
        font-size:20px;
        background-color:#FFECEC;
    }


</style>
</head>
<iframe src="http://localhost:8080/registered/home.jsp" width="1500px" height="100px" frameborder="0" scrolling="no">
</iframe>
<table  cellpadding="10" border = "0">


	<img src="B9E1253C-1FE6-44ED-BE0A-6E499F4DEF28.jpg" width="1200" height="300">

	<p></p>
    <colgroup span="1" style="background-color:aliceblue;"></colgroup>
    <colgroup style="background-color:#FFECEC	;"></colgroup>
    <td colspan=4>2022/12/16 星期五 早上 8:30~12:00</td>
  
	</tr>
	<tr>
	  <td align='center' valign="middle">看診醫師</td>
	  <td align='center' valign="middle">已掛號人次</td>
	</tr>
	<tr>
	  <td align='center' valign="middle">林東照醫師</td>
	  <td align='center' valign="middle">0</td>
	</tr>
</table>
<body>     
	<br>
	<ul class="nav nav-radio" id="myTab">
		<li class="nav-item">
			<a class="nav-link" data-bs-toggle="pill" href="#tab1" >
				<input type="radio" class="form-check-input">&nbsp;初診
			</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" data-bs-toggle="pill" href="#tab2">
				<input type="radio"  class="form-check-input">&nbsp;複診
			</a>
		</li>
	</ul>
	
	<!-- 內容 -->

	<div class="tab-content" id="myTabContent">
	<div class="tab-pane fade" id="tab1" >
		<form id="myForm" >
			<p> 
				<br>
				&emsp;
				<span style="color:red">*</span> &ensp;身份證字號 &emsp;
				<input name="ctl00$ContentPlaceHolder1$TB_ID" type="text"  maxlength="10" size="20" id="ctl00_ContentPlaceHolder1_TB_ID" class="Edit" /><br><br>
				&emsp;
				<span style="color:red">*</span> &ensp;姓名 &emsp;&emsp;&emsp;&emsp;
				<input type="text" id="name" name="name"><br><br>
				&emsp;
				<span style="color:red">*</span> &ensp;性別 &emsp;&emsp;&emsp;&emsp;
				<input type="radio" id="男性" name="your gender" value="男性">
			    <label for="男性">男性 &nbsp;</label>
				&nbsp;
				<input type="radio" id="女性" name="your gender" value="女性">
			    <label for="女性">女性</label><br><br>
				&nbsp;
				<span style="color:red">*</span> &ensp;手機電話 &emsp;&emsp;&nbsp;
				<input type="text" id="phone" name="phone">
				<input type="button" onclick="formReset()" value="重新輸入">
			</p>
		</form>
	</div>
	<div class="tab-pane fade" id="tab2">
		<form id="myForm">
			<p> 
				<br>
				&emsp;
				<span style="color:red">*</span> &ensp;身份證字號 &emsp;
				<input name="ctl00$ContentPlaceHolder1$TB_ID" type="text"  maxlength="10" size="20" id="ctl00_ContentPlaceHolder1_TB_ID" class="Edit" /><br><br>
				&emsp;
				<span style="color:red">*</span> &ensp;姓名 &emsp;&emsp;&emsp;&emsp;
				<input type="text" id="name" name="name">
			</p>
		</form>
	</div>

	<br>&emsp;<a class="btn btn-color" href="http://localhost:8080/registered/AppointmentSuccess.jsp">確認</a>
			  <a class="btn btn-color" href="http://localhost:8080/registered/test20.jsp">重新填寫</a>

			<td colspan="3" style="text-align: center; height: 50px;">
			<div class="RedMsg">
			</div>
			</td>
			
	<script>
		function formReset()
		{
		document.getElementById("myForm").reset()
		}
	</script>
</body>
</html>