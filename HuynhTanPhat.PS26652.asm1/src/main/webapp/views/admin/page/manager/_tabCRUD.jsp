<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style>
    .list-group-item{
    background-color:#2B3035;
    color:white;
    border:#2B3035;
    font-family: Tahoma, sans-serif;
    }
    .list-group-item a{
    color:white;
    }
   
    </style>
<div class="row" style="background-color: rgb(27 ,40 , 56);height:600px;margin-top:-20px">
        <div class="col-3" style="height:600px;background-color:#2B3035">
            <ul class="list-group" style="height:300px;background-color:#2B3035;">
                <li class="list-group-item fs-4"> Manager</li> 
                <li class="list-group-item text-bg-primary"><a href="/admin/manager/account">Quản lý Account</a></li>
                <li class="list-group-item"><a href="/admin/manager/game">Quản lý Game</a></li>
                <li class="list-group-item"><a href="/admin/manager/gametype">Quản lý Loại Game</a></li>
                <li class="list-group-item"><a href="/admin/manager/keycode">Quản lý Keycode</a></li>
                <li class="list-group-item"><a href="/admin/manager/image">Quản lý ImageGame</a></li>
              </ul>
        </div>