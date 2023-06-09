<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 02/06/2023
  Time: 12:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
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
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
</head>
<body>
<form action="/product?action=add" method="post">
    <table class="table table-dark table-hover container-f ">
        <thead>
        <tr style="color: white;text-align: center"><th>THÊM SẢN PHẨM</th></tr>
        <tr style="text-align: center">
            <tr>
            <th class="col-3" scope="col">Tên xe</th>
            <td class="col-3"><input name="name"  required></td>
        </tr>
        <tr>
            <th class="col-1" scope="col">Màu xe</th>
            <td class="col-1"><input name="color"></td>
        </tr>
        <tr>
            <th class="col-2" scope="col">Ngày sản xuất</th>
            <td class="col-2"><input name="day" ></td>
        </tr>
        <tr>
            <th class="col-1" scope="col">Mô tả</th>
            <td class="col-1"><input name="introduce"></td>
        </tr>
        <tr>
            <th class="col-1" scope="col">Loại xe</th>
            <td class="col-1"><select name="loai_xe">

                <c:forEach items="${loaiXeList}" var="loaiXe">
                    <option value="${loaiXe.ma_loai_xe}">Sedan</option>
                    <option value="${loaiXe.ma_loai_xe}">SUV</option>
                    <option value="${loaiXe.ma_loai_xe}">coupe</option>
                    <option value="${loaiXe.ma_loai_xe}">Xe đa dụng</option>
                </c:forEach>
            </select>
            </td>
        </tr>
        <tr>
            <th class="col-1" scope="col">Tình trạng</th>
            <td class="col-1"><select name="tinh_trang">
                <c:forEach items="${tinhTrangXe}" var="tinhTrang">
                    <option value="${tinhTrang.ma_tinh_trang}">Có Sẵn</option>
                    <option value="${tinhTrang.ma_tinh_trang}">Không có sẵn</option>
                </c:forEach>
            </select></td>
        </tr>
        <tr>
            <th class="col-1" scope="col">Giá (VND)</th>
            <td class="col-1"><input name="gia" required></td>
        </tr>
        <tr>
            <th class="col-1" scope="col">Ảnh (img) </th>
            <td class="col-1"><input name="img" required></td>
        </tr>
        <tr>
            <th class="col-1" scope="col"><a href="/product"><span class="btn btn-outline-light"><i
                    class="fa-solid fa-arrow-left"></i></span></a></th>
            <td class="col-1">
                <button class="btn btn-outline-light" type="submit" style="width: 40px;margin-left: 300px"><span>
                <i class="fa-regular fa-circle-check"></i></span></button>
            </td>
        </tr>
        </thead>
    </table>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
