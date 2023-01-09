<%@page contentType="text/html; charset=BIG5"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<html>
	<head><title>Select</title></head>
	<meta charset="BIG5">
<body>
<iframe src="http://localhost:8080/registered/home1.jsp" width="1500px" height="50px" frameborder="0" scrolling="no">
</iframe>
<style>
		table {
		  font-family: arial, sans-serif;
		  border-collapse: collapse;
		  width: 100%;
		}

		td, th {
		  border: 1px solid #D2E9FF  ;
		  text-align: left;
		  padding: 7px;
		}
	</style>
<style type='text/css'>
.Btn_Red { display:inline-block; font-size:15px; background-color:#f33d2c; color:#fff; margin:2px; padding:5px 15px;text-decoration:none; border-radius:6px;}
.Btn_Red:hover { background-color:#c12618; color:#fff;text-decoration:none;}
</style>
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\User\\Documents\\GitHub\\registered\\src\\main\\webapp\\Data.accdb;");
	Statement smt= con.createStatement();
	String sql = "SELECT DrSchedule.ConsultatioTime, DrSchedule.ConsultatioDate,  DrSchedule.LimitPeople, DrSchedule.ReservedPeople FROM DrSchedule;"
	ResultSet rs = smt.executeQuery(sql);
	%>
 <table  cellpadding="10" border = "0">


	<img src="B9E1253C-1FE6-44ED-BE0A-6E499F4DEF28.jpg" width="1550" height="250">

	<p></p>
    <colgroup span="1" style="background-color:aliceblue;"></colgroup>
    <colgroup style="background-color:#FFECEC	;"></colgroup>
    <td colspan=4>2022/12/16 星期五 早上 8:30~12:00</td>
  
	<tr>
	  <td align='center' valign="middle">看診醫師</td>
	  <td align='center' valign="middle">已掛號人次</td>
	</tr>
	<tr>
	  <td align='center' valign="middle">林東照醫師</td>
	  <td align='center' valign="middle"><%=rs.getString("ReservedPeople")%></td>
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
<form  action="insertinto.jsp" >
<div class="tab-content" id="myTabContent">
	<div class="tab-pane fade" id="tab1" >
		<form id="myForm" >
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
			    <label for="男性">男性 &nbsp;</label>
				&nbsp;
				<input type="radio" id="Gender" name="Gender" value="2">
			    <label for="女性">女性</label><br><br>
				&emsp;
				<span style="color:red">*</span> &ensp;郵件 &emsp;&emsp;&emsp;
				<input type="text" id="Email" name="Email"><br><br>
				&emsp;
				<span style="color:red">*</span> &ensp;手機電話 &emsp;&emsp;&nbsp;
				<input type="text" id="MobilPhone" name="MobilPhone">
				<input type="button" onclick="formReset()" value="重新輸入">
			</p>
		</form>
	</div>
</form>	

	<div class="tab-pane fade" id="tab2">
		<form id="myForm" >
			<p> 
				<br>
				&emsp;
				<span style="color:red">*</span> &ensp;身份證字號 &emsp;
				<input name="ID" type="text"  maxlength="10" size="20" id="ID" class="Edit" /><br><br>
				&emsp;
				<span style="color:red">*</span> &ensp;姓名 &emsp;&emsp;&emsp;&emsp;
				<input type="text" id="Name" name="Name">
				
			</p>
		</form>
	</div>
			<input type="Submit"  class="btn btn-color"  value="確認">
			<a class="btn btn-color" href="http://localhost:8080/registered/test20.jsp">重新填寫</a>
			<td colspan="3" style="text-align: center; height: 50px;">
			<div class="RedMsg">
			</div>
			</td>
		

		
	<script>
		function formReset()
		{
		document.getElementById("myForm").rese.t()
		}
	</script>
</body>
</html>