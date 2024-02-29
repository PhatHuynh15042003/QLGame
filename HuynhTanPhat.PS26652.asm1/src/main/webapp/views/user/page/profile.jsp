<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <style>
    * {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

body {
	font-family: Arial, sans-serif;
}

.row {
	display: flex;
	max-width: 1160px;
}

.col-11 {
	flex: 10;
	padding: 15px;
}

.col-1 {
	flex: 3;
	padding: 15px;
}

body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #171a21;
	/* Steam-like background color */
	color: #fff;
}

header {
	background-color: #000000;
	color: #fff;
	padding: 10px 20px;
	font-family: Arial, sans-serif;
}

ul {
	list-style-type: none;
	margin-left: 200px;
	padding: 0;
	overflow: hidden;
}

li {
	display: inline-block;
}

a {
	display: block;
	color: #fff;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

a:hover {
	background-color: #ddd;
	color: #000;
}

/* .login {
            background-color: #5d7b96;
            border-radius: 5px;
            font-size: 10px;
            text-align: right;
        }

        .separator {
            margin: 0 10px;
            color: #fff;
        }

        .small-link {
            font-size: 12px;
        } */
.login {
	margin-left: 230px;
	font-size: 10px;
}

.small-link {
	margin-right: 20px;
	font-size: 10px;
	/* Kích thước nhỏ hơn */
}

.profile-container {
	width: auto;
	background-color: #232a31;
	/* Steam-like profile background color */
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

section {
	max-width: 900px;
	margin-left: 0px;
	background-color: #020101;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
	color: #333;
}

.profile-info {
	display: flex;
}

.avatar {
	width: 100px;
	height: 100px;
	border-radius: 5%;
	overflow: hidden;
	margin-right: 20px;
}

.avatar img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.user-details {
	flex-grow: 1;
}

.user-details h2 {
	margin: 0;
}

.user-details p {
	margin: 5px 0;
	color: #666;
}

.game-list {
	margin-top: 20px;
}

.game-item {
	border: 1px solid #344152;
	/* Steam-like game item border color */
	padding: 10px;
	margin-bottom: 10px;
	display: flex;
	align-items: center;
	background-color: #2c3848;
	/* Steam-like game item background color */
	border-radius: 5px;
}

.game-item img {
	width: 50px;
	height: 50px;
	margin-right: 10px;
	object-fit: cover;
	margin-bottom: 20px;
}

.game-item p {
	margin: 0;
}
    
    </style>
<body>
<div class="container">

<c:forEach var="user" items="${users}">
<div class="row" style="">
	<div class="col-11">
		<div class="profile-container">
			<section>
				<div class="profile-info">
					<div class="avatar">
						<img src="/image/${user.image_nguoiDung}" alt="User Avatar">
					</div>
					<div class="user-details">
						<h2>${user.lastname_nguoiDung} ${user.firstname_nguoiDung}</h2>
						<p>${user.email_nguoiDung}</p>
						<p>${user.account.money_account} đ</p>
						<p>${user.sdt_nguoiDung}</p>
						<p>${user.registerdate_nguoiDung}</p>
					</div>
				</div>
			</section>

			<div class="game-list" style="max-width: 835px; margin-left: 0px;">
				<h3>Favorite Games</h3>
				<div class="game-item">
					<img src="/image/city.png" alt="Game 1">
					<p>PUPG Mobile</p>
				</div>
				<div class="game-item">
					<img src="/image/city.png" alt="Game 1">
					<p>PUPG Mobile</p>
				</div>
				<div class="game-item">
					<img src="/image/city.png" alt="Game 1">
					<p>PUPG Mobile</p>
				</div>
				<div class="game-item">
					<img src="/image/city.png" alt="Game 1">
					<p>PUPG Mobile</p>
				</div>
			</div>

		</div>
	</div>
	<div class="col-1">
		<!-- Nội dung của phần 2 -->
		<h3>Cấp:</h3>
		<p style="margin-top: 20px;">bạn có thể chọn 1 trong các huy hiệu
			ở đây chọn 1 huy hiệu từ trang chỉnh sửa hồ sơ của bạn :</p>
		<button
			style="width: 150px; height: 35px; font-size: 20px; margin-top: 20px;">Sửa
			Hồ Sơ</button>
		<a style="text-align: left;">Huy Hiệu</a> <a style="text-align: left;">Trò
			Chơi</a> <a style="text-align: left;">Kho Đồ </a> <a
			style="text-align: left;">Ảnh Chụp</a> <a style="text-align: left;">Videos</a>
		<a style="text-align: left;">Vật Phẩm wordshop</a> <a
			style="text-align: left;">Đánh giá</a>
	</div>
</div>
</c:forEach>
</div>
</body>