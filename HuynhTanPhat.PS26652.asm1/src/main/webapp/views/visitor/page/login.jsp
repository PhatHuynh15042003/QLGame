<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background-color: rgb(27 ,40 , 56);
            color: #c6c7c8;

        }

        .login-container {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
          
        }

        .login-box {
            background-color: #212222;
            border-radius: 8px;
            padding: 20px;
            width: 700px;
            text-align: center;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            display: flex; /* Sử dụng flex container để xếp các phần tử */
        }

        .qr-code {
            margin-left: 20px; /* Thêm khoảng cách giữa hình QR và ô đăng nhập */
        }

        .login-box h2 {
            color: #66c0f4;
            margin-bottom: 20px;
        }

        .input-group {
            margin-bottom: 20px;
            flex: 1; /* Cho phần input mở rộng để lấp đầy phần còn lại của container */
        }

        .input-group input {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #36404a;
            border-radius: 4px;
            background-color: rgb(51,53,59);
            color: #c6c7c8;
        }

        .input-group label {
            display: block;
            margin-bottom: 5px;
            color: rgb(0, 140, 255);
            float: left;
            font-size:13px;
        }

        .login-button {
            background-color: #008ee0;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .login-button:hover {
            background-color: #4589b0;
        }
    </style>
<body>
	<form action="/account/login" method="post">
    <div class="login-container">
        <div class="login-box">
            <div class="input-group">
                <h4>Đăng nhập với tài khoản của bạn</h4>
                <form action="#" method="post">
                    <label for="username">ĐĂNG NHẬP BẰNG TÊN TÀI KHOẢN <span style="color:red">${param.error}</span> </label>
                    <input type="text" id="id" name="email" required>
                    <label for="password" style="color:rgb(216, 213, 213)">MẬT KHẨU</label>
                    <input type="password" id="password" name="password" required>
                    <button formaction="/account/login" type="submit" class="login-button" style="width:250px;margin-top:5px">Đăng nhập</button>
                </form>
                <a href="" style="text-decoration:none;color:rgb(166, 161, 161)"><p style="font-size:12px;margin-top:30px;margin-left:130px;">Không thể đăng nhập?</p></a>
            </div>
            <div class="qr-code">
                <p>Hoặc đăng nhập bằng QR</p>
                <img src="/image/qrcode.png" alt="QR Code" width="200" height="220">
            </div>
        </div>
    </div>
    </form>
</body>
</html>