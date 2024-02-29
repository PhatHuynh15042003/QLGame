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
    <body style="background-color: rgb(27,40,56)">
    <div class="row" width="100%">
        <div class="col-lg-3"style="background-color: rgb(16,26,34);height:565px">
        <div id="username-page">
        <div class="username-page-container">
            <div class="row m-3" style="width:90%;height:120px">
                <div class="col-4">            
                    <div class="profile-user">
                <img src="/image/image.png" alt="" width="60px" height="60px" style="margin-left:0px;margin-top:10px;border:3px solid white">
            </div>
        </div>
        <div class="col-8">
            <p style="color:rgb(0, 218, 218);margin-left:-20px;font-size:25px">${admin.firstname_admin}</p>
            <p style="margin-top:-20px;margin-left:-20px;font-size:10px;color:rgb(65, 166, 180)">Trên Mạng</p>
        </div>
        <p style="font-size:10px;color:white;margin-top:5px">Dưới tay tôi là cả ngàn vận động viên CSGO nổi tiếng do tôi đào tạo.</p>
        </div>
        <div class="row">
        <div class="friend-page" style="width:100%;background-color:black;color:white">Bạn bè</div>
        </div>
        <div class="row" style="border:1px solid rgb(182, 181, 181);border-radius:10px;margin-top:5px;;margin-left:2px;box-shadow:inset">
            <div class="col-3">
                <img src="/image/simple.jpg" alt="" width="60px" height="60px" style="border:1px solid white;margin:5px">
            </div>
        <div class="col-9">
        
            <div class="friend" style="margin-top:10px;color:white">Simple</div>
            <form id="usernameForm-1" name="usernameForm-1">
            <p style="color:rgb(179, 176, 176);font-size:10px">Bạn: 1 tiếng nữa họp team(15 phút trước)</p>
            <a href="" style="text-decoration:none;margin-left:50px"><button type="submit">Chatting</button></a>
            <a href="" style="text-decoration:none;"><button type="submit">Block</button></a>
        	</form>
        </div>
    </div>
    <div class="row">
        <div class="group-page" style="width:100%;background-color:black;color:white;margin-top:100px">Nhóm</div>
    </div>
    <div class="row" style="border:1px solid rgb(182, 181, 181);border-radius: 10px;margin-left:2px;margin-top:5px;box-shadow:inset">
        <div class="col-3">
            <img src="/image/navi.jpg" alt="" width="60px" height="60px" style="border:1px solid white;margin:5px">
        </div>
    <div class="col-9">
        <div class="friend" style="margin-top:10px;color:white">NaVi</div>
         <form id="usernameForm" name="usernameForm">
            <p style="color:rgb(179, 176, 176);font-size:10px">Giờ bạn là trưởng nhóm(15 phút trước)</p>
            <a href="" style="text-decoration:none;margin-left:50px"><button type="submit">Chatting</button></a>
            <a href="" style="text-decoration:none;"><button type="submit">Block</button></a>
        	</form>
    </div>
    </div>
    </div>
    </div>
    </div>
    <div class="col-lg-9">
	<div id="chat-page" class="hidden" style="color:white;width:100%;border:1px solid black">
		<div class="chat-container" >
			<div class="chat-header" style="background-color:#2B3035">
				<img  src="/image/Steam_gray-brown_logo.svg.png" alt="Logo Steam" width="200px">
			</div>
			<div class="connecting">
				Đang kết nối tới máy chủ
			</div>
			<ul id="messageArea" style="height:500px;list-style:none;margin-top:15px">
				
			</ul>
			<form id="messageForm" name="messageForm">
				<div class="form-group">
					<div class="input-group clearfix" >
						<input type="text" id="message" placeholder="Soạn tin nhắn..." autocomplete="off" class="form-control" style="background-color:#2B3035;width:90%;height:70px;color:white">
						<button type="submit" style="color:white;width:10%;height:70px;background-color:#2B3035">Gửi</button>
					</div>
				</div>
			</form>
	</div>
    </div>
    </div>
    </body>
    <script src="https://kit.fontawesome.com/629bca5f0c.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.4/sockjs.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
 <script>
 'use strict';

 var usernamePage = document.querySelector('#username-page');
 var chatPage = document.querySelector('#chat-page');
 var usernameForm1 = document.querySelector('#usernameForm-1');
 var usernameForm2 = document.querySelector('#usernameForm-2');
 var messageForm = document.querySelector('#messageForm');
 var messageInput = document.querySelector('#message');
 var messageArea = document.querySelector('#messageArea');
 var connectingElement = document.querySelector('.connecting');

 var stompClient = null;
 var username = null;


 function connect(event) {
     username = '${admin.firstname_admin}';

     if(username) {
 /*         usernamePage.classList.add('hidden'); */
         chatPage.classList.remove('hidden');

         var socket = new SockJS('/ws');
         stompClient = Stomp.over(socket);

         stompClient.connect({}, onConnected, onError);
     }
     event.preventDefault();
 }
 function onConnected(){
 	stompClient.subscribe('/topic/public', onMessageReceived);
 	stompClient.send("/app/chat.addUser",
 										{},
 										JSON.stringify({sender: username, type: 'JOIN'})
 	)
 	connectingElement.classList.add('hidden');
 }
 function onError(error){
 	connectingElement.textContext = 'Không thể kết nối vào phòng chờ , Vui lòng kiểm tra lại đường truyền!';
 	connectingElement.style.color = red;
 }

 function sendMessage(event){
 	var messageContent = messageInput.value.trim();
 	if(messageContent && stompClient){
 		var chatMessage = {
 			sender: username + ' :',
 			content: messageContent,
 			chat: 'CHAT'
 		};
 		stompClient.send("/app/chat.sendMessage", {}, JSON.stringify(chatMessage));
 		messageInput.value = '';
 	}
 	event.preventDefault();
 }
 function onMessageReceived(payload){
 	var message = JSON.parse(payload.body);
 	
 	var messageElement = document.createElement('li');
 	
 	if(message.type == 'JOIN'){
 		messageElement.classList.add('event-message');
 		message.content = message.sender + ' Đã vào';
 	}else if (message.type === 'LEAVE') {
        messageElement.classList.add('event-message');
        message.content = message.sender + ' Đã thoát';
 	}else{
 		messageElement.classList.add('chat-message');
 		var usernameElement = document.createElement('span');
         var usernameText = document.createTextNode(message.sender);
         usernameElement.appendChild(usernameText);
         messageElement.appendChild(usernameElement);
 	}
 	 var textElement = document.createElement('p');
     var messageText = document.createTextNode(message.content);
     textElement.appendChild(messageText);

     messageElement.appendChild(textElement);

     messageArea.appendChild(messageElement);
     messageArea.scrollTop = messageArea.scrollHeight;
   
 }
 usernameForm.addEventListener('submit', connect, true)
 messageForm.addEventListener('submit', sendMessage, true)
 </script>