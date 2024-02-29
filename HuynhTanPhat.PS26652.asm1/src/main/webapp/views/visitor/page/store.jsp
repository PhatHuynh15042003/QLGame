<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <style>
    .list-group *{
        border: white;
        text-align: center;
        background-color:#2B3035;
        color:white;
        height:400px;
        width:100%;
    }
    .list-group a{
        text-decoration:none;
    }
    tr td{
    color:black;
    }
    tbody{
        background-color:white;
    }
    thead{
        background-color:rgb(7, 64, 221);
    }
    tfoot tr td{
       color:white;
    }
        body{
        background-color: rgb(27 ,40 , 56);
        }
            div#language{
        position: absolute;
        right: 0px;
        top: 6px;
        height: 21px;
        line-height: 21px;
        color: #b8b6b4;
        font-size: 11px;
        z-index: 401;
    }
    div#card-image-top{
        width: 100px;
        height: 100px;
    }
    div.end-content{
        text-align: center;
    }
    .btn-sign-in{
        padding: 1px;
        display: inline-block;
        cursor: pointer;
        text-decoration: none !important;
        color: white;
        background: #a4d007;
    }
    .discount{
        position: relative;
        display: flex;
    }
    .discount-pct{
        line-height: 34px;
        padding: 0 5px;
        font-size: 26px;
        color: #BEEE11;
        background: #4c5b22;
    }
    .discount-price{
        line-height: 13px;
        padding: 0 8px 0 8px;
        display: flex;
        flex-direction: column;
        align-items: flex-end;
        justify-content: center;
        background: #344654;
    }
    .discount-original{
        position: relative;
        width: fit-content;
        color: #738895;
        font-size: 11px;
        line-height: 12px;
    }
    .discount-final{
        color: #BEEE11;
        line-height: 16px;
        font-size: 15px;
    }
    .home{
        padding-left: 2%;
        padding-right: 2%;
        padding-bottom: 20px;
        padding-top:20px ;
        overflow: hidden;
    }
    .home-content{
        transition: padding 0.25s;
        position: relative;
        width: 940px;
        margin: 0 auto;
    }
    .button{
        min-height: 95px;
    }
    .button-container{
        display: grid;
        grid-template-columns: repeat(4,1fr);
        gap: 8px;
    }
    .big-button{
        display: flex;
        justify-content: center;
        align-items: center;
        height: 58px;
        font-family: "Motiva Sans", Sans-serif;
        font-weight: 300;
        font-size: 16px;
        color: #FFFFFF;
        text-transform: uppercase;
        font-weight: 500;
        letter-spacing: 0.03em;
        text-align: center;
        background: linear-gradient(90deg, #06BFFF 0%, #2D73FF 100%);
        border-radius: 3px;
        box-shadow: 0 0 4px #000;
    }
    .infor-game .img-game img:hover{
          color: rgb(252, 1, 1);
         }
         .infor-game .img-game:hover .detail-game{
          display:block;
         }
         .infor-game .detail-game{
            position:absolute;
            width:300px;
            display:none;
         }
         .infor-game .detail-game .row{
          position:fixed;
          width:300px;
          margin-right:160px;
          margin-bottom:300px;
          bottom: 0;
          right: 0;
         }
         .infor-game .detail-game .row{
          display:block; 
         }
</style>
   <body>
    <div class="row">Header</div>
        <div class="container">
      <br>
      <br>
      <h4 style="color:white">FEATURED & RECOMMENED</h4>
      <div>
        <div id="carouselExample" class="carousel slide" width="400px">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="/image/sekiro-shadows-die-twice-5k-ct.jpg" height="400px" width="200px" class="d-block w-100"
                alt="...">
            </div>
            <div class="carousel-item">
              <img src="/image/elden-ring.jpg" height="400px" width="750px" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="/image/it-takes-two.jpg" height="400px" width="750px" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="/image/little-nightmares.jpg" height="400px" width="750px" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="/image/five-nights-at-fredddy's.jpg" height="400px" width="750px" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="/image/COD-MW3.jpg" height="400px" width="750px" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="/image/battle-field.jpg" height="400px" width="950px" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="/image/forza-sport.jpg" height="400px" width="950px" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="/image/apex-legnes.jpg" height="400px" width="950px" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="/image/csgo.jpg" height="400px" width="950px" class="d-block w-100" alt="...">
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
      </div>
      <br>
      <br>
      <h4 style="color: white;">Special Offers</h4>
      <div>
        <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel" style="width:100%;height:100%">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <div class="row">
                <div class="col-4">
                  <a href="" style="background-color: aliceblue;">
                    <img src="/image/hellbane.jpg" class="d-block w-100" alt="...">
                    <div class="special-content">
                      <h2>Weekend Deal</h2>
                      <div class="special-body">
                        Offer ends 26 Jan @ 1:00am.
                      </div>
                      <div class="discount">
                        <div class="discount-pct">
                          -90%
                        </div>
                        <div class="discount-price">
                          <div class="discount-original">
                            250.000
                          </div>
                          <div class="discount-final">
                            25.000
                          </div>
                        </div>
                      </div>
                    </div>
                  </a>
                </div>
                <div class="col-4">
                  <a href="" style="background-color: aliceblue;">
                    <img src="/image/fc24.jpg" class="d-block w-100" alt="...">
                    <div class="special-content">
                      <h2> Free Weekend</h2>
                      <div class="special-body">
                        Offer ends 31 Jan @ 1:00am.
                      </div>
                      <div class="discount">
                        <div class="discount-pct">
                          -70%
                        </div>
                        <div class="discount-price">
                          <div class="discount-original">
                            1.090.000
                          </div>
                          <div class="discount-final">
                            327.000
                          </div>
                        </div>
                      </div>
                    </div>
                  </a>
                </div>
                <div class="col-4">
                  <img src="/image/boyfriend-dungeon.jpg" class="d-block w-100" alt="...">
                  <div style="background-color: aliceblue;">
                    Today's Deal
                  </div>
                  <div class="discount">
                    <div class="discount-pct">
                      -50%
                    </div>
                    <div class="discount-price">
                      <div class="discount-original">
                        260.000
                      </div>
                      <div class="discount-final">
                        130.000
                      </div>
                    </div>
                  </div>
                  <img src="/image/farmer'slife.jpg" class="d-block w-100" alt="" style="margin-top:5px">
                  <div style="background-color: aliceblue;">
                    Today's Deal
                  </div>
                  <div class="discount">
                    <div class="discount-pct">
                      -35%
                    </div>
                    <div class="discount-price">
                      <div class="discount-original">
                        260.000
                      </div>
                      <div class="discount-final">
                        169.000
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
    
            <div class="carousel-item">
              <div class="row">
                <div class="col-4">
                  <a href="" style="background-color: aliceblue;">
                    <img src="/image/chants-of-sennaar.jpg" class="d-block w-100" alt="...">
                    <div class="special-content">
                      <h2>Weekend Deal</h2>
                      <div class="special-body">
                        Offer ends 2 Feb @ 1:00am.
                      </div>
                      <div class="discount">
                        <div class="discount-pct">
                          -25%
                        </div>
                        <div class="discount-price">
                          <div class="discount-original">
                            260.000
                          </div>
                          <div class="discount-final">
                            195.000
                          </div>
                        </div>
                      </div>
                    </div>
                  </a>
                </div>
                <div class="col-4">
                  <a href="" style="background-color: aliceblue;">
                    <img src="/image/endless-dungeon.jpg" class="d-block w-100" alt="...">
                    <div class="special-content">
                      <h2> Free Weekend</h2>
                      <div class="special-body">
                        Offer ends 26 Jan @ 1:00am.
                      </div>
                      <div class="discount">
                        <div class="discount-pct">
                          -33%
                        </div>
                        <div class="discount-price">
                          <div class="discount-original">
                            577.000
                          </div>
                          <div class="discount-final">
                            386.000
                          </div>
                        </div>
                      </div>
                    </div>
                  </a>
                </div>
                <div class="col-4">
                  <img src="/image/cult-of-the-lamb.jpg" class="d-block w-100" alt="...">
                  <div style="background-color: aliceblue;">
    
                  </div>
                  <div class="discount">
                    <div class="discount-pct">
                      -40%
                    </div>
                    <div class="discount-price">
                      <div class="discount-original">
                        400.000
                      </div>
                      <div class="discount-final">
                        240.000
                      </div>
                    </div>
                  </div>
                  <img src="/image/hell-let-loose.jpg" class="d-block w-100" alt="" style="margin-top:5px">
                  <div style="background-color: aliceblue;">
    
                  </div>
                  <div class="discount">
                    <div class="discount-pct">
                      -35%
                    </div>
                    <div class="discount-price">
                      <div class="discount-original">
                        900.000
                      </div>
                      <div class="discount-final">
                        585.000
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
    
            <div class="carousel-item">
              <div class="row">
                <div class="col-4">
                  <a href="" style="background-color: aliceblue;">
                    <img src="/image/publisher-sale.jpg" class="d-block w-100" alt="...">
                    <div class="special-content">
                      <h2>Publisher Sale</h2>
                      <div class="special-body">
                        Offer ends 2 Feb @ 1:00am.
                      </div>
                      <div class="discount">
                        <div class="discount-pct">
                          Up to 90%
                        </div>
                      </div>
                    </div>
                  </a>
                </div>
                <div class="col-4">
                  <a href="" style="background-color: aliceblue;">
                    <img src="/image/timber-born.jpg" class="d-block w-100" alt="...">
                    <div class="special-content">
                      <h2> Free Weekend</h2>
                      <div class="special-body">
                        Offer ends 2 Feb @ 1:00am.
                      </div>
                      <div class="discount">
                        <div class="discount-pct">
                          -20%
                        </div>
                        <div class="discount-price">
                          <div class="discount-original">
                            321.000
                          </div>
                          <div class="discount-final">
                            257.000
                          </div>
                        </div>
                      </div>
                    </div>
                  </a>
                </div>
                <div class="col-4">
                  <img src="/image/euro-truck.jpg" class="d-block w-100" alt="...">
                  <div style="background-color: aliceblue;">
    
                  </div>
                  <div class="discount">
                    <div class="discount-pct">
                      -75%
                    </div>
                    <div class="discount-price">
                      <div class="discount-original">
                        280.000
                      </div>
                      <div class="discount-final">
                        70.000
                      </div>
                    </div>
                  </div>
                  <img src="/image/dying-light.jpg" class="d-block w-100" alt="" style="margin-top:5px">
                  <div style="background-color: aliceblue;">
    
                  </div>
                  <div class="discount">
                    <div class="discount-pct">
                      -80%
                    </div>
                    <div class="discount-price">
                      <div class="discount-original">
                        549.000
                      </div>
                      <div class="discount-final">
                        110.000
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
    
            <div class="carousel-item">
              <div class="row">
                <div class="col-4">
                  <img src="/image/civilization.jpg" class="d-block w-100" alt="...">
                  <div style="background-color: aliceblue;">
                  </div>
                  <div class="discount">
                    <div class="discount-pct">
                      -90%
                    </div>
                    <div class="discount-price">
                      <div class="discount-original">
                        705.000
                      </div>
                      <div class="discount-final">
                        70.500
                      </div>
                    </div>
                  </div>
                  <img src="/image/robot-quest.jpg" class="d-block w-100" alt="" style="margin-top:5px">
                  <div style="background-color: aliceblue;">
    
                  </div>
                  <div class="discount">
                    <div class="discount-pct">
                      -25%
                    </div>
                    <div class="discount-price">
                      <div class="discount-original">
                        258.000
                      </div>
                      <div class="discount-final">
                        193.500
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-4">
                  <img src="/image/nba-2k-24.jpg" class="d-block w-100" alt="...">
                  <div style="background-color: aliceblue;">
    
                  </div>
                  <div class="discount">
                    <div class="discount-pct">
                      -65%
                    </div>
                    <div class="discount-price">
                      <div class="discount-original">
                        1.000.000
                      </div>
                      <div class="discount-final">
                        350.000
                      </div>
                    </div>
                  </div>
                  <img src="/image/green-hell.jpg" class="d-block w-100" alt="" style="margin-top:5px">
                  <div style="background-color: aliceblue;">
    
                  </div>
                  <div class="discount">
                    <div class="discount-pct">
                      -50%
                    </div>
                    <div class="discount-price">
                      <div class="discount-original">
                        220.000
                      </div>
                      <div class="discount-final">
                        110.000
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-4">
                  <img src="/image/mafia.jpg" class="d-block w-100" alt="...">
                  <div style="background-color: aliceblue;">
    
                  </div>
                  <div class="discount">
                    <div class="discount-pct">
                      -67%
                    </div>
                    <div class="discount-price">
                      <div class="discount-original">
                        1.000.000
                      </div>
                      <div class="discount-final">
                        330.000
                      </div>
                    </div>
                  </div>
                  <img src="/image/the-elder-scroll.jpg" class="d-block w-100" alt="" style="margin-top:5px">
                  <div style="background-color: aliceblue;">
    
                  </div>
                  <div class="discount">
                    <div class="discount-pct">
                      -70%
                    </div>
                    <div class="discount-price">
                      <div class="discount-original">
                        450.000
                      </div>
                      <div class="discount-final">
                        135.000
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
      </div>
      <div>
        <h4 style="color: white;">BROWSE BY CATEGORY</h4>
        <div>
          <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel" style="width:80%;height:80%;margin-left:150px;marin-top:20px">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <div class="row">
                  <div class="col-3">
                    <img src="/image/all-sports.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="col-3">
                    <img src="/image/anime.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="col-3">
                    <img src="/image/free-to-play.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="col-3">
                    <img src="/image/rogue-like.png" class="d-block w-100" alt="...">
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <div class="row">
                  <div class="col-3">
                    <img src="/image/racing.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="col-3">
                    <img src="/image/simulation.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="col-3">
                    <img src="/image/co-operative.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="col-3">
                    <img src="/image/city.png" class="d-block w-100" alt="...">
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <div class="row">
                  <div class="col-3">
                    <img src="/image/puzzle.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="col-3">
                    <img src="/image/story.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="col-3">
                    <img src="/image/role.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="col-3">
                    <img src="/image/horror.png" class="d-block w-100" alt="...">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <br>
      <div class="end-content">
        <h6 style="color: white;">Sign in to view personalized recommendations</h6>
        <button class="btn-sign-in">Sign in</button> <br> <br>
        <font style="color: white;">Or <a href="#">Sign Up</a> and join Steam for free</font>
      </div>
      <br>
      <br>
      <div class="home">
        <div class="button home-content">
          <h2 class="home-content-title" style="color: white;">BROWSE STEAM</h2>
          <div class="button-container">
            <a class="big-button">NEW RELEASES</a>
            <a class="big-button">SPECIALS</a>
            <a class="big-button">FREE GAMES</a>
            <a class="big-button">BY USERS TAGS</a>
          </div>
        </div>
      </div>
      <br>
      <br>
    
      <div>
        <h2 style="color: white;">GAMES IN 2024</h2>
        <hr>
        <!-- 
         .infor-game .img-game:hover{
          background-color: black;
         }
         .infor-game .img-game:hover .detail-game{
          display:block;
         }
         .infor-game .detail-game{
            position:absolute;
            display:none;
         }
         .infor-game .detail-game .row{
          display:block; 
         }

         -->
        <div class="row">
            <div class="col">
        <div class="row" style="color:white;border:1px solid grey;width:700px">
           <div class="col-2" style="margin-top:10px">
            <div class="infor-game">
              <div class="img-game">
              <a href="/visitor/detail">
              <img src="/image/header.jpg" alt="" height="100">
              </a>
              <div class="detail-game" >
                <div class="row">      
                  <h5 style="color:white">GRAND THEFT AUTO V</h5>
                 <p style="color:white">Thế giới mở</p>
                 <img src="/image/header.jpg" alt="" width="160p" height="100px">
                 <hr style="width:250px;margin-top:10px;color:grey;margin-left:5px">
                 <p style="color:white;">Grand Theft Auto V for PC offers players the option to explore the award-winning world of Los Santos and Blaine County in resolutions of up to 4k and beyond, as well as the chance to experience the game running at 60 frames per second.
                 </p>
                  <div class="d-flex justify-content-between text-center">
                    <a href=""><img src="/image/header.jpg" alt="" style="width:70px;height:50px"></a>
                    <a href=""><img src="/image/header.jpg" alt="" style="width:70px;height:50px"></a>
                    <a href=""><img src="/image/header.jpg" alt="" style="width:70px;height:50px"></a>
                    <a href=""><img src="/image/header.jpg" alt="" style="width:70px;height:50px"></a>
                 </div>
                 </div>
             </div>
            </div>
              
            </div>
           </div>
           <div class="col-6" >
            <div class="name-game" style="margin-left:110px;margin-top:5px;font-size:17px"> 
                GRAND THEFT AUTO V
            </div>
            <div class="os-game" style="margin-left:110px;margin-top:10px">
                <img src="oswindow.png" alt="" height="28">
            </div>
            <div class="gametype" style="margin-top:27px;margin-left:110px">
                <p style="font: size 8px;">Thế giới mở</p>
            </div>
           </div>
           <div class="col-4">
            <div class="btn btn-success" style="margin-left:105px;margin-top:80px">127.000 đ</div>
           </div>
        </div>
        <div class="row" style="color:white;border:1px solid grey;width:700px">
            <div class="col-2" style="margin-top:10px">
              <div class="infor-game">
                <div class="img-game">
                <img src="/image/header.jpg" alt="" height="100">
                <div class="detail-game" >
                  <div class="row">      
                    <h5 style="color:white">GRAND THEFT AUTO V</h5>
                   <p style="color:white">Thế giới mở</p>
                   <img src="/image/header.jpg" alt="" width="160p" height="100px">
                   <hr style="width:250px;margin-top:10px;color:grey;margin-left:5px">
                   <p style="color:white;">Grand Theft Auto V for PC offers players the option to explore the award-winning world of Los Santos and Blaine County in resolutions of up to 4k and beyond, as well as the chance to experience the game running at 60 frames per second.
                   </p>
                    <div class="d-flex justify-content-between text-center">
                      <a href=""><img src="/image/header.jpg" alt="" style="width:70px;height:50px"></a>
                      <a href=""><img src="/image/header.jpg" alt="" style="width:70px;height:50px"></a>
                      <a href=""><img src="/image/header.jpg" alt="" style="width:70px;height:50px"></a>
                      <a href=""><img src="/image/header.jpg" alt="" style="width:70px;height:50px"></a>
                   </div>
                   </div>
               </div>
              </div>
                
              </div>
            </div>
            <div class="col-6" >
             <div class="name-game" style="margin-left:110px;margin-top:5px;font-size:17px"> 
                 GRAND THEFT AUTO V
             </div>
             <div class="os-game" style="margin-left:110px;margin-top:10px">
                 <img src="oswindow.png" alt="" height="28">
             </div>
             <div class="gametype" style="margin-top:27px;margin-left:110px">
                 <p style="font: size 8px;">Thế giới mở</p>
             </div>
            </div>
            <div class="col-4">
             <div class="btn btn-success" style="margin-left:105px;margin-top:80px">127.000 đ</div>
            </div>
         </div>
         <div class="row" style="color:white;border:1px solid grey;width:700px">
            <div class="col-2" style="margin-top:10px">
              <div class="infor-game">
                <div class="img-game">
                <img src="/image/header.jpg" alt="" height="100">
                <div class="detail-game" >
                  <div class="row">      
                    <h5 style="color:white">GRAND THEFT AUTO V</h5>
                   <p style="color:white">Thế giới mở</p>
                   <img src="/image/header.jpg" alt="" width="160p" height="100px">
                   <hr style="width:250px;margin-top:10px;color:grey;margin-left:5px">
                   <p style="color:white;">Grand Theft Auto V for PC offers players the option to explore the award-winning world of Los Santos and Blaine County in resolutions of up to 4k and beyond, as well as the chance to experience the game running at 60 frames per second.
                   </p>
                    <div class="d-flex justify-content-between text-center">
                      <a href=""><img src="/image/header.jpg" alt="" style="width:70px;height:50px"></a>
                      <a href=""><img src="/image/header.jpg" alt="" style="width:70px;height:50px"></a>
                      <a href=""><img src="/image/header.jpg" alt="" style="width:70px;height:50px"></a>
                      <a href=""><img src="/image/header.jpg" alt="" style="width:70px;height:50px"></a>
                   </div>
                   </div>
               </div>
              </div>
                
              </div>
            </div>
            <div class="col-6" >
             <div class="name-game" style="margin-left:110px;margin-top:5px;font-size:17px"> 
                 GRAND THEFT AUTO V
             </div>
             <div class="os-game" style="margin-left:110px;margin-top:10px">
                 <img src="oswindow.png" alt="" height="28">
             </div>
             <div class="gametype" style="margin-top:27px;margin-left:110px">
                 <p style="font: size 8px;">Thế giới mở</p>
             </div>
            </div>
            <div class="col-4">
             <div class="btn btn-success" style="margin-left:105px;margin-top:80px">127.000 đ</div>
            </div>
         </div>
         <div class="row" style="color:white;border:1px solid grey;width:700px">
            <div class="col-2" style="margin-top:10px">
              <div class="infor-game">
                <div class="img-game">
                <img src="/image/header.jpg" alt="" height="100">
                <div class="detail-game" >
                  <div class="row">      
                    <h5 style="color:white">GRAND THEFT AUTO V</h5>
                   <p style="color:white">Thế giới mở</p>
                   <img src="/image/header.jpg" alt="" width="160p" height="100px">
                   <hr style="width:250px;margin-top:10px;color:grey;margin-left:5px">
                   <p style="color:white;">Grand Theft Auto V for PC offers players the option to explore the award-winning world of Los Santos and Blaine County in resolutions of up to 4k and beyond, as well as the chance to experience the game running at 60 frames per second.
                   </p>
                    <div class="d-flex justify-content-between text-center">
                      <a href=""><img src="/image/header.jpg" alt="" style="width:70px;height:50px"></a>
                      <a href=""><img src="/image/header.jpg" alt="" style="width:70px;height:50px"></a>
                      <a href=""><img src="/image/header.jpg" alt="" style="width:70px;height:50px"></a>
                      <a href=""><img src="/image/header.jpg" alt="" style="width:70px;height:50px"></a>
                   </div>
                   </div>
               </div>
              </div>
                
              </div>
            </div>
            <div class="col-6" >
             <div class="name-game" style="margin-left:110px;margin-top:5px;font-size:17px"> 
                 GRAND THEFT AUTO V
             </div>
             <div class="os-game" style="margin-left:110px;margin-top:10px">
                 <img src="oswindow.png" alt="" height="28">
             </div>
             <div class="gametype" style="margin-top:27px;margin-left:110px">
                 <p style="font: size 8px;">Thế giới mở</p>
             </div>
            </div>
            <div class="col-4">
             <div class="btn btn-success" style="margin-left:105px;margin-top:80px">127.000 đ</div>
            </div>
         </div>
        </div>
        </div>
        
      <br>
      <br>
      <div class="end-content">
        <span style="color: white;">Looking for recommendations?</span><br> <br>
        <h6 style="color: white;">Log in to see personalized recommendations</h6>
        <button class="btn-sign-in">Sign in</button> <br> <br>
        <font style="color: white;">Or <a href="#">Sign Up</a> and join Steam for free</font>
      </div>
      </div>
      </body>