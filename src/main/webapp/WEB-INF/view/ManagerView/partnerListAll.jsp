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
<!DOCTYPE HTML>

<html>
	<head>
		<title>관리자 메인페이지</title>
		<meta charset="utf-8" />
		
		<style>
		
		.table tr th{ text-align:center }
		.table tr td{ text-align:center }
		#total { text-align:right}
		.table tr #commission {display:inline; }

		</style>
	</head>
	<body>

									<a href="#" class="logo"><strong>메인페이지</strong> - 관리자 페이지</a> <!--제목 -->
								

							<!-- Content -->
		<table>
							<br/>
							<div>
						
								<div id = "total"> [ 총 기업수 : 2 ] </div><br/>
							</div>
									
									
					<form:form action = "seachPartner" name ="frm" method = "post" id = "frm" commandName ="partnerCommand">				
									<tr>
                  <th>카테고리</th>
                  <td colspan = 5>
                  
                     <form:select path ="compSortCode" name="compSortCode" > 
                     <form:option value="null" label="- 기업분류 -" />
                     <form:option value="RT" label="음식" />
                     <form:option value="CT" label="문화" />
                     <form:option value="PT" label="체육" />
                     <form:option value="DR" label="배송" />
                     </form:select>
                  	<form:hidden path= "commission" id = "commission" value ="5"/>
                  </td>
              </tr><!-- 
                      <th>사업주명</th>
                      <td colspan = 4>
                         <form:input path="compPres" placeholder="사업주명을 입력하세요. " name="compPres"/>
                      </td>
                  </tr> -->
								 <tr><th>지역</th>
                 	 <td colspan = 5>
					 <form:select path = "zone" name="zone" >   
                     <form:option value="none" label="지역을 선택하세요." />
                     <form:option value="서울특별시" label="서울특별시" />
                     <form:option value="경기도" label="경기도" />
                   	 <form:option value="인천광역시" label="인천광역시" />
                     </form:select>
                    </td>
				  </tr>
										<tr>
											<th colspan = 6 margin = "auto">
												<input type = "submit" value = "조회"/>
												<input type = "reset" value = "초기화"/>
											</th>
										</tr>
										
									
						</form:form>
									
									
										<tr>
										
											<th>아이디</th>
											<th>기업번호</th>
											<th>상호명(기업명)</th>
											<th>카테고리</th>
											<th>지역</th>
											<th>수수료</th>
										</tr>
										
							    	<c:if test ="${! empty pt }">
									<c:forEach items="${pt}" var = "pt">
										<tr>
										
											<td>${pt.partnerId }</td>
											<td>${pt.partnerNum }</td>
											<td><a href = "partnerMore/${pt.partnerId}">${pt.compName }</a></td>
											<td>${pt.compSortCode }</td>
											<td>${pt.zone }</td>
											<td>${pt.commission } %</td>
											</tr>
									
											<tr></tr>
									</c:forEach>
										<tr>
											<td colspan = "6" text-align:center>[1]</td>
										</tr>
									
									</table>
									</c:if>
									</tobody>
	
		    </tbody>
		
	</body>
</html>