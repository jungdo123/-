<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Write something else you want</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
 
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
 
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
<table class="table table-bordered">
    <thead>
        <caption> 상품등록 </caption>
    </thead>
    <tbody>
        <form action="write_ok.jsp" method="post" encType="multiplart/form-data">
					<tr>
						
							<th>카테고리</th><td><select class="form-control">
									<option value="">##</option>
									
							</select>
							</td>
						
					</tr>
					<tr>
                <th>상품: </th>
                <td><input type="text" cols="10" placeholder="상품을 입력하세요 " name="content" class="form-control"/></td>
            </tr>
            <tr>
                <th>가격: </th>
                <td><input type="text" placeholder="" name="filename" class="form-control"/></td>
            </tr>
            <tr>
                <th>거래처  </th>
                <td><input type="text" placeholder="" class="form-control"/></td>
                
            </tr>
              <tr>
                <th>거래처코드  </th>
                <td><input type="text" placeholder="" class="form-control"/></td>
            </tr>
              <tr>
                <th>담당자명  </th>
                <td><input type="text" placeholder="" class="form-control"/></td>
                
            </tr>
              <tr>
                <th>연락처  </th>
                <td><input type="text" placeholder="" class="form-control"/></td>
            </tr>
              <tr>
                <th>설명  </th>
                <td><input type="text" placeholder="" class="form-control"/></td>
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
        </form>
    </tbody>
</table>
</div>
</body>
</html>
