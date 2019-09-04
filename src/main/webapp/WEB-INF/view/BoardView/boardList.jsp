<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
			uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" 
			uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>
</head>
<body>
<a href = "seachMember">회원조회</a>
<table width=50% border="1" cellpadding="0" cellspacing="0" >
<c:if test="${! empty bList}">
	<tr align="center" valign="middle">
		<td colspan="4">MVC 회원리스트</td>
	</tr>
	
	<tr align="center" valign="middle" bordercolor="#333333">
		<td style="font-family:Tahoma;font-size:8pt;" width="8%" height="26">
			<div align="center">회원아이디</div>
		</td>
		<td style="font-family:Tahoma;font-size:8pt;" width="50%">
			<div align="center">회원이름</div>
		</td>
		<td style="font-family:Tahoma;font-size:8pt;" width="14%">
			<div align="center">회원연락처</div>
		</td>
		<td style="font-family:Tahoma;font-size:8pt;" width="17%">
			<div align="center">이메일</div>
		</td>
		<td style="font-family:Tahoma;font-size:8pt;" width="11%">
			<div align="center">성별</div>
		</td>
	</tr>
<c:forEach var="board1" items="${bList }">
	<tr align="center" valign="middle" bordercolor="#333333"
		onmouseover="this.style.backgroundColor='F8F8F8'"
		onmouseout="this.style.backgroundColor=''">
		<td height="23" style="font-family:Tahoma;font-size:10pt;">
			${board1.itemNum }
		</td>
		
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="left">
			<!--<a href="./memberInfo/${member.memberId}">-->
				<a>${board1.doSi }
			</a>
			</div>
		</td>
		
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="center">${board1.ku }</div>
		</td>
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="center">
			${board1.whCpn }
			</div>
		</td>	
		
	</tr>
</c:forEach>
	<tr align=center height=20>
		<td colspan=7 style=font-family:Tahoma;font-size:10pt;>
			<c:if test="${page <= 1 }">
			[이전]&nbsp;
			</c:if>
			<c:if test="${page > 1 }">
			<a href="board_list?page=${page -1 }">[이전]</a>&nbsp;
			</c:if>
			<c:forEach var="i" begin="${startPage }" 
				end="${endPage }">
				<a href="board_list?page=${i }">[${i }]</a>&nbsp;
			</c:forEach>
			<c:if test="${page < maxPage }">	
			<a href="board_list?page=${page +1 }">[다음]</a>
			</c:if>
			<c:if test="${page >= maxPage }">
			[다음]&nbsp;
			</c:if>
		</td>
	</tr>
</c:if>
<c:if test="${empty bList}">
	<tr align="center" valign="middle">
		<td colspan="4">MVC 회원리스트</td>
		<td align=right>
			<font size=2>등록된 회원이 없습니다.</font>
		</td>
	</tr>
</c:if>
</table>
</body>
</html>