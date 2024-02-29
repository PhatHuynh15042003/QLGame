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
                        <a class="nav-link" aria-current="page" href="/user/store" style="color: white;">STORE</a>
                    </li>
                    <li class="nav-item ms-3">
                        <a class="nav-link" href="/user/community" style="color: white;">COMMUNITY</a>
                    </li>
                    <li class="nav-item ms-3">
                        <a class="nav-link" href="/user/profile" style="color: white;">PROFILE</a>
                    </li>
                    <li class="nav-item ms-3">
                        <a class="nav-link" href="/user/chatting" style="color: white;">CHATTING</a>
                    </li>
                    <li class="nav-item ms-3">
                        <a class="nav-link" href="/account/logout" style="color: white;">LOG OUT</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>