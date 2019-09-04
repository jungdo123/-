<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
			uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>submitReport1.jsp</title>
</head>
<body>
<c:forEach items="${tbFiles }" var="tbFile">
	<p>
파일명 : <a href="UploadFile/upload/${tbFile.storedFileName }" >
        ${tbFile.originalFileName } </a>
파일 사이즈 : ${tbFile.fileSize }<br />

그림파일 <img src="UploadFile/upload/${tbFile.storedFileName }" />
</p>
</c:forEach>
</body>
</html>