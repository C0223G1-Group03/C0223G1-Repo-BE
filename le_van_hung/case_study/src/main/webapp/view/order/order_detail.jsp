<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/7/2023
  Time: 9:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"--%>
<%--          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">--%>
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">--%>
<%--</head>--%>

<%--<body style="background-color: black">--%>
<%--<div class=" container-fluid menu bg-dark">--%>
<%--    <div class="row" style="padding-left: 500px;color: white;margin: 30px 0 30px 0"><h1>Chi tiết Order</h1></div>--%>
<%--    <div class="row">--%>
<%--        &lt;%&ndash;    <div class="col-2"></div>&ndash;%&gt;--%>
<%--        <div class="col-6" style="font-size: x-large;color: white" >--%>
<%--            <p style="font-size: x-large">Mã Order: ${orderDetail.ma_order}</p>--%>
<%--            <p>Ngày làm order: ${orderDetail.ngay_lam_order}</p>--%>
<%--            <p>Số lượng xe: ${orderDetail.so_luong_xe}</p>--%>
<%--            <p>Mã xe: ${orderDetail.product.ma_xe}</p>--%>
<%--            <p>Tên xe: ${orderDetail.product.ten_xe}</p>--%>
<%--            <p>Mã Khách Hàng: ${orderDetail.customer.id}</p>--%>
<%--            <p>Tên Khách Hàng: ${orderDetail.customer.name}</p>--%>
<%--            <p>Mã Nhân Viên : ${orderDetail.employee.id}</p>--%>
<%--            <p>Tên Nhân Viên: ${orderDetail.employee.name}</p>--%>
<%--        </div>--%>
<%--        &lt;%&ndash;    <div class="col-2"></div>&ndash;%&gt;--%>
<%--    </div>--%>
<%--</div>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"--%>
<%--        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--</body>--%>
<%--</html>--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            background: #19161c;
            height: 100vh;
            display: flex;
            justify-content: space-evenly;
            align-items: center;
            flex-direction: column;
            align-content: center;
        }

        .box {
            position: relative;
        }

        .input {
            padding: 10px;
            width: 40px;
            height: 40px;
            background: none;
            border: 4px solid white;
            border-radius: 50px;
            box-sizing: border-box;
            font-family: Comic Sans MS;
            font-size: 20px;
            color: white;
            outline: none;
            transition: .5s;
        }

        .box:hover input {
            width: 100px;
            background: #3b3640;
            border-radius: 10px;
        }

        .box i {
            position: absolute;
            top: 60%;
            right: auto;
            transform: translate(-50%, -50%);
            font-size: 15px;
            color: white;
            transition: .2s;
        }

        .box:hover i {
            opacity: 0;
            z-index: -1;
        }
        th{
            width: 200px;
            text-align: center;
        }
        td,input{
            width: 400px;
        }

    </style>
</head>
<body>
<form>
<%--    <button style="background-color:black; color: white;text-align: center"><th>Chi tiết order</th></button>--%>
    <table class="table table-dark table-hover container-f">
    <thead>
    <tr style="color: white;text-align: center">
        <th>Chi Tiết Order</th>
    </tr>
    <tr style="text-align: center">
    <tr>
        <th>Mã Order</th>
        <td><input name="id" readonly value="${orderDetail.ma_order}"></td>
    </tr>
    <tr>
        <th>Ngày làm order</th>
        <td><input name="date" readonly value="${orderDetail.ngay_lam_order}"></td>
    </tr>
    <tr>
        <th>Số lượng xe</th>
        <td><input name="quanlity" readonly value="${orderDetail.so_luong_xe}"></td>
    </tr>
    <tr>
        <th>Mã xe</th>
        <td><input name="idcar" readonly value="${orderDetail.product.ma_xe}"></td>
    </tr>
    <tr>
        <th>Tên xe</th>
        <td><input name="nameCar" readonly value="${orderDetail.product.ten_xe}"></td>
    </tr>
    <tr>
        <th>Giá</th>
        <td><input name="gia" readonly value="<fmt:formatNumber type="number" maxFractionDigits="3" value="${orderDetail.product.gia}"/>"></td>

    </tr>
    <tr>
        <th>Mã khách hàng</th>
        <td><input name="idCustomer" readonly value="${orderDetail.customer.id}"></td>
    </tr>
    <tr>
        <th>Tên khách hàng</th>
        <td><input name="nameCustomer" readonly value="${orderDetail.customer.name}"></td>
    </tr>
    <tr>
        <th>
            <a href="/order"><span class="btn btn-outline-light"><i class="fa-solid fa-arrow-left"></i></span></a>
        </th>
    </tr>
    </thead>
</table>
</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
