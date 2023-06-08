<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 04/06/2023
  Time: 09:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
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
<form method="post" action="/product?action=edit">
    <table class="table table-dark table-hover container-f">
        <thead>
        <tr style="text-align: center">
        <tr>
            <th>Mã xe</th>
            <td><input type="number" name="id" value="${product.getMa_xe()}" readonly></td>
        </tr>
        <tr>
            <th>Tên xe</th>
            <td><input type="text" name="name" value="${product.getTen_xe()}" required></td>
        </tr>
        <tr>
            <th>Màu xe</th>
            <td><input type="text" name="color" value="${product.getMau_sac_xe()}"></td>
        </tr>
        <tr>
            <th>Ngày sản xuất</th>
            <td><input type="date" name="date" value="${product.getNgay_san_xuat()}"></td>
        </tr>
        <tr>
            <th>Mô tả</th>
            <td><input type="text" name="introduce" value="${product.getMo_ta()}" minlength="3" maxlength="20"></td>
        </tr>
        <tr>
            <th>Loại xe</th>
            <td><select name="loaiXe">
                <c:forEach items="${loaiXeList}" var="loaiXe">
                    <option value="${loaiXe.ma_loai_xe}">Sedan</option>
                    <option value="${loaiXe.ma_loai_xe}">SUV</option>
                    <option value="${loaiXe.ma_loai_xe}">Coupe</option>
                    <option value="${loaiXe.ma_loai_xe}">Xe Đa Dụng</option>
                </c:forEach>
            </select></td>
        </tr>
        <tr>
            <th>Tình Trạng</th>
            <td><select name="tinhTrang">
                <c:forEach items="${tinhTrangXe}" var="tinhTrang">
                    <option value="${tinhTrang.ma_tinh_trang}">Có Sẵn</option>
                    <option value="${tinhTrang.ma_tinh_trang}">Không Có Sẵn</option>
                </c:forEach>
            </select></td>
        </tr>
        <tr>
            <th>Giá (VND)</th>
            <td><input type="number" name="gia" value="${product.getGia()}" step="any" pattern="[-+]?[0-9]"></td>
        </tr>
        <tr>
            <th>Ảnh(img)</th>
            <td><input type="text" name="img" value="${product.getImage()}"></td>
        </tr>
        <tr>
            <th><a href="/product"><span class="btn btn-outline-light"><i class="fa-solid fa-arrow-left"></i></span></a>
            </th>
            <td>
                <button class="btn btn-outline-light" type="submit" style="width: 40px;margin-left: 300px"><span>
                <i class="fa-regular fa-circle-check"></i></span></button>
            </td>
        </tr>
        </thead>
    </table>
</form>
</body>
</html>
