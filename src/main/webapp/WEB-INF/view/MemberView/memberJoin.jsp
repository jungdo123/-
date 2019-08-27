<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" 
				uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>회원가입 화면</title>
	<link rel="stylesheet" href="assets/css/main.css"/>
<style>
		<!--.table #memberBir {display:inline}
		.table tr th {text-align:center;}
		.table tr .birthday { width :70%} -->
		.table #gender {display:inline}
		body .btn { text-align:center;}
		.table #email {display:inline; }
		</style>
  <script type="text/javascript" 
   src="http://code.jquery.com/jquery-latest.js" ></script>
 <script type="text/javascript" 
          src="/mybatis-spring-smrit/js/jquery.form.js"></script>
	<script type="text/javascript">
	
		// 회원가입 화면의 입력값들을 검사한다.
		$(function(){

	$("#submit1").click(function(){
		if($("#id1").val()==""|| $("#id1").val()==null){
			$("#id1").focus();
			alert("아이디를 입력하세요");
			return false;
		}
		if($("#pw").val()==""|| $("#pw").val()==null){
			$("#pw").focus();
			alert("비밀번호를 입력하세요.");
			return false;
		}
		if($("#pw").val() != $("#pwCon").val()){
			$("#pwCon").focus();
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		}
		if($("#userName").val()==""|| $("#userName").val()==null){
			$("#userName").focus();
			alert("사용자 이름을 입력하세요.");
			return false;
		}
		if($("#birthyy").val()==00){
			$("#birthyy").focus();
			alert("년도를 입력하세요.");
			return false;
		}
		if($("#birthmm").val()==00){
			$("#birthmm").focus();
			alert("월을 입력하세요.");
			return false;
		}
		if($("#birthdd").val()==00){
			$("#birthdd").focus();
			alert("날짜를 입력하세요.");
			return false;
		}
		if($("#gender").val()==""|| $("#gender").val()==null){
			$("#gender").focus();
			alert("사용자 성별을 입력하세요.");
			return false;
		}
		if($("#email").val()==""|| $("#email").val()==null){
			$("#email").focus();
			alert("사용자 이메일을 입력하세요.");
			return false;
		}
		if($("#memberPh").val()==""|| $("#memberPh").val()==null){
			$("#memberPh").focus();
			alert("사용자 연락처을 입력하세요.");
			return false;
		}
		if($("#sample6_postcode").val()==""|| $("#sample6_postcode").val()==null){
			$("#sample6_postcode").focus();
			alert("사용자 주소를 입력하세요.");
			return false;
		}
		if($("#sample6_detailAddress").val()==""|| $("#sample6_detailAddress").val()==null){
			$("#sample6_detailAddress").focus();
			alert("사용자 상세주소를 입력하세요.");
			return false;
		}
		if($("#confirmNum").val() == "1"){
			alert("아이디 중복확인을 해주세요.");
			return false;
		}
		$("#frm").submit();
	});

	$("#confirmId").click(function(){
		if($("#id1").val()==""|| $("#id1").val()==null){
			$("#id1").focus();
			$("#msg").html("아이디를 입력하세요");
			return false;
		}
		var url = "confirmId?id1="+$("#id1").val();
		open(url,"confirm","width=300, height=500");
	});
});	
		
		
		// 취소 버튼 클릭시 첫화면으로 이동
		//function goFirstForm() {
		//	location.href="MainForm.do";
		//}	
		
		// 아이디 중복체크 화면open
		//function openIdChk(){
		
		//	window.name = "parentForm";
		//	window.open("member/IdCheckForm.jsp",
		//			"chkForm", "width=500, height=300, resizable = no, scrollbars = no");	
		//}

		// 아이디 입력창에 값 입력시 hidden에 idUncheck를 세팅한다.
		// 이렇게 하는 이유는 중복체크 후 다시 아이디 창이 새로운 아이디를 입력했을 때
		// 다시 중복체크를 하도록 한다.
		//function inputIdChk(){
		//	document.userInfo.idDuplication.value ="idUncheck";
		//}
		
	</script>
</head>
<body>
		<br><br>
		<b><font size="6" color="gray">회원가입</font></b>
		<br><br><br>
		
		
		<!-- 입력한 값을 전송하기 위해 form 태그를 사용한다 -->
		<!-- 값(파라미터) 전송은 POST 방식, 전송할 페이지는 JoinPro.jsp -->
