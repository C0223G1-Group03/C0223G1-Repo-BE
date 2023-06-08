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
        table {
            border: 2px white solid;
            background-color: black;
            color: white;
            width: 100%;
            font-size: medium;
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
        <tr style="text-align: center">
            <th class="col-3" scope="col">Tên xe</th>
            <th class="col-1" scope="col">Màu xe</th>
            <th class="col-3" scope="col">Ngày sản xuất</th>
            <th class="col-1" scope="col">Mô tả</th>
            <th class="col-1" scope="col">Loại xe</th>
            <th class="col-1" scope="col">Tình trạng</th>
            <th class="col-1" scope="col">Giá</th>
            <th class="col-1" scope="col"><a href="/product"><span class="btn btn-outline-light"><i
                    class="fa-solid fa-arrow-left"></i></span></a></th>
        </tr>
        </thead>
        <tbody style="text-align: center">
        <tr>
            <td class="col-3"><input name="name"></td>
            <td class="col-1"><input name="color"></td>
            <td class="col-3"><input name="day">
            <td class="col-1"><input name="introduce"></td>
            <td class="col-1"><select name="loai_xe">

                <c:forEach items="${loaiXeList}" var="loaiXe">
                    <option value="${loaiXe.ma_loai_xe}">Sedan</option>
                    <option value="${loaiXe.ma_loai_xe}">SUV</option>
                    <option value="${loaiXe.ma_loai_xe}">coupe</option>
                    <option value="${loaiXe.ma_loai_xe}">Xe đa dụng</option>
                </c:forEach>
            </select>
            </td>
            <td class="col-1"><select name="tinh_trang">
                <c:forEach items="${tinhTrangXe}" var="tinhTrang">
                    <option value="${tinhTrang.ma_tinh_trang}">Có Sẵn</option>
                    <option value="${tinhTrang.ma_tinh_trang}">Không có sẵn</option>
                </c:forEach>
            </select></td>
            <td class="col-1"><input name="gia">
            <td class="col-1">
                <button class="btn btn-outline-light" type="submit" style="width: 40px"><span>
                <i class="fa-regular fa-circle-check"></i></span></button>
            </td>
        </tr>
        </tbody>
    </table>
</form>
</body>
</html>
