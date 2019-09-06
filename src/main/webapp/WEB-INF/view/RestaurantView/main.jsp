<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Editorial by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		 <link rel="stylesheet" href="assets/css/main.css"/>
		<style>
      table {width: 1000px;  height : 500px;font-size : 15px; display:inline; }
      .table tr th{ text-align:center }
      .table tr td{ text-align:center }
      #total { text-align:right}
      .table tr #commission {display:inline; }
#ul1{height:50px; width:100%; position:relative; list-style:none; margin-left:-40px;}
.menubars{
border:none;
border:0px;
margin:0px;
padding:0px;
font: 67.5% "Lucida Sans Unicode", "Bitstream Vera Sans", "Trebuchet Unicode MS", "Lucida Grande", Verdana, Helvetica, sans-serif;
font-size:18px;
font-weight:bold;
background:black;
}
.product_tab_area {
    list-style:none;
    margin:50px;
	padding:100px;
	
}
.product_tab_area li {
    margin: 0 0 0 0;
    padding: 0 0 0 50px;
	border : 1;
	font-size: 30px;
    float: left;
}
.product_tab_area li .notice_count{
	font-size : 20px;
}
.menubars ul{
background: none;
height:50px;
list-style:none;
margin:0;
padding:0;
}
.menubars li{
float:right;
padding:0px;
}
.menubars li a{
background: none;
color:#cccccc;
display:block;
font-weight:normal;
line-height:50px;
margin:0px;
padding:0px 25px;
text-align:center;
text-decoration:none;
}
.menubars li a:hover, .menubars ul li:hover a{
background: none;
color:#999;
text-decoration:none;
}
.menubars li ul{
background: gray;
display:none; /* 평상시에는 드랍메뉴가 안보이게 하기 */
height:auto;
padding:0px;
margin:0px;
border:0px;
position:absolute;
width:200px;
z-index:200;
/*top:1em;
/*left:0;*/
}
.menubars li:hover ul{
display:block; /* 마우스 커서 올리면 드랍메뉴 보이게 하기 */
}
.menubars li li {
background: rgb(none);
display:block;
float:none;
margin:0px;
padding:0px;
width:200px;
}
.menubars li:hover li a{
background:none;
}
.menubars li ul a{
display:block;
height:50px;
font-size:12px;
font-style:normal;
margin:0px;
padding:0px 10px 0px 15px;
text-align:left;
}
.menubars li ul a:hover, .menubars li ul li:hover a{
background: rgb(71,71,71);
border:0px;
color:#ffffff;
text-decoration:none;
}
.menubars p{
clear:left;
}
html, body, div, span, applet, object,
iframe, h1, h2, h3, h4, h5, h6, p, blockquote,
pre, a, abbr, acronym, address, big, cite,
code, del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var, b,
u, i, center, dl, dt, dd, ol, ul, li, fieldset,
form, label, legend, table, caption, tbody,
tfoot, thead, tr, th, td, article, aside,
canvas, details, embed, figure, figcaption,
footer, header, hgroup, menu, nav, output, ruby,
section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;}
	
	li{
   list-style:none;
   }
      </style>
      
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
					<div class="menubars">
								       <ul>
										<li>
										<%if(session.getAttribute("memid")==null) { %>
           								<a href="login">Log In</a>
           								</li>
           								<li>		
								  <a id="#services" href="moveReg">Sign Up</a>
								   
								 </li>
       									<%}else { %>
       									<li>
          								<a  href="mypage"> 마이페이지 </a>
          								<ul>
          								<li><a href="memberModify" >정보수정</a></li>
										<li><a href="pwModify" >비밀번호변경</a></li>
										<li><a href="memDel" >회원탈퇴</a></li>
								       </ul>
          								</li>
          								<li>
          								<a  href="logout">Log Out</a>
          								</li>
										 <% } %>
								  
								         <li>
								           <a href="#education">Education</a>
								         </li>
								         <li>
								           <a href="#auction">Auction</a>
								           <ul>
								       <li><a href="#">aaa</a></li>
								       <li><a href="#">bbb</a></li>
								       <li><a href="#">ccc</a></li>
								      </ul>
								         </li>
								         <li>
								           <a href="#exhibition">Exhibition</a>
								           <ul>
								       <li><a href="#">aaa</a></li>
								       <li><a href="#">bbb</a></li>
								       <li><a href="#">ccc</a></li>
								      </ul>
								         </li>
								         <li>
								         <a href="shopping.item">Shopping</a>
								         <ul>
								       	<li><a href="insertItem.item">등록</a></li>
								       	<li><a href="#">bbb</a></li>
								       	<li><a href="#">ccc</a></li>
								      	</ul>
								         </li>
								       </ul>
									 </div>
						<div class="inner">
						
						<!-- Section -->
							
								<section>
									<header class="major">
										<h2> 지역 선택 </h2>
										
									</header>
									<div class="posts">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<li><a href="seoul" class="button">서울</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<li><a href="ing" class="button">인천/경기</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<li><a href="kang" class="button">강원</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<li><a href="chung" class="button">충청</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<li><a href="jeon" class="button">전라</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<li><a href="kyeong" class="button">경상</a></li>
									</div>
								</section>
								
						</div>
					</div>
				
				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">

							<!-- Search -->
								<section id="search" class="alt">
									<form method="post" action="#">
										<input type="text" name="query" id="query" placeholder="Search" />
									</form>
								</section>

							<!-- Menu -->
								<nav id="menu">
									<header class="major">
										<h2>Menu</h2>
									</header>
									<ul>
										<li>
											<span class="opener">Submenu</span>
											<ul>
												<li><a href="#">Lorem Dolor</a></li>
												<li><a href="#">Ipsum Adipiscing</a></li>
												<li><a href="#">Tempus Magna</a></li>
												<li><a href="#">Feugiat Veroeros</a></li>
											</ul>
										</li>
										<li>
											<span class="opener">Submenu</span>
											<ul>
												<li><a href="#">Lorem Dolor</a></li>
												<li><a href="#">Ipsum Adipiscing</a></li>
												<li><a href="#">Tempus Magna</a></li>
												<li><a href="#">Feugiat Veroeros</a></li>
											</ul>
										</li>
										<li>
											<span class="opener">Submenu</span>
											<ul>
												<li><a href="#">Lorem Dolor</a></li>
												<li><a href="#">Ipsum Adipiscing</a></li>
												<li><a href="#">Tempus Magna</a></li>
												<li><a href="#">Feugiat Veroeros</a></li>
											</ul>
										</li>
										<li>
											<span class="opener">Submenu</span>
											<ul>
												<li><a href="#">Lorem Dolor</a></li>
												<li><a href="#">Ipsum Adipiscing</a></li>
												<li><a href="#">Tempus Magna</a></li>
												<li><a href="#">Feugiat Veroeros</a></li>
											</ul>
										</li>
										<li>
											<span class="opener">Submenu</span>
											<ul>
												<li><a href="#">Lorem Dolor</a></li>
												<li><a href="#">Ipsum Adipiscing</a></li>
												<li><a href="#">Tempus Magna</a></li>
												<li><a href="#">Feugiat Veroeros</a></li>
											</ul>
										</li>
									</ul>
								</nav>
			
							

						</div>
					</div>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>