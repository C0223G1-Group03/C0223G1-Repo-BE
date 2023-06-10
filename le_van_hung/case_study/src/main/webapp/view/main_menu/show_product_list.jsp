<%--
  Created by IntelliJ IDEA.
  User: Hi
  Date: 6/3/2023
  Time: 2:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Hiển thị danh sách</title>
    <style>

        .container-fluid{
            background-color: black;
        }
        .nav-item a{
            color: white;
        }
        .col  :hover{
            transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(0, 0, 0, .12), 0 4px 8px rgba(0, 0, 0, .06)
        }
        .float-end:hover{
            background-color: black;
            color: white;
        }
        .modal-body{
            background-color: black;
            color: white;
        }
        /*.ca{*/
        /*    box-shadow: 0px 0px 20px 30px white;*/
        /*}*/
    </style>
    <style>
        /* Styling for the toast message */
        .toast {
            background-color: dodgerblue;
            color: white;
            padding: 25px;
            border-radius: 5px;
            position: fixed;
            top: 100px;
            right: 20px;
            z-index: 1;
            display: none;
            font-size: medium;
        }
    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
</head>
<jsp:include page="nav_bar_giao_dien.jsp"></jsp:include>
<body>
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
    <div class="container-fluid bg-trasparent my-4 p-3" style="position: relative;">
        <div class="row row-cols-1 row-cols-xs-2 row-cols-sm-2 row-cols-lg-4 g-3">
            <c:forEach items="${productList}" var="list">
            <div class="col hover">
                <div class="card h-100 shadow-sm"><img style="height: 200px;"
                        src="<c:out value="${list.image}"/>"
                        class="card-img-top" alt="...">
                    <div class="card-body">
                        <div class="clearfix mb-3">
                            <span class="float-start badge rounded-pill bg-primary" style="background-color: black;">Mercedes</span>
                            </div>
                        <h5 class="card-title"><c:out value="${list.ten_xe}"/></h5>
                        <span class="float-start my-4"><button onclick="showModal('${list.ten_xe}','${list.mau_sac_xe}','${list.ngay_san_xuat}','${list.mo_ta}','${list.loaiXe.ten_loai_xe}',
                                '${list.tinhTrang.ten_tinh_trang}','<fmt:formatNumber type="number" maxFractionDigits="3" value="${list.gia}"/>')"
                                                               type="button" class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#modelId"
                                                              >
                             Chi tiết
                        </button></span>
                        <span class="float-end my-4"><a href="/user?action=order&id=${list.ma_xe}"><button class="btn btn-outline-dark" style="font-size: 20px"><i class="fa-solid fa-id-card"></i></button></a></span>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
</div>
<div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="modelTitleId">Chi tiết sản phẩm</h4>
            </div>
            <div class="modal-body">
                <p>Tên: <span id="name"></span></p>
                <p>Màu sắc: <span id="color"></span></p>
                <p>Ngày sản xuất: <span id="date"></span></p>
                <p>Mô tả: <span id="desc"></span></p>
                <p>Loại xe: <span id="type"></span></p>
                <p>Tình trạng: <span id="status"></span></p>
                <p>Giá: <span id="price"></span><span>&nbsp&nbspVND</span></p>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
            </div>
        </div>
    </div>
</div>
<c:if test="${order!=null}">
<div id="toastMessage" class="toast" style="background-color: dodgerblue;font-size: 20px;border-radius: 50px;text-align: center"></div>
</c:if>
<script>
    // Function to show the toast message
    function showToast(message) {
        var toast = document.getElementById("toastMessage");
        toast.style.display = "block";
        toast.innerText = message;
        setTimeout(function() {
            toast.style.display = "none";
        }, 3000); // Hide the toast message after 3 seconds
    }
    // Automatically show the toast message when the page is reloaded
    window.addEventListener('load', function() {
        showToast("${order}");
    });
</script>
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