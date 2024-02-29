<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style>
     .nav-link{
    text-decoration:none;
    color:rgb(174, 171, 171);
    }
    .nav{
        background-color:black;
    }
    </style>
<nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark" style="background-color:#2B3035;height:80px">
        <div class="container-fluid">
            <a class="navbar-brand mb-5" href="#">
                <img  src="/image/Steam_gray-brown_logo.svg.png" alt="Logo Steam" width="200px">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav fw-bold">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/admin/store" style="color: white;">STORE</a>
                    </li>
                    <li class="nav-item ms-3">
                        <a class="nav-link" href="/admin/community" style="color: white;">COMMUNITY</a>
                    </li>
                    <li class="nav-item ms-3">
                        <a class="nav-link" href="/admin/profile" style="color: white;">PROFILE</a>
                    </li>
                    <li class="nav-item ms-3">
                        <a class="nav-link" href="/admin/chatting" style="color: white;">CHATTING</a>
                    </li>
                    <li class="nav-item ms-3">
                        <a class="nav-link" href="/admin/manager/game" style="color: white;">MANAGER</a>
                    </li>
                    <li class="nav-item dropdown dropstart" style="font-size: 10px; color: white; margin-left: 300px;" >
                        <a class="nav-link" data-bs-toggle="dropdown" href="#" role="button"
                            aria-expanded="false" style="font-family: Arial; color: white; textecoration:none;font-size:15px" > <span style="color:rgb(102,192,244);font-size:12px">Xin chào,</span> ${account.email_account}</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="/admin/profile">Xem Profile</a></li>
                            <li><a class="dropdown-item" href="#">Tài Khoản </a></li>
                            <li><a class="dropdown-item" href="/account/deposit">Số dư ví: <strong><span style="color:rgb(102,192,244)">${money}</span> </strong>đ</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="/account/logout">Đăng Xuất </a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>