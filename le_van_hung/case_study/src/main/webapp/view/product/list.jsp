<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 02/06/2023
  Time: 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <style>
        /*.collapse ul li a {*/
        /*    color: white;*/
        /*}*/

        /*.dropdown-menu li a {*/
        /*    color: black;*/
        /*}*/

        /*table {*/
        /*    border: 2px black solid;*/
        /*    background-color: black;*/
        /*    color: white;*/
        /*    width: 100%;*/
        /*    font-size: large;*/
        /*    height: 100%;*/
        /*}*/
    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="datatables/css/dataTables.bootstrap5.min.css"/>
</head>
<body>
<jsp:include page="/view/main_menu/nav_bar_giao_dien.jsp"></jsp:include>
<jsp:include page="/view/main_menu/nav_bar_admin_show.jsp"></jsp:include>
<h2 style="text-align: center">
    Quản Lý Sản Phẩm
</h2>
<a href="/product?action=showFormAdd">Thêm Xe Mới</a>
<form method="get" action="/product">
    <table id="table-list" class="table table-striped table-bordered" style="width:100% ;">
        <thead>
        <tr>
            <th>STT &nbsp</th>
            <th>Tên xe &nbsp</th>
            <th>Màu xe &nbsp</th>
            <th>Ngày Sản Xuât &nbsp</th>
            <th>Mô Tả &nbsp</th>
            <th>Loai Xe &nbsp</th>
            <th>Tên Tình Trạng &nbsp</th>
            <th>Giá &nbsp</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="list" varStatus="loop">
            <tr>
                <td><c:out value="${loop.count}"/></td>
                <td><c:out value="${list.ten_xe}"/></td>
                <td><c:out value="${list.mau_sac_xe}"/></td>
                <td><c:out value="${list.ngay_san_xuat}"/></td>
                <td><c:out value="${list.mo_ta}"/></td>
                <td><c:out value="${list.loaiXe.ten_loai_xe}"/></td>
                <td><c:out value="${list.tinhTrang.ten_tinh_trang}"/></td>
                <td><c:out value="${list.gia}"/></td>
                <td>
                    <button><a href="/product?action=showFormEdit&id=${list.ma_xe}"/>Sửa</button>
                </td>
                <td>
                    <button type="button" class="btn btn-primary"
                            data-bs-toggle="modal" data-bs-target="#exampleModal"
                            onclick="remove(${list.ma_xe},'${list.ten_xe}')">Xóa
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</form>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Xóa sản phẩm</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <h3>Bạn có chắc chắn xóa sản phẩm có tên:
                    <span style="color:red" id="nameDelete"></span>
                </h3>
            </div>
            <div class="modal-footer">
                <form action="/product?action=delete" method="post">
                    <input type="hidden" name="idDelete" id="idDelete">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Không</button>
                    <button type="submit" class="btn btn-primary">Có</button>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function () {
        $("#table-list").dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 2
        });
    });

    function remove(ma_xe,ten_xe) {
        document.getElementById("nameDelete").innerText = ten_xe;
        document.getElementById("idDelete").value = ma_xe;
    }
</script>
</body>
</html>
