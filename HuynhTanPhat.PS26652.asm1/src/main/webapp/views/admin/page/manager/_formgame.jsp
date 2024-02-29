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
	<form:form action="/admin/manager/game/add" modelAttribute="game">
		<h3 style="color:white">FORM GAME</h3>
		<div class="row" style="width:800px;margin-left:20px">
    <div class="col-8">
    	    	<label style="color:white">Name Game:</label> <br>
		<form:input path="name_game" placeholder="Name Game?" style="background-color:#2B3035;color:white;border-radius:5px"/> <br>
		<label style="color:white">Type Game:</label> <br>
		<form:input path="gametype" placeholder="Type Game?" style="background-color:#2B3035;color:white;border-radius:5px"/> <br>
		<label style="color:white">Price Game:</label> <br>
		<form:input path="price_game" placeholder="Price Game?" style="background-color:#2B3035;color:white;border-radius:5px"/> <br>
		<label style="color:white">Description Game:</label> <br>
		<form:input path="description_game" placeholder="Description Game?" style="background-color:#2B3035;color:white;border-radius:5px"/> <br>
		<label style="color:white">Version Game:</label> <br>
		<form:input path="version_game" placeholder= "Version Game?" style="background-color:#2B3035;color:white;border-radius:5px"/> <br>
		<label style="color:white">Release Date Game:</label> <br>
		<form:input type="date" path="releasedate_game" placeholder="ReleaseDate Game?" style="background-color:#2B3035;color:white;border-radius:5px"/> <br>
		<label style="color:white">Supplier Game:</label> <br>
		<form:input path="supplier" placeholder="Supplier Game?" style="background-color:#2B3035;color:white;border-radius:5px"/> <br>
      <button formaction="/admin/manager/game/add" class="text-end btn btn-success " style="margin-top:15px;">Thêm</button>
      <button formaction="/admin/manager/game/update" class="text-end btn btn-success " style="margin-top:15px;">Cập nhật</button> 
      <br>
      <br>
    	<a href="/admin/manager/game" style="text-decoration:none;margin-top:30px;margin-left:80px">Quay trở lại</a>
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