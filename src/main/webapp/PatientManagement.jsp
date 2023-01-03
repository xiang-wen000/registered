<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<iframe src="http://localhost:8080/registered/home1.jsp" width="1500px" height="50px" frameborder="0" scrolling="no">
</iframe>
<h1>病患名單</h1>
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
<table>
    <tr>
        <td>ID/NAME</td>
        
    </tr>
    <tr>
        <td><input type="checkbox" value="1" name="ID">XXXXXX/姓名</td>
        
    </tr>
    <tr>
        <td><input type="checkbox" value="1" name="ID">XXXXXX/姓名</td>
    </tr>
    <tr>
        <td><input type="checkbox" value="1" name="ID">XXXXXX/姓名</td>
    </tr>
    

</table>
    <a onclick="return&#32;confirm(&#39;是否確定取消此掛號?&#39;);" id="cancel register" class="Btn_Red" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$DL_List$ctl00$LB_DEL&#39;,&#39;&#39;)">取消掛號</a>
</body>
</html>

    