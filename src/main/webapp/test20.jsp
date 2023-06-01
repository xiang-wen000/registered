<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>

<title>Appointment</title>
<style>
.btn-color {
        color:#FFECEC
        font-size:20px;
        background-color:#FFECEC;
    }


</style>
</head>
<body> 
<%@ include file="test.jsp" %>
 
<!--<iframe src="http://localhost:8080/registered/home.jsp" width="1500px" height="50px" frameborder="0" scrolling="no">-->


<table  cellpadding="10" border = "0">


	<img src="B9E1253C-1FE6-44ED-BE0A-6E499F4DEF28.jpg" width="1550" height="250">

	<p></p>
    <colgroup span="1" style="background-color:aliceblue;"></colgroup>
    <colgroup style="background-color:#FFECEC	;"></colgroup>
    <td colspan=4>2023/06/15 星期四 早上 8:30~12:00</td>
  
	<tr>
	  <td align='center' valign="middle">看診醫師</td>
	  <td align='center' valign="middle">已掛號人次</td>
	</tr>
	<tr>
	  <td align='center' valign="middle">陳毅文醫師</td>
	  <td align='center' valign="middle">2</td>
	</tr>  
</table>

    
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
	<!-- 資料庫	<form  action="insertinto.jsp" > -->
			<p> 
				<br>
				&emsp;
				<span style="color:red">*</span> &ensp;身份證字號 &emsp;
				<input name="ID" type="text"  maxlength="10" size="20" id="ID" class="Edit" /><br><br>
				&emsp;
				<span style="color:red">*</span> &ensp;姓名 &emsp;&emsp;&emsp;&emsp;
				<input type="text" id="Name" name="Name"><br><br>
				&emsp;
				<span style="color:red">*</span> &ensp;性別 &emsp;&emsp;&emsp;&emsp;
				<input type="radio" id="Gender" name="Gender" value="1">
			    <label for="男">男性 &nbsp;</label>
				&nbsp;
				<input type="radio" id="Gender" name="Gender" value="2">
			    <label for="女">女性</label><br><br>
				&emsp;
				<span style="color:red">*</span> &ensp;出生年月日 &emsp;&emsp;&emsp;
				<input type="date" id="Birthday" name="Birthday"><br><br>
				&emsp;
				<span style="color:red">*</span> &ensp;血型 &emsp;&emsp;&emsp;
				<input type="radio" id="BloodType" name="BloodType" value="1">
			    <label for="A">A型 &nbsp;</label>
				&nbsp;
				<input type="radio" id="BloodType" name="BloodType" value="2">
			    <label for="B">B型</label>
			    &nbsp;
				<input type="radio" id="BloodType" name="BloodType" value="3">
			    <label for="O">O型</label>
			    &nbsp;
				<input type="radio" id="BloodType" name="BloodType" value="4">
			    <label for="AB">AB型</label>
			    &nbsp;
				<input type="radio" id="BloodType" name="BloodType" value="4">
			    <label for="不知道">不知道</label><br><br>
				&emsp;
				<span style="color:red">*</span> &ensp;地址 &emsp;&emsp;&emsp;
				<input type="text" id="Address" name="Address"><br><br>
				&emsp;
				<span style="color:red">*</span> &ensp;郵件 &emsp;&emsp;&emsp;
				<input type="text" id="Email" name="Email"><br><br>
				&emsp;
				<span style="color:red">*</span> &ensp;手機電話 &emsp;&emsp;&nbsp;
				<input type="text" id="MOBP" name="MOBP"><br><br>
				&emsp;
				<span style="color:red">*</span> &ensp;職業 &emsp;&emsp;&emsp;
				<select name="Occupation"id="Occupation">
                 <option value="1">工</option>
                 <option value="2">商</option> 
                 <option value="3">公教</option>
                 <option value="4">服務</option>
                 <option value="5">家管</option>
                 <option value="6">學生</option>
                 <option value="7">農林漁牧</option>
                 <option value="8">自由</option>
                 <option value="9">軍</option>
                 <option value="10">其他</option>
                 <option value="11">退休</option>
                </select>
				&emsp;
				&emsp;
				<span style="color:red">*</span> &ensp;職業其他 &emsp;&emsp;&emsp;
				<input type="text" id="Occ-other" name="Occ-other"><br><br>
				&emsp;
				&emsp;
               <span style="color:red">*</span> &ensp;候診名單公布方式 &emsp;&emsp;&emsp;
				<input type="radio" id="WAILM" name="WAILM" value="1">
			    <label for="顯示部分姓名">顯示部分姓名 &nbsp;</label>
			    &nbsp;
				<input type="radio" id="WAILM" name="WAILM" value="2">
			    <label for="不顯示姓名">不顯示姓名</label>
			    &nbsp;
				<input type="radio" id="WAILM" name="WAILM" value="3">
			    <label for="顯示全名">顯示全名</label><br><br>
				&emsp;
				&emsp;
				<span style="color:red">*</span> &ensp;緊急聯絡人 &emsp;&emsp;&emsp;
				<input type="text" id="EmerContact" name="EmerContact"><br><br>
				&emsp;
				&emsp;
				<span style="color:red">*</span> &ensp;緊急聯絡人電話 &emsp;&emsp;&emsp;
				<input type="text" id="EmerPhone" name="EmerPhone"><br><br>
				&emsp;
				<!-- 暫時 <input type="submit" class="btn btn-color"  value="確認" > -->
				<script>
                function showalert() {	
	            answer = confirm("預約資料成功！");
	            if (answer)
		        location.href="http://localhost:8080/registered/AppointmentSuccess.jsp";
                 }
               </script>
<!-- 第三種方法：使用 onClick 來完成此項工作。若 onClick 的值為偽，則連結無作用 -->
    <a href="http://localhost:8080/registered/AppointmentSuccess.jsp" onClick="return(confirm('預約資料成功！'))"class="btn btn-color">確認</a>
				
	<a class="btn btn-color" href="http://localhost:8080/registered/test20.jsp">重新填寫</a>
			</p>
	  </form>	
	</div>


	<div class="tab-pane fade" id="tab2">
		<!--資料庫 <form  action="Inquire_text20.jsp" > -->
			<p> 
				<br>
				&emsp;
				<span style="color:red">*</span> &ensp;身份證字號 &emsp;
				<input name="ID" type="text"  maxlength="10" size="20" id="ID" class="Edit" /><br><br>
				&emsp;
				<span style="color:red">*</span> &ensp;姓名 &emsp;&emsp;&emsp;&emsp;
				<input type="text" id="Name" name="Name">
				<br><br>
			<!-- 暫時<input type="Submit"  class="btn btn-color"  value="確認"> -->
			<script>
                function showalert() {	
	            answer = confirm("預約資料成功！");
	            if (answer)
		        location.href="http://localhost:8080/registered/AppointmentSuccess.jsp";
                 }
               </script>
               <!-- 第三種方法：使用 onClick 來完成此項工作。若 onClick 的值為偽，則連結無作用 -->
    <a href="http://localhost:8080/registered/AppointmentSuccess.jsp" onClick="return(confirm('預約資料成功！'))"class="btn btn-color">確認</a>
			<a class="btn btn-color" href="http://localhost:8080/registered/test20.jsp">重新填寫</a>
			</p>
		</form>
	</div>
		
</body>
</html>