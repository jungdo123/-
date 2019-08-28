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
      <title>관리자 메인페이지</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="assets/css/main.css"/>
      
      <style>
      table {width: 1000px;  height : 500px;font-size : 15px; display:inline; }
      .table tr th{ text-align:center }
      .table tr td{ text-align:center }
      #total { text-align:right}
      .table tr #commission {display:inline; }

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
                           <a href="#" class="logo"><strong>메인페이지</strong> - 관리자 페이지</a> <!--제목 -->
                           <ul class="icons">
                        </thead>
                              <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
                              <li><a href="https://www.facebook.com/dongmin.song.923" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
                              <li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
                              <li><a href="#" class="icon brands fa-medium-m"><span class="label">Medium</span></a></li>
                           </ul>

                        </header>
<br/><br/>
                     <!-- Content -->
         <tbody >
         <table class = "table" style = "float:left";>
         기업 리스트
         <br/><br/>
            <tr>
                              
                                 <th width>아이디</th>
                                 <th width>기업번호</th>
                                 <th width>상호명</th>
                                 <th width>카테고리</th>
                                 <th width>지역</th>
                              </tr>
                              
                            <c:if test ="${! empty pt }">
                           <c:forEach items="${pt}" var = "pt">
                              <tr>
                              
                                 <td>kiesnmj1</td>
                                 <td>1</td>
                                 <td><a href = "partnerMore">한경닷컴</a></td>
                                 <td>TR</td>
                                 <td>인천광역시</td>
                              
                                 </tr>
                           
                                 <tr></tr>
                           </c:forEach>
                           </table>
                           </c:if>
               
            
               
               
         <table class = "table";>
         
         회원 리스트
         <br/><br/>
            <tr>
                              
                                 <th width>아이디</th>
                                 <th width>회원번호</th>
                                 <th width>이름</th>
                                 <th width>성별</th>
                                 <th width>가입일</th>
                              </tr>
                              
                            <c:if test ="${! empty pt }">
                           <c:forEach items="${pt}" var = "pt">
                              <tr>
                              
                                 <td><a href = "partnerMore">kiesnmj1</a></td>
                                 <td>1</td>
                                 <td>송동민</td>
                                 <td>1</td>
                                 <td>2019-08-23</td>
                              
                                 </tr>
                           
                                 <tr></tr>
                           </c:forEach>
                           </table>
                           </c:if>

   
          </tbody>
   
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
                              <li><a  href="logout"> 로그아웃 </a></li>
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
                                    <li><a href = "partnerAdd">제휴업체등록</a></li>
                                    <li><a href = "partnerList">제휴업체 조회/수정</a></li>
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