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
    <style>
        table {
            border: 2px white solid;
            background-color: black;
            color: white;
            width: 100%;
            font-size: medium;
        }
    </style>
</head>
<body>
<form action="/product?action=add" method="post">
    <table>
        <tr>
            <th>nhập tên xe :
                <input type="text" name="name">
            </th>

            <th>nhập màu xe :
                <input type="text" name="color">
            </th>

            <th>nhập ngày sản xuất :

                <input type="date" name="day" pattern="(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:30))|(?:(?:0[13578]|1[02])-31))">
            </th>

            <th>Nhập mô tả :

                <input type="text" name="introduce" minlength="3" maxlength="12">

            </th>

            <th>Nhập loại xe :
            <select name="loai_xe">
                <c:forEach items="${loaiXeList}" var="loaiXe">
                    <option value="${loaiXe.ma_loai_xe}">Sedan</option>
                    <option value="${loaiXe.ma_loai_xe}">SUV</option>
                    <option value="${loaiXe.ma_loai_xe}">coupe</option>
                    <option value="${loaiXe.ma_loai_xe}">Xe đa dụng</option>
                </c:forEach>
            </select>
            </th>

            <th>Nhập tình trạng :
            <select name="tinh_trang">
                <c:forEach items="${tinhTrangXe}" var="tinhTrang">
                    <option value="${tinhTrang.ma_tinh_trang}">Có Sẵn</option>
                    <option value="${tinhTrang.ma_tinh_trang}">Không có sẵn</option>
                </c:forEach>
            </select>
            </th>

            <th>Nhập Giá Xe
                <input type="number" name="gia" step="any" pattern="[-+]?[0-9]*[.,]?[0-9]+" title="Chỉ được nhập số">
            </th>
            <th>

                <button type="submit" style="">Thêm Mới</button>
            </th>
        </tr>
    </table>
</form>
</body>
</html>
