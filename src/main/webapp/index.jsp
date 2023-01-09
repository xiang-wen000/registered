<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Clinic Appointment System</title>
<meta charset=BIG5">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
	<!-- Header -->

<%@ include file="test.jsp" %>


<body style="background-color: AliceBlue;">



<div class="carousel">
    <div class="container">
        <a href="" target="_blank"><img src="White Minimalist Dental Clinic Facebook Cover-5.jpg"/></a>
        <a href="" target="_blank"><img src="COVID-19.jpg"/></a>

    </div>
    <div class="shift">
        <div class="btn left" onclick="leftShift()">&lt;</div>
        <div class="btn right" onclick="rightShift()">&gt;</div>
    </div>
    <div class="bottom"></div>
</div>

<style>
    .carousel {
        width: 1000px;
        height: 350px;
        margin : 100px auto;

        border-radius: 16px;

        overflow: hidden;

        position: relative;
        
    }

    .carousel .container {
        width: 100%;
        height: 100%;

        position: relative;
        left: 0%;

        display: flex;

        /* 过渡动画 1s */
        transition: all 3.5s;
    }

    .carousel .container a {
        width: 100%;
        height: 100%;

        flex-shrink: 0;
       
    }

    .carousel .container a img {
        width: 100%;
        height: 100%;

        object-fit: cover;
    }

    .carousel .shift .btn {
        /* 绝对定位且垂直居中 */
        position: absolute;
        top: 0;
        bottom: 0;
        margin: auto 0;

        background-color: #F0F0F0; 
        color: white;

        width: 50px;
        height: 50px;
        border-radius: 8px;

        font-size: 40px;
        font-weight: bold;

        /* 字符水平垂直居中 */
        line-height: 50px;
        text-align: center;

        cursor: pointer;

        user-select: none;

        /* 不透明度 0.5 */
        opacity: 0.5;
    }
    .carousel .shift .left {
        left: 20px;
    }
    .carousel .shift .right {
        right: 20px;
    }

    .carousel .bottom {
        position: absolute;

        bottom: 20px;
        
 
        /* 绝对定位水平居中 */
        left: 0;
        right: 0;
        margin: 0 auto;

        /* 宽度等同于内容宽度 */
        /* 知识点：https://3yya.com/courseware/chapter/79#关键字属性 */
        width: max-content;

        display: flex;
        /* 指示器间距 */
        gap: 10px;
    }

    .carousel .bottom .indicator {
        height: 5px;
        width: 40px;

        background-color: teal;

        opacity: 0.5;
        cursor: pointer;
    }

    .carousel:hover .bottom .indicator {
        opacity: 1;
    }
    .carousel:hover .shift .btn {
        opacity: 1;
    }
</style>
<script>
    // 显示的图片下标
    let index = 0

    // 图片的数量
    let imageCount = document.querySelectorAll(
        ".carousel .container img"
    ).length

    const bottom = document.querySelector(".carousel .bottom")
    for (let i = 0; i < imageCount; i++) {
        // DOM 操作
        // 知识点：https://3yya.com/courseware/chapter/162

    	// 创建底部按钮
        const indicator = document.createElement("div")
        indicator.classList.add("indicator")
        indicator.onclick = () => setIndex(i)

        bottom.append(indicator)
    }

    
    function createAuto() {
        return setInterval(() => {
            index++
            refresh()
        }, 11000)
    }

 // 自动滚动
    let autoTimer = createAuto()

    function refresh() {
        if (index < 0) {
            // 下标小于 0 时
            // 设置最右的图片
        	index = imageCount - 1
        } else if (index >= imageCount) {
            // 下标超过上限时
            // 设置最左的图片
        	 index = 0
        }

        // 获取轮播框元素
        let carousel = document.querySelector(".carousel")

        //获取轮播框的宽度
        let width = getComputedStyle(carousel).width
        width = Number(width.slice(0, -2))

        carousel.querySelector(".container").style.left =
            index * width * -1 + "px"
    }
 
    let refreshWrapper = (func) => {
        // refresh 装饰器
        return function (...args) {
            let result = func(...args)
            refresh()

            // 重置自动滚动
            clearInterval(autoTimer)
            autoTimer = createAuto()
            return result
        }
    }
    

    let leftShift = refreshWrapper(() => {
        index--
    })
    let rightShift = refreshWrapper(() => {
        index++
    })

    let setIndex = refreshWrapper((idx) => {
        index = idx
    })

    refresh()
</script>


































        

	<div class="w3-container w3-black w3-center w3-opacity w3-padding-64">
		<h1 class="w3-margin w3-xlarge">掛號辦法</h1>
		<h1 class="w3-margin w3-xlarge"><BR>28天內之門診皆可預約掛號，預約掛號者請攜帶健保卡至櫃檯報到。
			
		</h1>
		<BR>
	</div>

	<!-- Footer -->
	<footer class="w3-container w3-padding-64 w3-center w3-opacity"></footer>
	

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3612.535390828946!2d121.51929301466586!3d25.1175841410904!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3442ae8bc54ebc79%3A0xfd2a9d659e97b078!2z5ZyL56uL6Ie65YyX6K2355CG5YGl5bq35aSn5a245qCh5pys6YOo!5e0!3m2!1szh-TW!2stw!4v1672724593349!5m2!1szh-TW!2stw" width="100%" height="700" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
	
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