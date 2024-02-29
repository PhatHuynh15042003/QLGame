<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
body{
   background-color: rgb(27 ,40 , 56);
   }
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/admin/deposit" method="post">
	<label style="color:white">Tài khoản: ${account.email_account}</label> <br>
	<label style="color:white">Số dư: ${account.money_account} VNĐ</label> <br>
		<!-- <input placeholder="Money" name="amount" value="000000" style="background-color:#2B3035;color:white;border-radius:5px"/> <br> <br> -->
	</form>
</body>
</html>