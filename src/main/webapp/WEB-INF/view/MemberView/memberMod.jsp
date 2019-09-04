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
		<style>
      table {width: 10000px;  height : 500px;font-size : 15px; display:inline; }
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





.manubas{
border:none;
border:0px;
margin:0px;
padding:0px;
font: 67.5% "Lucida Sans Unicode", "Bitstream Vera Sans", "Trebuchet Unicode MS", "Lucida Grande", Verdana, Helvetica, sans-serif;
font-size:18px;
font-weight:bold;
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
.manubas ul{
background: none;
height:50px;
list-style:none;
margin:0;
padding:0;
}
.manubas li{
padding:0px;
}
.manubas li a{
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
.manubas li a:hover, .manubas ul li:hover a{
background: none;
color:#999;
text-decoration:none;
}
.manubas li ul{
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
.manubas li:hover ul{
display:block; /* 마우스 커서 올리면 드랍메뉴 보이게 하기 */
}
.manubas li li {
background: rgb(none);
display:block;
float:none;
margin:0px;
padding:0px;
width:200px;
}
.manubas li:hover li a{
background:none;
}
.manubas li ul a{
display:block;
height:50px;
font-size:12px;
font-style:normal;
margin:0px;
padding:0px 10px 0px 15px;
text-align:left;
}
.manubas li ul a:hover, .manubas li ul li:hover a{
background: rgb(71,71,71);
border:0px;
color:#ffffff;
text-decoration:none;
}
.manubas p{
clear:left;
}
			.popup_panel { display: none; position: fixed; top: 0; left: 0; width: 100%; height: 100%; z-index: 100;}
            .popup_panel div.popup_bg { position: absolute; top: 0; left: 0; width: 100%; height: 100%; background:#000; opacity:.5; filter:alpha(opacity=50); }
            .popup_panel div.popup_contents { position: absolute; top: 50%; left: 50%; width: 410px; height: 200px; border:2px solid #5294DE; background-color:#fff; }
      </style>
      <script type="text/javascript" 
   src="http://code.jquery.com/jquery-latest.js" ></script>
 <script type="text/javascript" 
          src="/mybatis-spring-smrit/js/jquery.form.js"></script>
      <script type="text/javascript">
      $(document).ready(function() {
          var $panel = $(".popup_panel");
          var $panelContents = $panel.find(".popup_contents");
          $("#btn_popup_open").on("click", function(e) {
              // 팝업 가운데 설정(가로)
              if ($panelContents.outerWidth() < $(document).width()) {
                  $panelContents.css("margin-left", "-" + $panelContents.outerWidth() / 2 + "px");
              } else {
                  $panelContents.css("left", "0px");
              }
           // 팝업 가운데 설정(세로)
              if ($panelContents.outerHeight() < $(document).height()) {
                  $panelContents.css("margin-top", "-" + $panelContents.outerHeight() / 2 + "px");
              } else {
                  $panelContents.css("top", "0px");
              }
              // 레이어 팝업 열기
              $panel.fadeIn();
          });
          // 팝업 닫기 이벤트 정의
          $("#btn_popup_close").on("click", popupClose);
         // 팝업 배경 클릭 이벤트 정의
          $panel.find(".popup_bg").on("click", popupClose);
          function popupClose(e) {
              $panel.fadeOut();
            // 이벤트 기본 동작 중단
              e.preventDefault();
          }
      });
      </script>
      
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

							<!-- Header -->
<!-- Content -->
							
							<br/><br/>
									<div class="manubas">
								       <ul>
										<li>
          								<a href="#">아이디 : ${member12.memberId} </a>
          								</li>
          								<li>
										<a href="javascript:void(0)" id="btn_popup_open">이름 : ${member12.memberName}</a>
        					<div class="popup_panel">
          					<div class="popup_bg"></div>
            				<div class="popup_contents">
            	<form action="nameChangeAction">
				<input type="text" name="rename" placeholder="${member12.memberName}"> 
				<input type="submit" value="수정">
				</form>
                <a href="javascript:void(0)" id="btn_popup_close">닫기</a>
        </div>
       </div>
          								</li>
          								<li>
          								<a  href="pwModify">비밀번호 : ********* </a>
          								</li>
								  
								         <li>
								           <a href="genMod">성별 : ${member12.memberGender}</a>
								         </li>
								         <li>
								           <a href="birMod">생일 : ${member12.memberBir }</a>
								           <ul>
								      </ul>
								         </li>
								         <li>
								           <a href="emailMod">이메일 : ${member12.email} @ ${member12.emailAddr}</a>
								           <ul>
								      </ul>
								         </li>
								         <li>
								         <a href="phMod">휴대전화 : ${member12.memberPh1}</a>
								         <ul>
								      	</ul>
								         </li>
								       </ul>
									 </div>
								
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

</body>
</html>
