<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" 
				uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE HTML>
<html>
   <head>
   <meta charset="UTF-8">
      <title>제휴업체등록</title>
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	  <link rel="stylesheet" href="assets/css/main.css" />
	  <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js" ></script>
 	  <script type="text/javascript" src="/mybatis-spring-smrit/js/jquery.form.js"></script>
<!--     		<script type="text/javascript">


	$(function(){
		$("#submit").click(function(){
			if($("#compSortCode").val() == "None"){
				$("#compSortCode").html("카테고리를 선택하세요.");
				$("#compSortCode").focus();
				return false;
			}
			if($("#pw").val() == ""){
				$("#pwmsg").html("비밀번호를 입력하세요.");
				$("#pw").focus();
				return false;
			}
			$("#frm").submit();
		});
	
	});
   </script>-->
   </head>
   <body class="is-preload">
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="#" class="logo"><strong>[ 고객센터</strong>]</a>
									<ul class="icons">
										<li><a href="itemDetails" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
										<li><a href="#" class="icon brands fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
										<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
										<li><a href="#" class="icon brands fa-medium-m"><span class="label">Medium</span></a></li>
										<li><a href = "memberQue">고객센터</a></li> 
									</ul>
			</header>
			<tbody>
<br/><br/><br/>
                         <tbody>
        <form:form action="partnerAddAction" method="post" name ="frm" id = "frm" commandName ="partnerCommand">
        <table class="table">

               <tr>
                  <th>카테고리</th>
                  <td colspan = 4>
                  
                     <form:select path ="compSortCode" name="compSortCode" > 
                     <form:option value="None" label="- 기업분류 -" />
                     <form:option value="RT" label="음식" />
                     <form:option value="CT" label="문화" />
                     <form:option value="PT" label="체육" />
                     <form:option value="DR" label="배송" />
                     </form:select>
                  		<div id = "compSortCode"></div>
                  	<form:hidden path= "commission" id = "commission" value ="5"/>
                  </td>
              </tr>
               <tr>
                      <th>아이디</th>
                      <td colspan = 4>
                         <form:input path = "partnerId" cols="10" id="" placeholder="아이디를 입력하세요." name="partnerId"/>
                      </td>
                  </tr>
               <tr>
                      <th>거래처(상호명)</th>
                      <td colspan = 4>
                         <form:input path ="compName" cols="10" placeholder="상호명을 입력하세요. " name="compName"/>
                      </td>
                  </tr>
               <tr>
                      <th>사업주명</th>
                      <td colspan = 4>
                         <form:input path="compPres" placeholder="사업주명을 입력하세요. " name="compPres"/>
                      </td>
                  </tr>
                  <tr>
                      <th>운영시간</th>
                      <td>
                     <form:select path = "compRun" name="compRun" >   
                     <form:option value="x" label="시간을 선택하세요." />
                     <form:option value="01:00" label="01:00" />
                     <form:option value="02:00" label="02:00" />
                   	 <form:option value="03:00" label="03:00" />
                     <form:option value="04:00" label="04:00" />
                     <form:option value="05:00" label="05:00" />
                     <form:option value="06:00" label="06:00" />
                     <form:option value="07:00" label="07:00" />
                   	 <form:option value="08:00" label="08:00" />
                   	 <form:option value="09:00" label="09:00" />
                     <form:option value="10:00" label="10:00" />
                     <form:option value="11:00" label="11:00" />
                     <form:option value="12:00" label="12:00" />
                     <form:option value="13:00" label="13:00" />
                     <form:option value="14:00" label="14:00" />
                     <form:option value="15:00" label="15:00" />
                     <form:option value="16:00" label="16:00" />
                     <form:option value="17:00" label="17:00" />
                     <form:option value="18:00" label="18:00" />
                     <form:option value="19:00" label="19:00" />
                     <form:option value="20:00" label="20:00" />
                     <form:option value="21:00" label="21:00" />
                     <form:option value="22:00" label="22:00" />
                     <form:option value="23:00" label="23:00" />
                     <form:option value="24:00" label="24:00" />
                    
                     </form:select>
                      </td>
                  <th> ~ </th>
                  <td colspan = 2>
                   <form:select path = "compRun1" name="compRun1" >   
                     <form:option value="x" label="시간을 선택하세요." />
                     <form:option value="01:00" label="01:00" />
                     <form:option value="02:00" label="02:00" />
                   	 <form:option value="03:00" label="03:00" />
                     <form:option value="04:00" label="04:00" />
                     <form:option value="05:00" label="05:00" />
                     <form:option value="06:00" label="06:00" />
                     <form:option value="07:00" label="07:00" />
                   	 <form:option value="08:00" label="08:00" />
                   	 <form:option value="09:00" label="09:00" />
                     <form:option value="10:00" label="10:00" />
                     <form:option value="11:00" label="11:00" />
                     <form:option value="12:00" label="12:00" />
                     <form:option value="13:00" label="13:00" />
                     <form:option value="14:00" label="14:00" />
                     <form:option value="15:00" label="15:00" />
                     <form:option value="16:00" label="16:00" />
                     <form:option value="17:00" label="17:00" />
                     <form:option value="18:00" label="18:00" />
                     <form:option value="19:00" label="19:00" />
                     <form:option value="20:00" label="20:00" />
                     <form:option value="21:00" label="21:00" />
                     <form:option value="22:00" label="22:00" />
                     <form:option value="23:00" label="23:00" />
                     <form:option value="24:00" label="24:00" />
                    
                     </form:select>
                      </td>
                  </tr>
               <tr>
                     
                        <!--  <form:input path ="compAddr" placeholder = "주소를 입력하세요." name="addr"/> --> 
                     
                      <div id = "addr">
					<th id="title"><br/><br/><br/>주소</th>
					<td colspan = 4><form:input path ="compAddr" id="sample6_postcode" placeholder="우편번호"/>
<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
<form:input path ="compAddr" id="sample6_address" placeholder="주소" size = "45"/><br>
<form:input path ="compAddr" id="sample6_detailAddress" placeholder="상세주소"/>
<form:input path ="compAddr" id="sample6_extraAddress" placeholder="참고항목"/>
				</td>
				</div>
                  </tr>
                  <tr>
                      <th>연락처</th>
                      <td colspan = 4>
                         <form:input path = "compPh" placeholder="연락처를 입력하세요." name="compPh"/>
                      </td>
                  </tr>
                  <tr><th>지역</th>
                  	<td colspan = 4>
					 <form:select path = "zone" name="zone" >   
                     <form:option value="none" label="지역을 선택하세요." />
                     <form:option value="서울특별시" label="서울특별시" />
                     <form:option value="경기도" label="경기도" />
                   	 <form:option value="인천광역시" label="인천광역시" />
                     </form:select>
                    </td>
				  </tr>
                  <tr>
                      <td colspan=4>
                          <input type="submit" value="등록" id= "submit"/>
                          <input type="reset" value="초기화" class="pull-left"/>
                          <input type="button" value="뒤로가기" class="pull-right" onclick="history.back(-1);" />
                          <!-- <a class="btn btn-default" onclick="sendData()"> 등록 </a>
                          <a class="btn btn-default" type="reset"> reset </a>
                          <a class="btn btn-default" onclick="javascript:location.href='list.jsp'">글 목록으로...</a> -->
                      </td>
                  </tr>
                  </table>
              </form:form>
          </tbody>
        <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
   </body>
</html>