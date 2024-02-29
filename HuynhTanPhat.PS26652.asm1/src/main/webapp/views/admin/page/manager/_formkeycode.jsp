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
	<form:form action="/admin/manager/keycode/add" modelAttribute="keycode">
		<h3 style="color:white">FORM KEYCODE</h3>
		<div class="row" style="width:800px;margin-left:20px">
    <div class="col-8">
      <label style="color:white">Active KeyCode:</label> <br>
      <form:input path="quantity" placeholder="Quantity KeyCode?" style="background-color:#2B3035;color:white;border-radius:5px"/> <br> <br>
		<label style="color:white">Id Game:</label> <br>
		<form:input path="game" placeholder="ID Game?" style="background-color:#2B3035;color:white;border-radius:5px"/> <br>
		
		
		
      <button formaction="/admin/manager/keycode/add" class="text-end btn btn-success " style="margin-top:15px;">Thêm</button>
      <button formaction="/admin/manager/keycode/update" class="text-end btn btn-success " style="margin-top:15px;">Cập nhật</button> 
      <br>
      <br>
    	<a href="/admin/manager/keycode" style="text-decoration:none;margin-top:30px;margin-left:80px">Quay trở lại</a>
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