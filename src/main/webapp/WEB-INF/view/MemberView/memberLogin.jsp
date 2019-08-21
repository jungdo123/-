<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" 
				uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!doctype html>
<!--Code by Web Dev Trick ( https://webdevtrick.com )-->
<!--For More Source Code visit  https://webdevtrick.com -->
<html>
    
<head>
   <title>쏠, 쉼 : Login</title>
   <meta charset="UTF-8">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
   <style>

   body,
   html {
      margin: 0;
      padding: 0;
      height: 100%;
      background: #C8C3C3 !important;
      }
      .user_card {  <!-- 로그인폼 배경-->
      height: 400px;
      width: 350px;
      margin-top: auto;
      margin-bottom: auto;
      background: pink;
      position: relative;
      display: flex;
      justify-content: center;
      flex-direction: column;
      padding: 10px;
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
      border-radius: 5px;
 
      }
      .brand_logo_container {
      position: absolute;
      height: 170px;
      width: 170px;
      top: -75px;
      border-radius: 50%;
      background: #C8C3C3;
      padding: 10px;
      text-align: center;
      }
      .brand_logo {
      height: 150px;
      width: 150px;
      border-radius: 50%;
      border: 2px solid white;
      }
      .form_container {
      margin-top: 100px;
      }
      .login_btn {
      width: 100%;
      background: #4d4d4d !important;
      color: white !important;
      }
      .login_btn:focus {
      box-shadow: none !important;
      outline: 0px !important;
      }
      .login_container {
      padding: 0 2rem;
      }
      .input-group-text {
      background: #4d4d4d  !important;
      color: white !important;
      border: 0 !important;
      border-radius: 0.25rem 0 0 0.25rem !important;
      }
      .input_user,
   .input_pass:focus {
      box-shadow: none !important;
      outline: 0px !important;
      }
      .custom-checkbox .custom-control-input:checked~.custom-control-label::before {
      background-color: #4d4d4d !important;
      }
a {
    color: white;
    text-decoration: none;
    background-color: transparent;
    -webkit-text-decoration-skip: objects;
}
</style>
</head>
<body>

   <div class="container h-100">
      <div class="d-flex justify-content-center h-100">
      <div class="user_card">
      <div class="d-flex justify-content-center">
      <div class="brand_logo_container">
      <img src="https://blogfiles.pstatic.net/MjAxOTA4MjFfNzUg/MDAxNTY2MzU4NTkxNjI4.EanEDuFF8N4WjRu9VCo8ovwB25M3uC31AxFFSXoLbxcg.cS6TL80j2ka6rWSJK87V3pLKh5yb62WInF5Ez1IYth4g.JPEG.kiesnmj1/%EC%A0%95%EB%8F%84.jpg?type=w3" class="brand_logo" alt="정도">
      </div>
      </div>
      <div class="d-flex justify-content-center form_container">
      <form:form action="MemberLogAction" name="frm" id = "frm" method="POST" commandName="loginCommand" >    
            <div class="input-group mb-3">
      <div class="input-group-append">
      <span class="input-group-text"><i class="fas fa-user"></i></span>
      </div>
      <form:input path="id1" id="id1" class="form-control input_user" placeholder="아이디를 입력하세요."/>
      </div>
      <div class="input-group mb-2">
      <div class="input-group-append">
      <span class="input-group-text"><i class="fas fa-key"></i></span>
      </div>
      <form:input path="pw" class="form-control input_pass" placeholder="비밀번호를 입력하세요." />
      </div>
      <div class="form-group">
      <div class="custom-control custom-checkbox">
      <input type="checkbox" class="custom-control-input" id="customControlInline">
      <label class="custom-control-label" for="customControlInline">자동로그인</label>
      </div>
      </div>  
      <div class="d-flex justify-content-center mt-3 login_container">
      <input type="submit" id="submit" class="btn login_btn" value="Login"/>  
      </div>     
      </form:form>
      </div>
         
      <div class="mt-4">     
      <div class="d-flex justify-content-center links">
   아직 회원이 아니세요? <a href="moveReg" class="ml-2">회원가입</a>
      </div>
      <div class="d-flex justify-content-center links">
      <a href="#">비밀번호를 잃어버리셨나요?</a>
      </div>
      </div>
      </div>
      </div>
   </div>
</body>
</html>