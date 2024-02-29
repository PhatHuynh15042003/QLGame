<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="col-9">
	<form:form action="/admin/manager/account/add" modelAttribute="account">
		<h3 style="color:white">FORM ACCOUNT</h3>
		<div class="row" style="width:800px;margin-left:20px">
    <div class="col-8">
    <div>
    <label style="color:white">Email Account:</label> <br>
    <form:input path="email_account" placeholder="Email Account?" style="background-color:#2B3035;color:white;border-radius:5px"/> <br> <br>
    <label style="color:white">Level Account:</label> <br>
    <form:input path="level_account" placeholder="Level Account?" style="background-color:#2B3035;color:white;border-radius:5px"/> <br> <br>
      <label style="color:white">Money Account:</label> <br>
      <form:input path="money_account" placeholder="Money Account?" style="background-color:#2B3035;color:white;border-radius:5px"/> <br> <br>
		<label style="color:white">Password Account:</label> <br>
		<form:input type="password" path="password_account" placeholder="Password Account?" style="background-color:#2B3035;color:white;border-radius:5px"/> <br> <br>
			
		
		<div style="color:white">
		<label style="color:white">Role Account:</label> <br>
		<form:radiobutton path="role_account"  checked="checked" value="true"/>Admin
		<form:radiobutton path="role_account"  checked="checked" value="false"/>User 
		</div> <br>
		</div>
		
      <button formaction="/admin/manager/account/add" class="text-end btn btn-success " style="margin-top:15px;">Thêm</button>
      <button formaction="/admin/manager/account/update" class="text-end btn btn-success " style="margin-top:15px;">Cập nhật</button> 
      <br>
      <br>
    	<a href="/admin/manager/account" style="text-decoration:none;margin-top:30px;margin-left:80px">Quay trở lại</a>
    </div>
    <div class="col-4">
    <div class="img-steamcard" style="width:200">
    <img alt="" src="/image/steamcard.png"  height="300">
    </div>
    </div>
  </div>
  	
	</form:form>
	  </div>
</body>
</html>