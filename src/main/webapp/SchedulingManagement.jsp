<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<iframe src="http://localhost:8080/registered/home1.jsp" width="1500px" height="50px" frameborder="0" scrolling="no">
</iframe>
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection(
		"jdbc:ucanaccess://C:\\Users\\User\\Documents\\GitHub\\registered\\src\\main\\webapp\\Data.accdb;");
	Statement smt= con.createStatement();
	out.println("新增資料至stu");
smt.executeUpdate("INSERT INTO DrLeave (NotWorkDate,NotWorkTime,reason) VALUES ('"+date+"', '"+string+"','"+string+"');");
	
	con.close();
	%>
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
	
<table>
 <tr>
    <td>休假日期:
    <input type="date" name="NotWorkDate" /></td>
  </tr><br>
  <tr>
  <td><label for="NotWorkTime">休假時段:</label>
  <select id="NotWorkTime" name="NotWorkTime">
    <option value="1">早上</option>
    <option value="2">下午</option>
    <option value="3">晚上</option>
  </select><tr></td><br>
  <tr>
  <td><label for="reason">休假理由:</label>
  <select id="reason" name="reason">
    <option value="1">出國</option>
    <option value="2">到府看診</option>
    <option value="3">事假</option>
  </select>
  <input type="submit"
</table>
</form>
</body>
</html>

    