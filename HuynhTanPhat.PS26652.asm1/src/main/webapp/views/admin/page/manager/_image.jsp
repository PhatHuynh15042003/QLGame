<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
           <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <div class="col-9" style="background-color: rgb(27 ,40 , 56);max-width: auto;">
            <h2 style="color:white">Quản lý Hình Ảnh</h2>
            <div class="container">
              <div class="row">
                <div class="col-xs-12">
                  <div class="table-responsive" data-pattern="priority-columns" style="max-width: 800px;">
                    <table summary="This table shows how to create responsive tables using RWD-Table-Patterns' functionality" class="table table-bordered table-hover" style="color:white;">
                      <thead>
                        <tr>
                          <th>Id Image</th>
                          <th data-priority="1">Hình ảnh</th>
                      	<th>Tên Game</th>
                      	<th>Id Game</th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="image" items="${page.content}">
                        <tr>
                          <td>${image.id_image}</td>
                          <td> <img alt="" src="/image/${image.name_image}" height="80"></td>
                          <td>${image.game.name_game}</td>
                          <td>${image.game.id_game}</td>
                          <td> <a href="/admin/manager/gametype/edit/${gametype.id_gameType}"><img alt="" src="/image/marker.png"></a>
                          <a href="/admin/manager/gametype/delete/${gametype.id_gameType}"><img alt="" src="/image/delete.png"></a></td>
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
                  
                <a href="/admin/manager/image?i=${number}"><span class="text-center" style="color:white">${number}</span></a>
               
 			</c:forEach>
                </div>
              </div>
            </div>
            <div class="row">
            <div class="col ms-2">
            <a href="/admin/manager/image/form"><button formaction="/admin/manager/image/form" class="btn btn-success ms-5" style="">Thêm Hình Ảnh</button></a>
      	<a href="/admin/manager/image/Excel"><button formaction="/admin/manager/image/Excel" class="btn btn-danger ms-2" style="">Xuất Excel</button></a> 
            </div>
            </div>
            
        </div>