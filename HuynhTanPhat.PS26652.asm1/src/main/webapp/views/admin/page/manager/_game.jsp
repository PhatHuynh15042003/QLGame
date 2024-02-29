<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
           <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <div class="col-9" style="background-color: rgb(27 ,40 , 56);max-width: auto;">
            <h2 style="color:white">Quản lý GAME</h2>
            <div class="container">
              <div class="row">
                <div class="col-xs-12">
                  <div class="table-responsive" data-pattern="priority-columns" style="max-width: 800px;">
                    <table summary="This table shows how to create responsive tables using RWD-Table-Patterns' functionality" class="table table-bordered table-hover" style="color:white;">
                      <thead>
                        <tr>
                          <th>Id Game</th>
                          <th data-priority="1">Hình ảnh</th>
                      	<th>Tên game</th>
                         <th data-priority="2">Loại Game</th>
                          <th data-priority="3">Giá tiền</th>
                        <th data-priority="4">Ngày phát hành</th>
                        <th></th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="game" items="${page.content}">
                        <tr>
                          <td>${game.id_game}</td>
                          <td> <img alt="" src="/image/${game.imageGame[0].name_image}" height="80"></td>
                          <td>${game.name_game}</td>
                       <td>${game.gametype.id_gameType}</td>
                          <td>${game.price_game}</td>
                       <td>${game.releasedate_game}</td>
                       <td> <a href="/admin/manager/game/edit/${game.id_game}"><img alt="" src="/image/marker.png"></a>
                          <a href="/admin/manager/game/delete/${game.id_game}"><img alt="" src="/image/delete.png"></a></td>
                        </tr>
                        </c:forEach>
                      </tbody>
                      <tfoot>
                        <tr>
                          <td colspan="5" class="text-center">Game được bản quyền từ Steam</td>
                        </tr>
                      </tfoot>
                    </table> 
                  </div><!--end of .table-responsive-->
                   <c:forEach var="number" items="${list}">
                  
                <a href="/admin/manager/game?i=${number}"><span class="text-center" style="color:white;margin-bottom:5px">${number}</span></a>
               
 			</c:forEach>
                </div>
              </div>
            </div>
            <div class="row">
           <div class="col ms-2">
            <a href="/admin/manager/game/form"><button formaction="/admin/manager/game/form" class="btn btn-success ms-5" style="">Thêm Game</button></a>
      		<a href="/admin/manager/game/Excel"><button formaction="/admin/manager/game/Excel" class="btn btn-danger ms-2" style="">Xuất Excel</button></a> 
            </div>
            </div>
            
        </div>