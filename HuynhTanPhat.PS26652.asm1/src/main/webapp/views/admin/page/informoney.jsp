<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color: rgb(27 ,40 , 56);">
	<div class="row" style="height:500px;">
		<div class="col-4 text-center" style="background-color: rgb(0,102,204);color:white">
			<img alt="" src="/image/${admin.image_admin}" height="150" style="margin-top:15px;">
			<div>
			Tên : ${admin.firstname_admin } ,
			Họ : ${admin.lastname_admin } <br>
			Số dư ví : ${money} đ
			</div>
		</div>
		<div class="col-8" style="background-color: rgb(145,208,255)">
			<strong><h5 style="color:black">Các gói nạp cho Steam Wallet của bạn.</h5></strong>
			<div>
			Steam Wallet: 75000 đ <br>
			<a href="/cashout/75000"><div class="btn btn-success">Nạp tiền</div></a>
			</div>
			<div>
			Steam Wallet: 150000 đ <br>
			<a href="/cashout/150000"><div class="btn btn-success">Nạp tiền</div></a>
			</div>
			<div>
			Steam Wallet: 225000 đ <br>
			<a href="/cashout/225000"><div class="btn btn-success">Nạp tiền</div></a>
			</div>
			<div>
			Steam Wallet: 300000 đ <br>
			<a href="/cashout/300000"><div class="btn btn-success">Nạp tiền</div></a>
			</div>
		</div>
	
	</div>
</body>
</html>