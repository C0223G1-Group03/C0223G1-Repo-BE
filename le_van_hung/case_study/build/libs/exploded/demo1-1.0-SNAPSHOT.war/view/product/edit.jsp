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
<form method="post" action="/product?action=edit">
    <table>
        <tr>
            <th>Mã xe:
                <input type="number" name="id" value="${product.getMa_xe()}" readonly>

            </th>

            <th>Tên xe:

                <input type="text" name="name" value="${product.getTen_xe()}" required>

            </th>

            <th>Màu xe:

                <input type="text" name="color" value="${product.getMau_sac_xe()}">

            </th>
            <th>Ngày sản xuất:

                <input type="date" name="date" value="${product.getNgay_san_xuat()}" pattern="(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:30))|(?:(?:0[13578]|1[02])-31))">

            </th>
            <th>Mô tả:

                <input type="text" name="introduce" value="${product.getMo_ta()}" minlength="3" maxlength="20">
            </th>

            <th>Loại xe:

                <select name="loaiXe">
                    <c:forEach items="${loaiXeList}" var="loaiXe">
                        <option value="${loaiXe.ma_loai_xe}">Sedan</option>
                        <option value="${loaiXe.ma_loai_xe}">SUV</option>
                        <option value="${loaiXe.ma_loai_xe}">Coupe</option>
                        <option value="${loaiXe.ma_loai_xe}">Xe Đa Dụng</option>
                    </c:forEach>
                </select>
            </th>

            <th>Tình Trạng:

                <select name="tinhTrang">
                    <c:forEach items="${tinhTrangXe}" var="tinhTrang">
                        <option value="${tinhTrang.ma_tinh_trang}">Có Sẵn</option>
                        <option value="${tinhTrang.ma_tinh_trang}">Không Có Sẵn</option>
                    </c:forEach>
                </select>
            </th>

            <th>Giá (VND)

                <input type="number" name="gia" value="${product.getGia()}" step="any" pattern="[-+]?[0-9]">
            </th>
            <th>Ảnh(img)
                <input type="text" name="img" value="${product.getImage()}">
            </th>
            <th>
                <button type="submit">sửa</button>
            </th>
        </tr>
    </table>

</form>
</body>
</html>
