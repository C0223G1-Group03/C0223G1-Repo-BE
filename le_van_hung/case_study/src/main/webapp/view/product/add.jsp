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
    table{
      border: 2px black solid;
      background-color: black;
      color: white;width: 100%;
      font-size: xx-large;
      height: 100%
    }
  </style>
</head>
<body>
<form action="/product?action=add" method="post">
  <table>
    <tr>
      <th>nhập tên xe :
      <td>
        <input type="text" name="name">
      </td>
      </th>
    </tr>
    <tr>
      <th>nhập màu xe :
      <td>
        <input type="text" name="color">
      </td>
      </th>
    </tr>
    <tr>
      <th>nhập ngày sản xuất :
      <td>
        <input type="text" name="day">
      </td>
      </th>
    </tr>
    <tr>
      <th>Nhập mô tả :
      <td>
        <input type="text" name="introduce">
      </td>
      </th>
    </tr>
    <tr>
      <th>Nhập loại xe :
      <td><select name="loai_xe">
        <c:forEach items="${loaiXeList}" var="loaiXe">
          <option value="${loaiXe.ma_loai_xe}">Sedan</option>
          <option value="${loaiXe.ma_loai_xe}">SUV</option>
          <option value="${loaiXe.ma_loai_xe}">coupe</option>
          <option value="${loaiXe.ma_loai_xe}">Xe đa dụng</option>
        </c:forEach>
      </select>
      </td>
      </th>
    </tr>
    <tr>
      <th>Nhập tình trạng :
      <td><select name="tinh_trang">
        <c:forEach items="${tinhTrangXe}" var="tinhTrang">
          <option value="${tinhTrang.ma_tinh_trang}">Có Sẵn</option>
          <option value="${tinhTrang.ma_tinh_trang}">Không có sẵn</option>
        </c:forEach>
      </select>
      </td>
      </th>
    </tr>
    <tr>
      <th>
      <td>
        <button type="submit" style="">Thêm Mới</button>
      </td>
      </th>
    </tr>
  </table>
</form>
</body>
</html>
