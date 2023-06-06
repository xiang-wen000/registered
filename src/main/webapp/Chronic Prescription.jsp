<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>

<title>Chronic Prescription</title>
<style>
.btn-color {
        color:#FFECEC
        font-size:20px;
        align：center;
        background-color:#FFECEC;
    }
</style>
<style>
		table {
		  font-family: arial, sans-serif;
		  border-collapse: collapse;
          margin-left:auto; 
          margin-right:auto;
		  width: 30%;
		}

		td, th {
		  border: 2px solid #D2E9FF  ;
		  text-align:left;
		  padding: 8px;
		}
</style>
<body> 
<%@ include file="test.jsp" %>
	<div style="text-align:center;"><h1>慢籤預約</h1></div><br>
	 <table border='1'>
	 <tr>
	 <th><font size="5" face="Arial">慢籤號碼：</font><input name="CHRPN" type="text"  maxlength="10" size="20" id="CHRPN"/></th>
	 </tr>
	 <tr>
	 <th><font size="5" face="Arial">身分證字號：</font><input name="ID" type="text"  maxlength="10" size="20" id="ID"/></th>
	 </tr>
	 <tr>
	 <th><font size="5" face="Arial">出生年月日：</font><input type="date" id="Birthday" name="Birthday"></th>
	 </tr>
	 <tr>
	 <th><font size="5" face="Arial">預約日期：</font><input type="date" id="AppDate" name="AppDate"></th>
	 </tr>
     <tr>
	 <th><font size="5" face="Arial">預約時段：</font>
	 <select name="AppTime" id="AppTime" >
     <option value="1">上午</option>
     <option value="2">下午</option>
     <option value="3">晚上</option>
    </select></th>
	 </tr>
	 <tr>
	<!-- 第三種方法：使用 onClick 來完成此項工作。若 onClick 的值為偽，則連結無作用 -->
	<th>
	     <a href="http://localhost:8080/registered/Chronic Prescription.jsp" onClick="return(confirm('預約資料成功！'))"class="btn btn-color">確認</a>
	</th>
	 </tr>
	<script>
                function showalert() {	
	            answer = confirm("預約成功！");
	            if (answer)
		        location.href="http://localhost:8080/registered/Chronic Prescription.jsp";
                 }
    </script>

	 
 </form>
</body>
</html>