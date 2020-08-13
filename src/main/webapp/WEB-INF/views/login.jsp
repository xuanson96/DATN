<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng nhập</title>
</head>
<body >
<style>
  .login {
    margin: 70px 80px auto;
    display: flex;
  }

  .login-item1 {
    background-color: white;
    padding-left: 30px;
    padding-right: 30px;
  }

  .login-item2 {
    background-image: url("http://localhost:8080/project-cuoikhoa//image?name=maytinh.jpg");
    padding: 330px 40px 0px 40px;
    color: white;
    font-size: 20px;
  }

  .item1-input {
    width: 261px;
    height: 37px;
    outline: none;
    border-radius: 3px;
    border: 1px solid #afafaf;
  }

  .checkbox {
    display: flex;
    align-items: center;
    margin-top: 25px;
  }

  .heart {
    display: flex;
    align-items: center;
    margin-top: 100px;
    padding-bottom: 15px;
  }

  .checkbox button {
    padding: 5px 15px;
    border: 1px solid #afafaf;
    border-radius: 3px;
    margin-left: 79px;
  }

  .checkbox button:hover {
    background-color: red;
    color: white;
  }

  input[type=text]:focus {
    border: 1px solid blue;
  }
</style>	
<div class="container" style="background-color: orangered">			
	<div class="login" >
	    <div class="login-item1">
				<c:if test="${param.incorrectAccount != null}">
					<div class="alert alert-danger" style = "margin-top: 26px; text-align: center;color: red; font-size: 18px;"> UserName or Password is incorrect</div>	          									
				</c:if>
				<c:if test="${param.accessDenied != null}">
					<div class="alert alert-danger" style = "margin-top: 22px; text-align: center;font-size: 19px;color: red;"> You are not authorized</div>	           			
				</c:if>
		      <div   style="text-align: center;padding-bottom: 6px;margin-top: 40px;font-size: 30px;font-weight: 800;color: #d82b1f;">
		        Login Now</div>	
		        <hr style = "width: 80px; height: 4px; background-color: orange;margin-bottom: 58px;">  
		      <form action="j_spring_security_check" id="formLogin" method="post">     
			      <div style="padding-bottom: 10px;">USERNAME</div>
			      <input type="text" name="j_username"  class="item1-input">
			      <div style="padding-bottom: 10px;padding-top: 20px;">PASSWORD</div>
			      <input type="text" name="j_password" class="item1-input">
			      <div class="checkbox">
				        <div style="margin-right: 8px;">Remember Me</div>
				        <input style="margin-left: 0px;outline: none;margin: 0px;" type="checkbox" name="remember-me">
				        <button type="submit" style = "outline: none">Login</button>
			      </div>
			      <div class="heart">
				        <div>Create with </div>
				        <i class="fa fa-heart" aria-hidden="true" style = "margin-left: 9px;color: orangered"></i>
				        <div style="margin-left: 10px;">by</div>
				        <div style = "margin-left: 8px; color: red"> Amazon.com</div>
			      </div>
		      </form> 
	    </div>
	    <div class="login-item2">
		      <div style="font-size: 35px;">The First</div>
		      <hr style= "width: 98px ; height: 3px; background-color: white;margin-left: 15px;">
		      <div>If you’re trying to achieve, there will be roadblocks. I’ve had them; everybody has had them. But obstacles
		        don’t have to stop you. If you run into a wall, don’t turn around and give up. Figure out how to climb it, go
		        through it, or work around it.</div>
	    </div>
  </div>
  </div>
</body>
</html>
