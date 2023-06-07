<%--
  Created by IntelliJ IDEA.
  User: Hi
  Date: 6/3/2023
  Time: 2:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Hiển thị danh sách</title>
    <style>
        .menu:hover {
            border: 1px ;
            background-color: white;
            color: black;
        }
        .container-fluid{
            background-color: black;
        }
        .nav-item a{
            color: white;
        }
        /*.ca{*/
        /*    box-shadow: 0px 0px 20px 30px white;*/
        /*}*/
    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
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
            <ul class="navbar-nav me-auto mb-2 mb-lg-0" >
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
            <form class="d-flex">
                <div class="box">
                    <div class="container-1">
                        <input type="search" id="search" placeholder="Tìm Kiếm Xe" />&nbsp&nbsp
                    </div>
                </div>
                <div>
                <button class="btn btn-outline-light" type="submit"  style="height: 30px; padding-bottom: 10px; font-size: small">
                    <span >Search</span></button>
                </div>
            </form>
        </div>
    </div>
</nav>
<div class=" container-fluid" >

    <h1 style="color: white">Các dòng xe Mercedes-Benz</h1>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="/display?action=display" style="color: white">Tất cả các dòng xe</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent1">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/display?action=display&type=1" style="color: white">Sedans</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/display?action=display&type=2" style="color: white">Xe địa hình/SUV</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/display?action=display&type=3" style="color: white">Xe Coupé</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/display?action=display&type=4" style="color: white">Xe đa dụng</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="row" style="margin-bottom: 20px">
        <c:forEach items="${productList}" var="list">
        <div class="col-3" style="margin-right: 20px; margin-left: 40px;margin-bottom: 40px" >
            <div class="card" style="width: 18rem">
                <img height="200px" src="<c:out value="${list.image}"/> " class="card-img-top" alt="..."/>
                <div class="card-body">
                    <p class="card-text">${list.ten_xe}</p>
                </div>
                <button onclick="showModal('${list.ten_xe}','${list.mau_sac_xe}','${list.ngay_san_xuat}','${list.mo_ta}','${list.loaiXe.ten_loai_xe}',
                        '${list.tinhTrang.ten_tinh_trang}','${list.gia}')"
                        type="button" class="btn btn-primary btn-lg" data-bs-toggle="modal" data-bs-target="#modelId" style="width: 100px">
                    Chi tiết
                </button>

                <div class="card-body">
                    <a><button style="border: 0px"><i class="fa-solid fa-cart-shopping"></i></button></a>
                </div>
            </div>
        </div>
        </c:forEach>
    </div>
</div>
<div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="modelTitleId">Chi tiết sản phẩm</h4>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Tên: <span id="name"></span></p>
                <p>Màu sắc: <span id="color"></span></p>
                <p>Ngày sản xuất: <span id="date"></span></p>
                <p>Mô tả: <span id="desc"></span></p>
                <p>Loại xe: <span id="type"></span></p>
                <p>Tình trạng: <span id="status"></span></p>
                <p>Giá: <span id="price"></span></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<script>
    function showModal(ten,mau,ngaysx,mota,loaixe,tinhtrangxe,gia){
        document.getElementById("name").innerText = ten;
        document.getElementById("color").innerText = mau;
        document.getElementById("date").innerText = ngaysx;
        document.getElementById("desc").innerText = mota;
        document.getElementById("type").innerText = loaixe;
        document.getElementById("status").innerText = tinhtrangxe;
        document.getElementById("price").innerText = gia;
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>