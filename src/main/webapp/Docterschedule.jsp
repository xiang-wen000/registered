<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
	<iframe src="http://localhost:8080/registered/home.jsp" width="1500px" height="100px" frameborder="0" scrolling="no">
	</iframe>
	<style>
		table {
		  font-family: arial, sans-serif;
		  border-collapse: collapse;
		  width: 100%;
		}

		td, th {
		  border: 1px solid #D2E9FF  ;
		  text-align: CENTER;
		  padding: 7px;
		}

		tr:nth-child(even) {
		  background-color: #D2E9FF ;
		}
	</style>
</head>

<body>
	<table style="width:300%; border:none;">
	<tr>

	<div id="ctl00_ContentPlaceHolder1_RegCal_PL_App">
	</div>
	</tr>
	</table>

	<div id="JF"></div>
	<div id="ctl00_ContentPlaceHolder1_RegCal_PL_DeptCal">
	 
	<div id="ctl00_ContentPlaceHolder1_RegCal_UpdatePanel1">
	  

	<div style="font-size:12px; color:#afeeee; text-align:center; line-height:20px; margin-bottom:10px;">

	</div>



	<div class="Tcenter RedMsg"></div>
	<div class="Tcenter RedMsg" style="font-size:20px;">

	</div>          
	<table class="RegTable">
	<style>
	a:link, a:visited {
	  background-color:#ECF5FF;
	  border: 2px solid #C4E1FF;
	  color: black;
	  padding: 2.5px 5px;
	  border-radius: 6px;
	  font-size:30%
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	}
	</style>

	<tr>
	<th>日期</th>
	<th>上午(08:30~12:00)</th>
	<th>下午(15:00~18:00)</th>
	<th>晚上(18:30~20:30)</th>
	</tr>

	<script>
		
		const date = new Date();

		let day1 = date.getDate();
		let month1= date.getMonth() + 1;
		let year1 = date.getFullYear();
		var d = day1;
		var day = 0;
			for(var i = month1;i<= month1+1;i++)
			{
				if(i>12)
				{
					var m  = i -12;
					var year2 = year1 + 1;
				}else
				{
					m = i;
					var year2 = year1;
				}
				if(m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12)
					day = 31;
				if(m == 4 || m == 6 || m == 9 || m == 11)
					day = 30;
				if(m == 2)
				{
					if(((year1 % 4 == 0)&&(year1 % 100 != 0))||(year1 % 400 == 0))
						day = 29;
					else
						day = 28;
				}
				for(var j = d ; j <= day ; j++ )
				{
						
					document.write("<tr>");
					
					document.write("<td>" + year2 + "/" + m + "/" + j + "</td>");
					document.write("<td>"+"<a href = http://localhost:8080/registered/test20.jsp>林東照</a>"+"</td>");
					document.write("<td>"+"<a href = http://localhost:8080/registered/test20.jsp>林東照</a>"+"</td>");
					document.write("<td>"+"<a href = http://localhost:8080/registered/test20.jsp>林東照</a>"+"</td>");	
					
				}
				if(j > day)
					{
						d = 1;
					}		
			}
	</script>

</body>
</html>