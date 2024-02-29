<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<style>
    .nav-link{
    text-decoration:none;
    color:rgb(174, 171, 171);
    }
    .nav{
        background-color:black;
    }
    hr{
        color: white;
    }
    a{
        text-decoration:none;
    }
</style>
<body style="background-color: rgb(27 ,40 , 56)">
    <div class="container">
    <div class="body">
        <div class="name-game">
            <h3 style="color:rgb(102,192,244);margin-top:10px;">${game.name_game }</h3>
        </div>
        <div class="infor-game">
            <div class="row">
                <div class="col-7" style="">
                    <img src="/image/${game.imageGame[1].name_image}" alt="" style="max-height:350px">
                     <div class="d-flex mt-3" style="">
                <a href=""><img src="/image/${game.imageGame[1].name_image}" alt="" style="height:80px;margin-right:15px"></a>
                <a href=""><img src="/image/${game.imageGame[2].name_image}" alt="" style="height:80px;margin-right:15px"></a>
                <a href=""><img src="/image/${game.imageGame[3].name_image}" alt="" style="height:80px;margin-right:15px"></a>
                <a href=""><img src="/image/${game.imageGame[4].name_image}" alt="" style="height:80px;margin-right:15px"></a>
             </div>
                </div>
                <div class="col-5" style="border:3px solid black">
                    <img src="/image/${game.imageGame[1].name_image}" alt="" height="200" style="margin:15px">
                    <p style="color:white;">${game.description_game}
                    </p>
                    <p style="color:white;">Trạng thái: <span style="color:rgb(102,192,244)">${status}</span> </p>
                    <p style="color:white">Ngày phát hành: <span style="color:rgb(102,192,244)">${game.releasedate_game}</span> </p>
                    <p style="color:white">Phiên bản: <span style="color:rgb(102,192,244)">${game.version_game}</span> </p>  
                    <div class="row" style="color:white;margin-left:10px;margin-top:15px">
                        <div class="col-2" style="background-color: rgb(25,54,75)">
                    <span style="color:rgb(102,192,244);">${game.gametype.name_gameType}</span>
                </div>
            
                <div class="col-3" style="background-color: rgb(25,54,75);margin-left:10px">
                    <span style="color:rgb(102,192,244);">Multiplayer</span>
                </div>
                
                </div>
                <div class="row">
                    <div class="col text-end">
                       <a href="/admin/store"><p style="color:aqua;margin-right:15px">Quay về trang Store</p></a> 
                    </div>
                </div>
                </div>
            </div>
        </div>
        <hr>
        <div class="buy-game" style="border:1px solid grey;width:650px;height:150px;border-radius:5px;color:white;background-color: rgb(25,54,75) ">
            <p style="font-size: 15px;margin-left:10px;color:rgb(102,192,244)">Mua Game: <strong style="font-size:20px;color:white">${game.name_game }</strong> </p>
            <div class="name-game" style="margin-left:10px;font-size:13px;color:white">
                ${game.description_game }
            </div>
            <div class="row">
                <div class="col text-end">
                    <a href="#" class="btn btn-success ms-2 mt-3 me-5">${game.price_game } VNĐ </a>
                </div>
            </div>
            
        </div>
        <h6 style="color:white;margin-top:15px">VỀ TRÒ CHƠI NÀY</h6>
        <hr style="color:white">
        <div class="row" style="width:900px">
            <div class="col-4">
                <div class="card" style="width: 18rem;background-color:rgb(27,40,56);color:white">
                    <img src="/image/meme1.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">Khoa Nguyễn</h5>
                      <p class="card-text">Game rác . Phí tiền mua</p>
                      <div class="row">
                        <div class="col text-end">
                            <a href="#">Chi tiết Comment</a>
                        </div>
                      </div>
                    </div>
                  </div>
            </div>
            <div class="col-4">
                <div class="card" style="width: 18rem;background-color:rgb(27,40,56);color:white">
                    <img src="/image/meme2.jpeg" class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">Dũng Nguyễn</h5>
                      <p class="card-text">Game quá hay. Lấy máu tôi đi!!!</p>
                      <div class="row">
                        <div class="col text-end">
                            <a href="#">Chi tiết Comment</a>
                        </div>
                      </div>
                    </div>
                  </div>
            </div>
            <div class="col-4">
                <div class="card" style="width: 18rem;background-color:rgb(27,40,56);color:white">
                    <img src="/image/meme4.gif" class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">Đức Phạm</h5>
                      <p class="card-text">Tôi mắc bệnh nan y. Cuối cùng trước khi nhắm mắt tôi đã có thể chơi một game tuyệt vời đến vậy.</p>
                      <div class="row">
                        <div class="col text-end">
                            <a href="#">Chi tiết Comment</a>
                        </div>
                      </div>
                     
                    </div>
                  </div>
            </div>
        </div>
        <div class="row" style="width:900px">
            <div class="col-4">
                <div class="card" style="width: 18rem;background-color:rgb(27,40,56);color:white">
                    <img src="/image/meme5.jpeg" class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">Phúc Trịnh</h5>
                      <p class="card-text">Game keo quá . Mong ra season 2.</p>
                      <div class="row">
                        <div class="col text-end">
                            <a href="#">Chi tiết Comment</a>
                        </div>
                      </div>
                    </div>
                  </div>
            </div>
            <div class="col-4">
                <div class="card" style="width: 18rem;background-color:rgb(27,40,56);color:white">
                    <img src="/image/meme6.avif" class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">Thuận Nguyễn</h5>
                      <p class="card-text">Game đéo gì thế này!</p>
                      <div class="row">
                        <div class="col text-end">
                            <a href="#">Chi tiết Comment</a>
                        </div>
                      </div>
                    </div>
                  </div>
            </div>
            <div class="col-4">
                <div class="card" style="width: 18rem;background-color:rgb(27,40,56);color:white">
                    <img src="/image/meme7.jpeg" class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">Đức Phạm</h5>
                      <p class="card-text">Nhân vật chính của game có cốt truyện sâu sắc quá khiến tôi không kiềm được nước mắt.</p>
                      <div class="row">
                        <div class="col text-end">
                            <a href="#">Chi tiết Comment</a>
                        </div>
                      </div>
                     
                    </div>
                  </div>
            </div>
        </div>
        <div class="row" style="width:900px">
            <div class="col-4">
                <div class="card" style="width: 18rem;background-color:rgb(27,40,56);color:white">
                    <img src="/image/meme8.jpeg" class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">Khánh Lê</h5>
                      <p class="card-text">Gâuuuuuuu!</p>
                      <div class="row">
                        <div class="col text-end">
                            <a href="#">Chi tiết Comment</a>
                        </div>
                      </div>
                    </div>
                  </div>
            </div>
            <div class="col-4">
                <div class="card" style="width: 18rem;background-color:rgb(27,40,56);color:white">
                    <img src="/image/meme10.gif" class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">Tin Nguyễn</h5>
                      <p class="card-text">blewblewblewblew</p>
                      <div class="row">
                        <div class="col text-end">
                            <a href="#">Chi tiết Comment</a>
                        </div>
                      </div>
                    </div>
                  </div>
            </div>
            <div class="col-4">
                <div class="card" style="width: 18rem;background-color:rgb(27,40,56);color:white">
                    <img src="/image/meme9.jpeg" class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">Lộc Võ</h5>
                      <p class="card-text">Những NPC trong game này thật ghê tởm</p>
                      <div class="row">
                        <div class="col text-end">
                            <a href="#">Chi tiết Comment</a>
                        </div>
                      </div>
                     
                    </div>
                  </div>
            </div>
        </div>
    </div>
    <h6 style="color:white;margin-top:15px">YÊU CẦU HỆ THỐNG</h6>
    <hr style="color:white">
    <div class="row" style="width:800px">
        <div class="col" >
            <div class="card" style="width: 18rem;background-color:rgb(27,40,56);color:rgb(110, 170, 243)">
                <div class="card-body">
                  <h5 class="card-title">Yêu cầu về game này</h5>
                  <h6 class="card-subtitle mb-2 text-muted">Hệ điều hành: Windows</h6>
                  <p style="font-size:10px;color:white"> <strong style="color:grey">Bộ xử lý: </strong> Intel Core 2 Quad CPU Q6600 @ 2.40GHz (4 CPUs) / AMD Phenom 9850 Quad-Core Processor (4 CPUs) @ 2.5GHz</p>
                  <p style="font-size:10px;color:white"> <strong style="color:grey">Bộ nhớ: </strong> 4 GB RAM</p>
                  <p style="font-size:10px;color:white"> <strong style="color:grey">Đồ hoạ: </strong>NVIDIA 9800 GT 1GB / AMD HD 4870 1GB (DX 10, 10.1, 11)</p>
                  <p style="font-size:10px;color:white"> <strong style="color:grey">Dung lượng: </strong>110 GB chỗ trống khả dụng</p>
                  <div class="row">
                    <div class="col text-end">
                        <a href="#" class="card-link">Quay về trang Store</a>
                    </div>
                  </div>
                  
                </div>
              </div>
        </div>
        <div class="col" >
            <div class="card" style="width: 18rem;background-color:rgb(27,40,56);color:rgb(110, 170, 243)">
                <div class="card-body mt-4" >
                
                  <h6 class="card-subtitle mb-2 text-muted">Hệ điều hành: MACOS</h6>
                  <p style="font-size:10px;color:white"> <strong style="color:grey">Bộ xử lý: </strong> Intel Core 2 Quad CPU Q6600 @ 2.40GHz (4 CPUs) / AMD Phenom 9850 Quad-Core Processor (4 CPUs) @ 2.5GHz</p>
                  <p style="font-size:10px;color:white"> <strong style="color:grey">Bộ nhớ: </strong> 4 GB RAM</p>
                  <p style="font-size:10px;color:white"> <strong style="color:grey">Đồ hoạ: </strong>NVIDIA 9800 GT 1GB / AMD HD 4870 1GB (DX 10, 10.1, 11)</p>
                  <p style="font-size:10px;color:white"> <strong style="color:grey">Dung lượng: </strong>110 GB chỗ trống khả dụng</p>
                  <div class="row">
                    <div class="col text-end">
                        <a href="#" class="card-link">Quay về trang Store</a>
                    </div>
                  </div>
                  
                </div>
              </div>
        </div>
    </div>
</div>
    <script src="https://kit.fontawesome.com/629bca5f0c.js" crossorigin="anonymous"></script>
</body>
