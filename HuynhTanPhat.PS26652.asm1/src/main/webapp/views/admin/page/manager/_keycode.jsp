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
                          <th>Id Keycode</th>
                          <th data-priority="1">Active</th>
                          <td>Vertification Keycode</td>
                          <th>Id Game</th>
                          <th></th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="keycode" items="${keycodes}">
                        <tr>
                          <td>${keycode.id_keyCode }</td>
                          <td>${keycode.active}</td>
                          <td>${keycode.verification_keyCode }</td>
                          <td>${keycode.game.id_game}</td>
                          <td> <a href="/admin/manager/keycode/edit/${gametype.id_gameType}"><img alt="" src="/image/marker.png"></a>
                          <a href="/admin/manager/keycode/delete/${gametype.id_gameType}"><img alt="" src="/image/delete.png"></a></td>
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
                </div>
              </div>
            </div>
           <div class="row">
            <div class="col ms-2">
<a href="/admin/manager/keycode/form"><button formaction="/admin/manager/keycode/form" class="btn btn-success ms-5" style="">Thêm Keycode</button></a>
      <a href="/admin/manager/keycode/Excel"><button formaction="/admin/manager/keycode/Excel" class="btn btn-danger ms-2" style="">Xuất Excel</button></a>
            </div>
            </div>
        </div>