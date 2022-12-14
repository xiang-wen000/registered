<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="/action_page.php">
  <span style="color:red">*</span>姓名
  <input type="text" id="fname" name="fname">
<p></p>
  <span style="color:red">*</span>生日
  <input type="date" id="birthday" name="birthday" value="yyyy-mm-dd">
<p></p>
  <span style="color:red">*</span>性別
  <input type="radio" id="男性" name="your gender" value="男性">
  <label for="男性">男性</label>
  <input type="radio" id="女性" name="your gender" value="女性">
  <label for="女性">女性</label>
<p></p>
  <span style="color:red">*</span>血型
  <input type="radio" id="A" name="your blood type" value="A">
  <label for="A">A</label>
  <input type="radio" id="B" name="your blood type" value="B">
  <label for="B">B</label>
  <input type="radio" id="AB" name="your blood type" value="AB">
  <label for="AB">AB</label>
  <input type="radio" id="O" name="your blood type" value="O">
  <label for="O">O</label>
<p></p>
  <span style="color:red">*</span>電話
  <input type="text" id="phone" name="phone">
  <div style="font-size:60%;color:red;">(請填入格式:0981234567)</div>
<p></p>
  <span style="color:red">*</span>家用電話
  <input type="text" id="homephone" name="homephone">
  <div style="font-size:60%;color:red;">(請填入格式:0233457894)</div>
<p></p> 
  <text>電子郵件</text>
  <input type="text" id="e-mail" name="e-mail">
<p></p>	
<span style="color:red">*</span>戶籍地址
			<text>請選擇縣市</text>
			<select id="County-list" onchange="changeCounty(this.selectedIndex)"></select>
            <text>請選擇鄉鎮[市]區</text>
			<select id="area-list"></select>
		
		<script type="text/javascript">
			var Counties=['台北市','新北市','基隆市','桃園市','新竹市','新竹縣','苗栗縣','台中市','彰化縣','南投縣','雲林縣','嘉義市','嘉義縣','臺南市','高雄市','屏東縣','臺東縣','花蓮縣','宜蘭縣','澎湖縣','金門縣','連江縣'];
			var CountySelect=document.getElementById("County-list");
			var inner="";
			for(var i=0;i<Counties.length;i++){
				inner=inner+'<option value=i>'+Counties[i]+'</option>';
			}
			CountySelect.innerHTML=inner;
			
			
			var areas=new Array();
			areas[0]=['中正區','大同區','中山區','松山區','大安區','萬華區','信義區','士林區','北投區' ,'內湖區','南港區','文山區'];

			areas[1]=['萬里區','金山區','板橋區','汐止區','深坑區','石碇區','瑞芳區',' 平溪區','雙溪區','貢寮區','新店區','坪林區','烏來區','永和區','中和區','土城區','三峽區','樹林區','鶯歌區','三重區','新莊區','泰山區','林口區','蘆洲區','五股區','八里區','淡水區','三芝區','石門區'];	

			areas[2]=['仁愛區','信義區','中正區','中山區','安樂區','暖暖區','七堵區'];	

			areas[3]=['中壢區','平鎮區','龍潭區','楊梅區','新屋區','觀音區','桃園區','龜山區','八德區','大溪區','復興區','大園區','蘆竹區'];

			areas[4]=['東區','北區','香山區',]

			areas[5]=['竹北市','湖口鄉','新豐鄉','新埔鎮','關西鎮','芎林鄉','寶山鄉','竹東鎮','五峰鄉','橫山鄉','尖石鄉','北埔鄉','峨眉鄉',];
			
			areas[6]=['竹南鎮','頭份市','三灣鄉','南庄鄉','獅潭鄉','後龍鎮','通霄鎮','苑裡鎮','苗栗市','造橋鄉','頭屋鄉','公館鄉','大湖鄉','泰安鄉','銅鑼鄉','三義鄉','西湖鄉','卓蘭鎮',];

			
			function changeCounty(index){
				var Sinner="";
				for(var i=0;i<areas[index].length;i++){
					Sinner=Sinner+'<option value=i>'+areas[index][i]+'</option>';
				}
				var areaSelect=document.getElementById("area-list");
				areaSelect.innerHTML=Sinner;
			}
			changeCounty(document.getElementById("County-list").selectedIndex);
		</script>
	</body>
</html>


  
</form>





</body>
</html>