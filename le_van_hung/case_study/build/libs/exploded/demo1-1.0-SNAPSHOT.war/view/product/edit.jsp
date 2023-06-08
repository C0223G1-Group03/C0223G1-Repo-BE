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
    <style>
        table {
            border: 2px black solid;
            background-color: black;
            color: white;
            width: 100%;
            font-size: xx-large;
            height: 100%
        }
    </style>
</head>
<body>
<form method="post" action="/product?action=edit">
    <table>
        <tr>
            <th>Mã xe:
            <td>
                <input type="number" name="id" value="${product.getMa_xe()}" readonly>
            </td>
            </th>
        </tr>
        <tr>
            <th>Tên xe:
            <td>
                <input type="text" name="name" value="${product.getTen_xe()}">
            </td>
            </th>
        </tr>
        <tr>
            <th>Màu xe:
            <td>
                <input type="text" name="color" value="${product.getMau_sac_xe()}">
            </td>
            </th>
        </tr>
        <tr>
            <th>Ngày sản xuất:
            <td>
                <input type="text" name="date" value="${product.getNgay_san_xuat()}">
            </td>
            </th>
        </tr>
        <tr>
            <th>Mô tả:
            <td>
                <input type="text" name="introduce" value="${product.getMo_ta()}">
            </td>
            </th>
        </tr>
        <tr>
            <th>Loại xe:
            <td>
                <select name="loaiXe">
                    <c:forEach items="${loaiXeList}" var="loaiXe">
                        <option value="${loaiXe.ma_loai_xe}">Sedan</option>
                        <option value="${loaiXe.ma_loai_xe}">SUV</option>
                        <option value="${loaiXe.ma_loai_xe}">Coupe</option>
                        <option value="${loaiXe.ma_loai_xe}">Xe Đa Dụng</option>
                    </c:forEach>
                </select>
            </td>
            </th>
        </tr>
        <tr>
            <th>Tình Trạng:
            <td>
                <select name="tinhTrang">
                    <c:forEach items="${tinhTrangXe}" var="tinhTrang">
                        <option value="${tinhTrang.ma_tinh_trang}">Có Sẵn</option>
                        <option value="${tinhTrang.ma_tinh_trang}">Không Có Sẵn</option>
                    </c:forEach>
                </select>
            </td>
            </th>
        </tr>
        <tr>
            <th>Giá
            <td>
            <input type="number" name="gia" value="${product.getGia()}">
            </td>
            </th>
        </tr>
        <tr>
            <th>
            <td>
                <button type="submit">sửa</button>
            </td>
            </th>
        </tr>
    </table>

</form>
</body>
</html>
