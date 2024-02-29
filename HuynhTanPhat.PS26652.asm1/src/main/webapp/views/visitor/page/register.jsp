<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
            
      body {
      	font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: rgb(27 ,40 , 56);
            color: #c6c7c8;
            margin-bottom:15px;

        }

        .container {
            background-color: #2c3e50;
            padding: 20px;
            border-radius: 8px;
            width: 800px;
            text-align: center;
        }

        .container input {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
        }

        .container button {
            background-color: #11c723;
            color: #fff;
            padding: 10px;
            border: none;
            width: 100%;
            cursor: pointer;
            border-radius: 4px;
        }

        .container button:hover {
            background-color: #2980b9;
        }
</style>
<body>
<div class="container">
        <h2>Đăng Ký Tài Khoản Steam</h2>
        <form action = "/account/register" method = "post">
        	<input name = "id_account" placeholder = "ID tài khoản">
            <input name = "username" type="text" placeholder="Tên người dùng" required>
            <input name = "email_account" type="email" placeholder="Email" required>
            <input name = "password_account" type="password" placeholder="Mật khẩu" required>
            <input name = "re-password" type="password" placeholder="Xác nhận mật khẩu" required>
            <button type="submit" >Đăng Ký</button>
        </form>
    </div>
</body>