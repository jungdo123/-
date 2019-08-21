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
		<title>제휴업체등록</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css"/>
		
		<style>
		.table tr th{ text-align:center }
		.table tr td{ text-align:center }
		#total { text-align:right}

		</style>
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
								<thead>
									<a href="#" class="logo"><strong>제휴업체등록</strong> - 관리자 페이지</a> <!--제목 -->
									<ul class="icons">
								</thead>
										<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="https://www.facebook.com/dongmin.song.923" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
										<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
										<li><a href="#" class="icon brands fa-medium-m"><span class="label">Medium</span></a></li>
									</ul>

								</header>

							<!-- Content -->
							<br/><br/>
							    <tbody>
        <form action="write_ok.jsp" method="post" encType="multiplart/form-data">
        <table class="table">
					<tr>등록일 추가(sysdate)
						<th>카테고리</th>
						<td><select class="form-control">
							<option value="">음식</option>
							<option value="">문화</option>
							<option value="">체육</option>
							<option value="">배송</option>
							</select>
						</td><input type = "hidden" />
					</tr>
					<tr>
                		<th>거래처(상호명)</th>
                		<td>
                			<input type="text" cols="10" placeholder="내용을 입력하세요. " name="content" class="form-control"/>
                		</td>
            		</tr>
		            <tr>
		                <th>사업주명</th>
		                <td>
		                	<input type="text" placeholder="파일을 선택하세요. " name="filename" class="form-control"/>
		                </td>
		            </tr>
					<tr>
		                <th>담당자</th>
		                <td>
		                	<input type="text" placeholder="파일을 선택하세요. " name="filename" class="form-control"/>
		                </td>
		            </tr>
		            <tr>
		                <th>연락처</th>
		                <td>
		                	<input type="text" placeholder="비밀번호를 입력하세요" class="form-control"/>
		                </td>
		            </tr>
		            <tr>
		                <td colspan="2">
		                    <input type="button" value="등록" onclick="sendData()" class="pull-right"/>
		                    <input type="button" value="reset" class="pull-left"/>
		                    <input type="button" value="글 목록으로... " class="pull-right" onclick="javascript:location.href='list.jsp'"/>
		                    <!-- <a class="btn btn-default" onclick="sendData()"> 등록 </a>
		                    <a class="btn btn-default" type="reset"> reset </a>
		                    <a class="btn btn-default" onclick="javascript:location.href='list.jsp'">글 목록으로...</a> -->
		                </td>
		            </tr>
		            </table>
		        </form>
		    </tbody>
							<br/>
							
								
						</div>
					</div>

				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">
						
							
							<!-- Search -->
								<section id="search" class="alt">
									<!-- <form method="post" action="#">
										<input type="text" name="query" id="query" placeholder="Search" />
									</form> -->
								</section>

							<!-- Menu -->
										<nav id="menu">
									<header class="major">
										<h2>Menu</h2>
									</header>
									<ul>
										<li><a href="#">관리자 메인페이지</a></li>
										
										<li>
											<span class="opener">회원관리</span>
											<ul>
												<li><a href="#">회원정보조회</a></li>
												<li><a href="#">탈퇴회원조회</a></li>
												<li><a href="#">서비스이용제한고객</a></li>
											</ul>
										</li>
										<li>
											<span class="opener">상품관리</span>
											<ul>
												<li><a href="goods_wirte.html">상품등록</a></li>
												<li><a href="#">상품조회/수정</a></li>
											</ul>
										</li>
										<li>
											<span class="opener">제휴업체관리</span>
											<ul>
												<li><a href="#">제휴업체신청</a></li>
												<li><a href="board_write.html">제휴업체등록</a></li>
												<li><a href="allPartnerList.html">제휴업체 조회/수정</a></li>
												<li><a href="#">제휴업체 상세정보</a></li>
											</ul>
										</li>
										<li>
											<span class="opener">통계</span>
											<ul>
												<li><a href="#">총매출통계</a></li>
												<li><a href="#">월별 통계</a></li>
												<li><a href="#">카테고리별 통계</a></li>
												
											</ul>
										</li>
									</ul>
								</nav>

							<!-- Section -->
								<section>
								
								</section>

							<!-- Footer -->
								<footer id="footer">
									<p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
								</footer>

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