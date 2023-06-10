<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <style>
    ul li a:hover{
      background-color: darkgray;
    }
  </style>
  <title>Title</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <%@ page contentType="text/html;charset=UTF-8" language="java" %>

</head>
<body>
<nav class="navbar navbar-expand-lg bg-black sticky-top navbar-light p-3 shadow-sm">
  <div class="container">
    <a class="navbar-brand" href="/display"><span style="color: white"><i class="fa-solid fa-car"></i> <strong>VH3</strong></span></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="mx-auto my-3 d-lg-none d-sm-block d-xs-block">
      <div class="input-group">
        <span class="border-white input-group-text bg-white text-white"><i class="fa-solid fa-magnifying-glass"></i></span>
        <input type="text" class="form-control border-white" style="color:#7a7a7a">
        <button class="btn btn-close-white text-white">Search</button>
      </div>
    </div>
    <div class=" collapse navbar-collapse" id="navbarNavDropdown">
      <div class="ms-auto d-none d-lg-block">
        <div class="input-group">
          <span class="border-light input-group-text bg-light text-black"><i class="fa-solid fa-magnifying-glass"></i></span>
          <input type="text" class="form-control border-white" style="color:#7a7a7a" placeholder="tìm kiếm sản phẩm">
          <button class="btn btn-dark text-white btn-outline-secondary">Search</button>
        </div>
      </div>
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link mx-2 text-uppercase text-center active text-white" aria-current="page" href="/display">
            <div>
              <i class="fa-solid fa-house"></i>
            </div>
            TRANG CHỦ</a>
        </li>
        <li class="nav-item ">
          <a class="nav-link mx-2 text-uppercase text-center text-white" href="/display?action=display">
            <div>
              <i class="fa-solid fa-list"></i>
            </div>
            DANH SÁCH SẢN PHẨM</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle text-center text-white" id="navbarDropdown" role="button"
             data-bs-toggle="dropdown" aria-expanded="false">
            <div>
              <i class="fa-solid fa-headset"></i>
            </div>
            TƯ VẤN
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">HotLine : 086753579</a></li>
            <li><a class="dropdown-item" href="#">Thế Giới Mercedes-Benz</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle text-center text-white" id="navbarDropdown1" role="button"
             data-bs-toggle="dropdown" aria-expanded="false">
            <div>
              <i class="fa-solid fa-gears"></i>
            </div>
            DỊCH VỤ
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown1">
            <li><h6 style="padding-left: 17px;">Dịch Vụ & Phụ Kiện</h6></li>
            <li><a class="dropdown-item" href="#">Đặt Lịch Hẹn Trực Tuyến</a></li>
            <li><a class="dropdown-item" href="#">Dịch Vụ và Bảo Dưỡng</a></li>
            <li><a class="dropdown-item" href="#">Bảo Hành</a></li>
          </ul>
        </li>
      </ul>
      <ul class="navbar-nav ms-auto ">
        <li class="nav-item">
          <a class="nav-link mx-2 text-uppercase text-white" href="/display?action=user"><i class="fa-solid fa-circle-user me-1"></i> ĐĂNG NHẬP</a>
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
