<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" 
				uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>qq</title>
<script type="text/javascript" 
 src="http://code.jquery.com/jquery-latest.js" ></script>
<script type="text/javascript">

</script>
</head>
<body bgcolor="#e0ffff">
<form:form action = "BoardJoinAction" name = "frm" id = "frm" method="POST"
        commandName="boardJoinCommand" enctype="multipart/form-data">
	<table width = 600 align = "center" border = 1 
			cellpadding = 3 >
	<tr><td width = 200 ><b>도/시 </b></td>
		<td width = 400 >
			<form:input path="doSi10" id = "doSi10" 
				size = "12" maxlength="10"/>
		</td>
	</tr>
	<tr><td width = 200 ><b>구</b></td>
		<td width = 400 >
			<form:input path="ku10" 
				id = "ku10" size = "12" maxlength="10"/>
		</td>
	</tr>
	<tr><td width = 200 ><b>위치번호</b></td>
		<td width = 400 >
			<form:input path="whCpn10" 
				id = "whCpn10" size = "12" maxlength="10"/>
		</td>
	</tr>
	<tr><td width = 200 bgcolor="#b0e0e6" ><b>설명</b></td>
		<td width = 400 >
			<form:input path ="itemEx10" 
				id = "itemEx10" size = "30" maxlength="28"/>
		</td>
	</tr>
	<tr><td width = 200 ><b>구매 가격</b></td>
		<td width = 400 >
			<form:input path="itemBuyPr10" 
				id = "itemBuyPr10" size = "12" maxlength="10" />
		</td>
	</tr>
	<tr><td width = 200 >재고 수량</b></td>
		<td width = 400 >
			<form:input path="itemStk10" 
				id = "itemStk10" size = "12" maxlength="10"/>
		</td>
	</tr>
	<tr><td width = 200 ><b>운영 시간</b></td>
		<td width = 400 >
			<form:input path="itemRun10" 
				id = "itemRun10" size = "12" maxlength="10"/>
		</td>
	</tr>
	<tr><td width = 200 ><b>수용가능 인원</b></td>
		<td width = 400 >
			<form:input path="itemMimit10" 
				id = "itemMimit10" size = "12" maxlength="10"/>
		</td>
	</tr>
	<tr><td width = 200 ><b>여가생활 분류</b></td>
		<td width = 400 >
			<form:input path="rsSort10" 
				id = "rsSort10" size = "12" maxlength="10"/>
		</td>
	</tr>
	<tr>
		<td colspan=2> 
        파일 : <input type="file" name="image" id="image"><br> 
        <input
            type="submit" value="등록" id="submit10"><br>
        	<input type="reset" name="reset" value="리셋"/><br/>
			<input type ="button" value="취소"/>	<br/>
		<c:forEach items="${board }" var="tbFile">
	<p>
그림파일 <img src="UploadFile/upload/"${board.image }/>
</p>
</c:forEach>

				
		</td>
	</tr>
	</table>
</form:form>
</body>
</html>