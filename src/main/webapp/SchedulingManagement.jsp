<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>SchedulingManagement</title></head>
<body>
<iframe src="http://localhost:8080/registered/home1.jsp" width="1500px" height="50px" frameborder="0" scrolling="no">
</iframe>
<h1>醫師班表</h1>
<style type='text/css'>
.Btn_Black { display:inline-block; font-size:15px; background-color:#D0D0D0; color:	#000000; margin:2px; padding:5px 10px;text-decoration:none; border-radius:5px;}
.Btn_Black:hover { background-color:#D0D0D0; color:	#000000;text-decoration:none;}
</style>
<style>
.btn-color {
        color:#FFECEC
        font-size:20px;
        background-color:#FFECEC;
        text:black
    }
 </style> 
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
<!-- <form  action="insertintoSch.jsp" > -->
<table>
 <tr>
    <td>休假日期:
    <input type="date" name="NotWorkDate" id="NotWorkDate"/></td>
  </tr> <br>
  <tr>
   <td><label for="NotWorkTime">休假時段:</label>
   <select  name="NotWorkTime" id="NotWorkTime">
    <option value="1">上午</option>
    <option value="2">下午</option>
    <option value="3">晚上</option>
   </select>
   </td>
   </tr><br>
  <tr>
  <td><label for="Reason">休假理由:</label>
  <select  name="Reason" id="Reason" >
    <option value="1">出國</option>
    <option value="2">到府看診</option>
    <option value="3">事假</option>
  </select> 
  </td>
   </tr><br>
   <tr>
  <td><label for="Substitute">代班:</label>
  <select  name="Substitute" id="Substitute" >
    <option value="1">陳毅文</option>
    <option value="2">陳文逸</option>
    <option value="3">陳文婕</option>
  </select> 
  </td>
   </tr>
  </table><br>
   <input type="submit" class="Btn_Black" value="確認" href="http://localhost:8080/registered/SchedulingManagement.jsp">
</form>

</body>
</html>

    