<form:form action = "MemberJoinAction" name = "frm" id = "frm" method="POST"
        commandName="memberJoinCommand" >
			<table class = "table" style="width:50%; margin:0 auto;">
				<tr>
					<th id="title"><br/>아이디</th>
					<td>
						<form:input path="id1" id = "id1" maxlength="50"/>
						<input type="button" value="중복확인" id="confirmId">	
						<input type="hidden" name="idDuplication" value="idUncheck" >
					</td>
				</tr>
						
				<tr>
					<th id="title">비밀번호</th>
					<td>
						<form:password path="pw" id = "pw"  maxlength="50"/>
					</td>
				</tr>
				
				<tr>
					<th id="title">비밀번호 확인</th>
					<td>
						<form:password path="pwCon" id = "pwCon" maxlength="50"/>
					</td>
				</tr>
					
				<tr>
					<th id="title">이름</th>
					<td>
						<form:input path="userName" id = "userName" maxlength="50"/>
					</td>
				</tr>
					
				<tr><th>생년월일-성별</th>
					<td>
						<form:select name="birthyy" id="birthyy" path="memberBir">
							<option value="00">년</option>
							<option value="1970" >1970</option>
							<option value="1971" >1971</option>
							<option value="1972" >1972</option>
							<option value="1973" >1973</option>
							<option value="1974" >1974</option>
							<option value="1975" >1975</option>
							<option value="1976" >1976</option>
							<option value="1977" >1977</option>
							<option value="1978" >1978</option>
							<option value="1979" >1979</option>
							<option value="1980" >1980</option>
							<option value="1981" >1981</option>
							<option value="1982" >1982</option>
							<option value="1983" >1983</option>
							<option value="1984" >1984</option>
							<option value="1985" >1985</option>
							<option value="1986" >1986</option>
							<option value="1987" >1987</option>
							<option value="1988" >1988</option>
							<option value="1989" >1989</option>
							<option value="1990" >1990</option>
							<option value="1991" >1991</option>
							<option value="1992" >1992</option>
							<option value="1993" >1993</option>
							<option value="1994" >1994</option>
							<option value="1995" >1995</option>
							<option value="1996" >1996</option>
							<option value="1997" >1997</option>
							<option value="1998" >1998</option>
							<option value="1999" >1999</option>
							<option value="2000" >2000</option>
							<option value="2001" >2001</option>
							<option value="2002" >2002</option>
							<option value="2003" >2003</option>
							<option value="2004" >2004</option>
							<option value="2005" >2005</option>
							<option value="2006" >2006</option>
							<option value="2007" >2007</option>
							<option value="2008" >2008</option>
							<option value="2009" >2009</option>
							<option value="2010" >2010</option>
							<option value="2011" >2011</option>
							<option value="2012" >2012</option>
							<option value="2013" >2013</option>
							<option value="2014" >2014</option>
							<option value="2015" >2015</option>
							<option value="2016" >2016</option>
							<option value="2017" >2017</option>
							<option value="2018" >2018</option>
							<option value="2019" >2019</option>
						</form:select>
						
						<form:select name="birthmm" id="birthmm" path="memberBir">
							<option value="00">월</option>
							<option value="01" >1</option>
							<option value="02" >2</option>
							<option value="03" >3</option>
							<option value="04" >4</option>
							<option value="05" >5</option>
							<option value="06" >6</option>
							<option value="07" >7</option>
							<option value="08" >8</option>
							<option value="09" >9</option>
							<option value="10" >10</option>
							<option value="11" >11</option>
							<option value="12" >12</option>
						</form:select>
						<form:select name="birthdd" id="birthdd" path="memberBir">
							<option value="00">일</option>
							<option value="01" >1</option>
							<option value="02" >2</option>
							<option value="03" >3</option>
							<option value="04" >4</option>
							<option value="05" >5</option>
							<option value="06" >6</option>
							<option value="07" >7</option>
							<option value="08" >8</option>
							<option value="09" >9</option>
							<option value="10" >10</option>
							<option value="11" >11</option>
							<option value="12" >12</option>
							<option value="13" >13</option>
							<option value="14" >14</option>
							<option value="15" >15</option>
							<option value="16" >16</option>
							<option value="17" >17</option>
							<option value="18" >18</option>
							<option value="19" >19</option>
							<option value="20" >20</option>
							<option value="21" >21</option>
							<option value="22" >22</option>
							<option value="23" >23</option>
							<option value="24" >24</option>
							<option value="25" >25</option>
							<option value="26" >26</option>
							<option value="27" >27</option>
							<option value="28" >28</option>
							<option value="29" >29</option>
							<option value="30" >30</option>
							<option value="31" >31</option>
						</form:select>
						 &nbsp- &nbsp<form:input path="gender" id="gender" maxlength="1" placeholder="1" style="width:10%" />
					&nbsp*&nbsp *&nbsp *&nbsp * &nbsp*&nbsp *
					</td>
				</tr><tr></tr>
					
				<tr>
					<th id="title">이메일</th>
					<td>
<form:input path="email" id="email" style="width:25%" maxlength="20"/>&nbsp@&nbsp<form:input path="emailAddr" id="emailAddr" style="width:25%" maxlength="50"/>
					</td>
				</tr>
					
				<tr>
					<th id="title">휴대전화</th>
					<td>
						<form:input path="memberPh" id ="memberPh" maxlength="11" minlength ="10"/>
					</td>
				</tr>
				<tr>
				<div id = "addr">
					<th id="title"><br/><br/><br/>주소</th>
					<td>
								<form:input path="addr" id="sample6_postcode" placeholder="우편번호"/>
<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
<form:input path="addr" id="sample6_address" placeholder="주소" size = "45"/><br>
<form:input path="addr" id="sample6_detailAddress" placeholder="상세주소"/>
<form:input path="addr" id="sample6_extraAddress" />
				</td>
				</div>
				</tr>
					<th>관심분야</th>
<td><form:checkbox path = "interests" name="interests" value ="Y"/>축구
							<form:checkbox path = "interests"  name="interests" value ="야구"/>야구
							<form:checkbox path = "interests"  name="interests" value ="풋살"/>풋살
							<form:checkbox path = "interests"  name="interests" value ="여행"/>여행
							<form:checkbox path = "interests"  name="interests" value ="운동"/>운동
							<form:checkbox path = "interests"  name="interests" value ="요리"/>요리
							<form:checkbox path = "interests"  name="interests" value ="방탈출"/>방탈출
							</td>
								</tr>
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
					</td>
			</tr>
			<tr><td colspan = 2>
			<input type="submit" id="submit1" value="가입"/>  
			<input type="button" value="취소" onclick="javascript:location.href='main'">
			</td></tr>
			</table>
<input type = "hidden" name = "confirmNum" id="confirmNum" value="1"/>
		</form:form>
			

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

</body>
</html>