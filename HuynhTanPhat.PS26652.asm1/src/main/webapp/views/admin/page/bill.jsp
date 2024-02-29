<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
table th{
margin-left:15px;
}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color: rgb(27 ,40 , 56);color:white">
	<div class="row" style="margin-left:15px">
	<h4>HOÁ ĐƠN</h4>
		<table style="width:700px;height:200px" style="color:white;">
			<thead style="margin-left:15px">
			<tr>
			<th style="width:80px">Id</th>
			<th style="width:150px">Ngày Giao Dịch</th>
			<th style="width:60px">Số tiền</th>
			<th style="width:100px">Id Account</th>
			<th style="width:160px;">Tên Game</th>
			<th style="width:60px">KeyCode</th>
			</tr>
			</thead>
			<tbody style="margin-left:15px;margin-top:30px">
			<tr>
			<th>${transaction.id_transaction}</th>
			<th>${transaction.date_transaction }</th>
			<th>${transaction.money_transaction }</th>
			<th>${transaction.account.id_account }</th>
			<th>${transaction.game.name_game }</th>
			<th>${transaction.keycode.verification_keyCode}</th>
			</tr>
			</tbody>
			
		</table>
		<a href="/transaction/export/pdf" style="color:white">Export PDF</a>
	</div>
</body>
</html>