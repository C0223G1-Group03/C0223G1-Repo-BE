<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <button class="btn btn-outline-light" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarSupportedContent1">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/product" style="color: black">Quản lý sản phẩm</a>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
