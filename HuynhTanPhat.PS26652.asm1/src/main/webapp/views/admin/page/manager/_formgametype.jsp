<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<body>
<div class="col-9">
	<form:form action="/admin/manager/gametype/add" modelAttribute="gametype">
		<h3 style="color:white">FORM GAME TYPE</h3>
		<div class="row" style="width:800px;margin-left:20px">
    <div class="col-8">
    <label style="color:white">Name GameType:</label> <br>
		<form:input path="name_gameType" placeholder="Name GameType?" style="background-color:#2B3035;color:white;border-radius:5px"/> <br>
      <button formaction="/admin/manager/gametype/add" class="text-end btn btn-success " style="margin-top:15px;">Thêm</button>
      <button formaction="/admin/manager/gametype/update" class="text-end btn btn-success " style="margin-top:15px;">Cập nhật</button> 
      <br>
      <br>
    	<a href="/admin/manager/gametype" style="text-decoration:none;margin-top:30px;margin-left:80px">Quay trở lại</a>
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
