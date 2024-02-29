<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
        <div class="col-9" style="background-color: rgb(27 ,40 , 56);max-width: auto;">
            <h2 style="color:white">Quản lý ACCOUNT</h2>
            <div class="container">
              <div class="row">
                <div class="col-xs-12">
                  <div class="table-responsive" data-pattern="priority-columns" style="max-width: 800px;">
                    <table summary="This table shows how to create responsive tables using RWD-Table-Patterns' functionality" class="table table-bordered table-hover" style="color:white;">
                      <thead>
                        <tr>
                          <th>Id Account</th>
                          <th>Email Account</th>
                          <th data-priority="1">Level</th>
                          <th data-priority="2">Tiền</th>
                          <th data-priority="3">Role</th>
                          <th data-priority="4">Loại Rank</th>
                          <th></th>
                        </tr>
                      </thead>
                      <tbody>
                      
                      <c:forEach var="account" items="${accounts}">
                        <tr> 
                   			<td>${account.id_account }</td>
                          <td>${account.email_account }</td>
                          <td>${account.level_account }</td>
                          <td>${account.money_account }</td>
                         <c:if test="${account.role_account == true }">
                         <td>Admin</td>
                         </c:if>
                          <c:if test="${account.role_account == false }">
                         <td>User</td>
                         </c:if>
                          <td>${account.rankType.name_rankType}</td>
                           <td> <a href="/admin/manager/account/edit/${account.id_account}"><img alt="" src="/image/marker.png"></a><a href="/admin/manager/account/delete/${account.id_account}">
                           <img alt="" src="/image/delete.png"></a></td>
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
<a href="/admin/manager/account/form"><button formaction="/admin/manager/account/form" class="btn btn-success ms-5" style="">Thêm Account</button></a>      
<a href="/admin/manager/account/Excel"><button formaction="/admin/manager/account/Excel" class="btn btn-danger ms-2" style="">Xuất Excel</button></a> 
            </div>
            </div>
        </div>