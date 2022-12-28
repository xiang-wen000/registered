<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<head>
<title>Clinic Appointment System</title>
<meta charset=BIG5">
<meta name="viewport" content="width=device-width, initial-scale="1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Lato", sans-serif
}

.w3-bar, h1, button {
	font-family: "Montserrat", sans-serif
}

.fa-anchor, .fa-coffee {
	font-size: 200px
}
</style>
</head>
<body>

	<!-- Navbar -->
	<div class="w3-top">
		<div class="w3-bar w3-white w3-card w3-left-align w3-large">
 
 <a href="#" class="w3-bar-item w3-button w3-padding-large w3-white">首頁</a> 
 <a href="http://localhost:8080/registered/Docterschedule.jsp" class="w3-bar-item w3-button w3-padding-large w3-white">預約看診</a>
	
 <a href="#" class="w3-bar-item w3-button w3-padding-large w3-white">查詢/取消預約掛號</a>
		
     </div>

		

	<!-- Header -->
<body style="background-color: AliceBlue;">
	<header class="w3-container w3-center" style="padding: 128px 16px">
		<h1 class="w3-margin w3-jumbo">陳毅文診所</h1>
		<p class="w3-xlarge">網路掛號預約系統</p>
		<a href="http://localhost:8080/registered/Docterschedule.jsp"
			class="w3-button w3-black w3-padding-large w3-large w3-margin-top">預約</a>
	</header>

	<div class="w3-container w3-black w3-center w3-opacity w3-padding-64">
		<h1 class="w3-margin w3-xlarge">掛號辦法</h1>
		<h1 class="w3-margin w3-xlarge">
			請攜帶國民身分證及健保卡。 <BR> 6歲以下兒童請攜帶健兒手冊及健保卡。 <BR>
			新生兒需辦理戶口登記，加入健保後始能享有全民健保之保障。
		</h1>
		<BR>
	</div>

	<!-- Footer -->
	<footer class="w3-container w3-padding-64 w3-center w3-opacity">
		<div class="w3-xlarge w3-padding-32">
			<h1 class="w3-margin w3-xlarge">預約注意事項</h1>
			28天內之門診皆可預約掛號。 <BR> 預約掛號者請直接治門診看診。 <BR>
			取消預約掛號者，請於開診前一日以電話告知。 <BR> 預約掛號請撥 04-7810566
		</div>


		<script>
// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}
</script>
</body>
</html>