<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" 
			uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" 
			uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" 
			uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" 
			uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" 
	src="http://code.jquery.com/jquery-latest.js" ></script>
<script type="text/javascript">
function parDel(){
	window.open("../partnerDel", "#pardel", "width=350, height=150,  resizable = no, scrollbars = no");	
	("#del").submit();
}
</script>
</head>
<body>
<form name="frm" id = "frm" method ="post" action = "../partnerModifyAction">
		<c:if test="${! empty pt}" >
		<input type= "hidden" value = "${pt.partnerId }"  name= "partnerId"/>
	<table>
		기업 상세정보</br>
		<tr>
			<th>기업번호</th>
			<td>${pt.partnerNum}</td>
		</tr>										
		<tr>
			<th>아이디</th>
			<td>${pt.partnerId }</td>
		</tr>								
		<tr> 
			<th>카테고리</th>
			 <td><select name="compSortCode">
                <option value =${pt.compSortCode}>${pt.compSortCode}</option>
                <option value = "RT">음식</option>
                <option value = "CT">문화</option>
                <option value = "PT">체육</option>
                <option value = "DR">배송</option>
                </select>
                   
			</td> 
		</tr>
		<tr>
			<th>대표자명</th>
			<td>${pt.compPres }</td>
		</tr>
		<tr>
			<th>상호명(기업명)</th>
			<td><input type= "text"  name =compName value = "${pt.compName }"/></td>
		</tr>
		<tr>
			<th>영업 시간</th>
			<td><select name="compRun">
    <option value=${pt.compRun}>${pt.compRun}</option>
    <option value="01:00">01:00</option>
    <option value="02:00">02:00</option>
    <option value="03:00">03:00</option>
    <option value="04:00">04:00</option>
    <option value="05:00">05:00</option>
    <option value="06:00">06:00</option>
    <option value="07:00">07:00</option>
    <option value="08:00">08:00</option>
    <option value="09:00">09:00</option>
    <option value="10:00">10:00</option>
    <option value="11:00">11:00</option>
    <option value="12:00">12:00</option>
    <option value="13:00">13:00</option>
    <option value="14:00">14:00</option>
    <option value="15:00">15:00</option>
    <option value="16:00">16:00</option>
    <option value="17:00">17:00</option>
    <option value="18:00">18:00</option>
    <option value="19:00">19:00</option>
    <option value="20:00">20:00</option>
    <option value="21:00">21:00</option>
    <option value="22:00">22:00</option>
    <option value="23:00">23:00</option>
    <option value="24:00">24:00</option>
    
		</select> ~ <select name="compRun1">
    <option value=${pt.compRun1}>${pt.compRun1}</option>
    <option value="01:00">01:00</option>
    <option value="02:00">02:00</option>
    <option value="03:00">03:00</option>
    <option value="04:00">04:00</option>
    <option value="05:00">05:00</option>
    <option value="06:00">06:00</option>
    <option value="07:00">07:00</option>
    <option value="08:00">08:00</option>
    <option value="09:00">09:00</option>
    <option value="10:00">10:00</option>
    <option value="11:00">11:00</option>
    <option value="12:00">12:00</option>
    <option value="13:00">13:00</option>
    <option value="14:00">14:00</option>
    <option value="15:00">15:00</option>
    <option value="16:00">16:00</option>
    <option value="17:00">17:00</option>
    <option value="18:00">18:00</option>
    <option value="19:00">19:00</option>
    <option value="20:00">20:00</option>
    <option value="21:00">21:00</option>
    <option value="22:00">22:00</option>
    <option value="23:00">23:00</option>
    <option value="24:00">24:00</option>
</select>
			</td>
		</tr>							
		<tr>
			<th>지역</th>
			<td>${pt.zone }</td>
		</tr>
		<tr>
			<th>주소</th>
			<td>${pt.compAddr }</td>
		</tr>
		<tr>
			<th>연락처</th>
			<td><input type= "text"  name ="compPh" value = "${pt.compPh }"/></td>
		</tr>
		<tr>
			<th>수수료</th>
			<td>${pt.commission } %</td>
		</tr>						
		<tr>
			<th colspan = 2>
				<input type="submit" value="기업정보 변경" />
				<input type="button" value="계약해지" id = "pardel" onclick = "parDel()"/>
				<input type="button" value="뒤로가기" onclick="history.back(-1);">
				
			</th>
		</tr>		
	</table>	
	</c:if>
<form name="frm" id = "frm" method ="post" action = "">
		<c:if test="${! empty pt}" >
		<input type= "hidden" value = "${pt.partnerId }"  name= "partnerId"/>
		</c:if>
		</form>


</body>
</html>