<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<iframe src="http://localhost:8080/registered/home1.jsp" width="1500px" height="50px" frameborder="0" scrolling="no">
</iframe>
<h1>醫師班表</h1>
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
<form  action="insertintoSch.jsp" >	
<table>
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
    <td>休假日期:
    <input type="date" name="NotWorkDate" id="NotWorkDate"/></td>
  </tr> <br>
  <tr>
  <td><label for="Reason">休假理由:</label>
  <select id="Reason" name="Reason" id="Reason">
    <option value="1">出國</option>
    <option value="2">到府看診</option>
    <option value="3">事假</option>
  </select> 
   </td>
   </table>
    <input type="submit" value="確認">
</form>

</body>
</html>

    