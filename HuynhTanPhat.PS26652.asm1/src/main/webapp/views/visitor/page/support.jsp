<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: rgb(27 ,40 , 56);
            color: #fff;

        }

        /* header {
            background-color: #171a21;
            padding: 10px;
            text-align: center;
        } */

        


        .login {
            margin-left: auto;
            font-size: 10px;
        }

        .small-link {
            font-size: 0.8em;
            /* Kích thước nhỏ hơn */
        }

        p {
            width: 900px;
            height: 90px;
            margin-left: 70px;
            text-align: center;
            border-radius: 3px;
            /* Tạo khung xung quanh thẻ p */
            padding: 10px;
            display: inline-block;
            /* Ngăn chặn thẻ p chiếm toàn bộ chiều rộng */
            background: #000000;
        }

        button {
            width: 230px;
            display: inline-block;
            /* Hiển thị nút trên cùng một dòng */
            margin: 0 20px;
            /* Khoảng cách giữa các nút */
            padding: 8px 16px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 4px;
            /* Góc bo tròn của nút */
            cursor: pointer;
            margin-top: 20px;
        }

        /* Thiết lập màu khi nút được hover */
        button:hover {
            background-color: #45a049;
        }

        .overlay-text {
            margin: 0;
            margin-top: 20px;
            left: 40%;
            margin-left: 30px;
            /* Đặt nó ở giữa theo chiều ngang */
            transform: translate(-50%, -50%);
            /* Dịch chuyển nó để căn giữa hoàn toàn */
            color: #ffebeb;
            font-size: 18px;
        }

        .accordion-container {
            display: flex;
            flex-direction: column;
            width: 300px;
        }

        /* Kiểu cho mục accordion */
        .accordion-item {
            border: 1px solid #ccc;
            margin-bottom: 5px;
        }

        /* Kiểu cho nút accordion */
        .accordion-button {
            background-color: #040404;
            text-align: left;
            padding: 10px;
            cursor: pointer;
            user-select: none;
        }

        /* Kiểu cho nội dung accordion */
        .accordion-content {
            display: none;
            padding: 10px;
        }

        .dropdown {
            display: inline-block;
            position: relative;
            text-align: left;
        }

        /* Style for the dropdown button */
        .dropdown-btn {
            background-color: #36454e;
            color: #fff;
            padding: 10px;
            border: none;
            margin-left: 70px;
            cursor: pointer;
            width: 920px;
            font-size: 17px;
            text-align: left;

        }

        /* Style for the dropdown content */
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #0f0e0e;
            min-width: 160px;
            color: #201b1b;
            margin-left: 70px;
            width: 920px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        /* Style for dropdown options */
        .dropdown-content a {
            color: #ece9e9;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        /* Hover effect for dropdown options */
        .dropdown-content a:hover {
            background-color: #66b2e1;
        }

        /* Show the dropdown content when the dropdown button is focused */
        .dropdown-btn:focus+.dropdown-content {
            display: block;
        }
        footer {
            background-color: #336bca;
            color: #ffffff;
            padding: 20px;
            text-align: left;
            position: relative;
            margin-top: 10px;
            bottom: 0;
        }

        .footer-content {
            display: flex;
            justify-content: space-between;
            max-width: 1200px;
            margin: 0 auto;
        }

        .footer-section {
            flex: 1;
            margin-right: 20px;
        }

        .footer-section h3 {
            color: #000000;
            font-size: 18px;
            margin-bottom: 10px;
        }

        .footer-links {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .footer-links li {
            margin-bottom: 8px;
        }

        .footer-links a {
            color: #ffffff;
            text-decoration: none;
        }

        .footer-links a:hover {
            color: #66c0f4;
        }
    </style>

    <main>
        <!-- Your website content goes here -->
        <h2 style="margin-left: 70px;">Welcome to Steam-Support</h2>
        <h2 style="margin-left: 70px; color: #4b84ff; font-size: 17px;">What do you need help with?</h2>
        <p style="background-color:#212222 ">
            <span class="overlay-text">Sign in to your Steam account to review purchases, account status, and get
                personalized help.</span>
            <a href="/visitor/login"><button>Sign in to Steam</button></a>
            <a href="/visitor/register"><button>Help ,I can't sign in</button></a>
        </p>
        <h2 style="margin-left: 70px; color: #4b84ff; font-size: 17px; font-family:serif;">POPULAR PRODUCTS</h2>

        <div class="dropdown mt-1">
            <button class="dropdown-btn">
                <a style="position: relative; bottom: 5px;">Tôi đang gặp vấn đề về các mục</a>
            </button>
            <div class="dropdown-content">
                <a href="#">Không thể đăng nhập</a>
                <a href="#">Không thể tạo tài khoản </a>
                <a href="#">Không thể thanh toán được</a>
                <a href="#">Lỗi Mua Hàng</a>
            </div>
        </div>
        <!-- <div class="dropdown mt-1">
            <button class="dropdown-btn">
                <img src="hinh.jpg" style="width: 25px; height: 25px;">
                <a style="position: relative; bottom: 5px;">Counter-Strike 2</a>
            </button>
            <div class="dropdown-content">
                <a href="#">Is's not in my libraly</a>
                <a href="#">Manage is authentication codes</a>
                <a href="#">Log in for more personnalized options </a>
            </div>
        </div> -->
        <div class="dropdown mt-1">
            <button class="dropdown-btn">
                <img src="/image/countersrike-cmt.jpeg" style="width: 25px; height: 25px;">
                <a style="position: relative; bottom: 5px;">COUNTER-STRIKE 2</a>
            </button>
            <div class="dropdown-content">
                <a href="#">Is's not in my libraly</a>
                <a href="#">Log in for more personnalized options</a>
            </div>
        </div>
        <div class="dropdown mt-1">
            <button class="dropdown-btn">
                <img src="/image/gta5.jpeg" style="width: 25px; height: 25px;">
                <a style="position: relative; bottom: 5px;">GRAND-THEFT AUTO 5</a>
            </button>
            <div class="dropdown-content">
                <a href="#">Is's not in my libraly</a>
                <a href="#">Log in for more personnalized options</a>
                <a href="#">Giới Thiệu</a>
                <a href="#">Cập Nhật</a>
            </div>
        </div>
        <div class="dropdown mt-1">
            <button class="dropdown-btn">
                <img src="/image/tomclancy.jpeg" style="width: 25px; height: 25px;">
                <a style="position: relative; bottom: 5px;">Rainbow Six Siege</a>
            </button>
            <div class="dropdown-content">
                <a href="#">View in Store</a>
                <a href="#">Log in for more personnalized options</a>
                <a href="#">View in my Library</a>
                <a href="#">Singin to get personalized help for Apex Legends.</a>
            </div>
        </div>
        <hr style="width: 920px;    margin-left: 70px;">
        <hr style="width: 920px;    margin-left: 70px;">
        <div class="dropdown mt-1">
            <button class="dropdown-btn">
                <a style="position: relative;">Game, software ,etc </a>
            </button>
            <div class="dropdown-content">
                <a href="#">Counter- Strick 2</a>
                <a href="#">Dota 2 </a>
                <a href="#">Nakara-Bladeppoin</a>
                <a href="#">Gand theft auto V</a>
                <a href="#">Monter Hunter: word </a>
                <hr>
                <a href="#">Monter Hunter: word </a>
            </div>
        </div>
        <div class="dropdown mt-1">
            <button class="dropdown-btn">
                <a style="position: relative;">Purchases</a>
            </button>
            <div class="dropdown-content">
                <a href="#">I can't complete my purchases on the Steam Strore </a>
                <a href="#">I need help with a Steam Girt Card on Wallet Code</a>
                <a href="#">I have changes from Steam that I didn't make</a>
                <a href="#">View complete  purchasesing history</a>
            </div>
        </div>
        <div class="dropdown mt-1">
            <button class="dropdown-btn">
                <a style="position: relative;">My Acccount</a>
            </button>
            <div class="dropdown-content">
                <a href="#">Manage Account Detail (Email,phone ,payment,country)</a>
                <a href="#">Family Library Sharing</a>
                <a href="#">Family Views</a>
                <a href="#">Steam Guard</a>
                <a href="#">Phone Number</a>
                <a href="#">Steam Guard Mobie authentication</a>
                <a href="#">My Account is stolen or hijacked</a>
                <a href="#">Help my sign in to my account</a>
                <hr>
                <a href="#">Data Related to Your Steam Account</a>
            </div>
        </div>
       
        <div class="dropdown mt-1">
            <button class="dropdown-btn">
                <a style="position: relative;">Steam Client</a>
            </button>
            <div class="dropdown-content">
                <a href="#">Steam Client Crashes</a>
                <a href="#">Steam can't Contact Login Servers</a>
                <a href="#">Big Picture mode </a>
                <a href="#">Family Library Shraing </a>
                <a href="#">Family Views</a>
                <a href="#">Offline mode</a>
                <a href="#">Steam Cloud</a>
                <hr>
                <a href="#">Steam Gift Card or wallet Code</a>
            </div>
        </div>

        <div class="dropdown mt-1">
            <button class="dropdown-btn">
                <a style="position: relative;">Steam Communiti</a>
            </button>
            <div class="dropdown-content">
                <a href="#">Sign in with account game</a>
                
            </div>
        </div>

        <div class="dropdown mt-1">
            <button class="dropdown-btn">
                <a style="position: relative;">Steam Hardware</a>
            </button>
            <div class="dropdown-content">
                <a href="#">Steam Deck</a>
                <a href="#">SteamVR</a>
                <a href="#">Steam Controller</a>
                <a href="#">Steam Link</a>
                <a href="#">Steam Hardware Acceseories</a>
                <a href="#">Steam Link App</a>
            </div>
        </div>
        <hr style="width: 920px;    margin-left: 70px;">
        <div class="dropdown mt-1">
            <button class="dropdown-btn">
                <a style="position: relative;">I have changes form Steam that I did't  make</a>
            </button>
            <div class="dropdown-content">
                <a href="#">I have Steam Account</a>
                <a href="#">I am not a Steam User</a>
                <a href="#">I have diffeerent payment issue</a>
            </div>
        </div>
       
    <form action="/search" method="get" style="margin-top: 40px;">
        <input type="search" id="search" name="search" placeholder="Tìm Kiếm " style="width: 665px; height: 50px; margin-left: 70px;">
        <button type="submit" style="height: 50px;">Tìm kiếm</button>
    </form>
   
    </main>