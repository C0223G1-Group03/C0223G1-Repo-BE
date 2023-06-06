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
    <style>
        .collapse ul li a{
            color: white;
        }
    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<nav class="navbar pt-0 navbar-expand-lg p-0">
    <div class="container-fluid menu" style="background-color: black">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse  " id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a href="/display" class="nav-link  ">Trang chủ</a>
                </li>
                <li class="nav-item">
                    <a href="/display?action=display" class="nav-link  ">Danh sách sản phẩm</a>
                </li>
                <li class="nav-item">
                    <a href="/display?action=user" class="nav-link  ">Đăng nhập</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        Tư Vấn Mua Xe
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">HotLine : 086753579</a></li>
                        <li><a class="dropdown-item" href="#">Thế Giới Mercedes-Benz</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown1" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        Dịch Vụ
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown1">
                        <li><h6 style="padding-left: 17px;">Dịch Vụ & Phụ Kiện</h6></li>
                        <li><a class="dropdown-item" href="#">Đặt Lịch Hẹn Trực Tuyến</a></li>
                        <li><a class="dropdown-item" href="#">Dịch Vụ và Bảo Dưỡng</a></li>
                        <li><a class="dropdown-item" href="#">Bảo Hành</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarSupportedContent1">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/product" style="color: black">Quản lý sản
                        phẩm</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" style="color: black">Quản lý nhân viên</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" style="color: black">Quản lý khách hàng</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" style="color: black">Quản lý hợp đồng</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<h2 style="text-align: center">
    Quản Lý Sản Phẩm
</h2>
<form method="get" action="/product">
    <table style="border: 2px black solid;background-color: black; color: white; width: 100%; font-size: large; height: 100%">
        <tr>
            <th>STT &nbsp</th>
            <th>Tên xe &nbsp</th>
            <th>Màu xe &nbsp</th>
            <th>Ngày Sản Xuât &nbsp</th>
            <th>Mô Tả &nbsp</th>
            <th>Loai Xe &nbsp</th>
            <th>Tên Tình Trạng &nbsp</th>
            <th>Giá &nbsp</th>
            <th><a href="/product?action=showFormAdd">Thêm Xe Mới</a>
            </th>
        </tr>
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
<script>
    function remove(ma_xe, ten_xe) {
        document.getElementById("nameDelete").innerText = ten_xe;
        document.getElementById("idDelete").value = ma_xe;
    }
</script>
</body>
</html>
