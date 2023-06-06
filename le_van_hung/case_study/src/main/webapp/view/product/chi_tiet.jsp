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
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>

<body style="background-color: black">
<div class=" container-fluid menu bg-dark">
    <div class="row" style="padding-left: 500px;color: white;margin: 30px 0 30px 0"><h1>Chi tiết sản phẩm</h1></div>
    <div class="row">
<%--    <div class="col-2"></div>--%>
    <div class="col-6">
        <img width="100%" src="<c:out value="${product.image}"/>">
    </div>
    <div class="col-6" style="font-size: x-large;color: white">
        <p style="font-size: x-large">Tên: ${product.ten_xe}</p>
        <p >Màu sắc xe: ${product.mau_sac_xe}</p>
        <p>Ngày sản xuất: ${product.ngay_san_xuat}</p>
        <p>Mô tả: ${product.mo_ta}</p>
        <p>Loại xe: ${product.loaiXe.ten_loai_xe}</p>
        <p>Tình trạng: ${product.tinhTrang.ten_tinh_trang}</p>
        <p>Giá: ${product.gia}</p>
    </div>
<%--    <div class="col-2"></div>--%>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>