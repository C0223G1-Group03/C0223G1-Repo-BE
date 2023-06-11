<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
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
<body style="background-color: black">
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
            <td><input type="text" name="color" value="${product.getMau_sac_xe()}" required></td>
        </tr>
        <tr>
            <th>Ngày sản xuất</th>
            <td><input type="date" name="date" value="${product.getNgay_san_xuat()}" required></td>
        </tr>
        <tr>
            <th>Mô tả</th>
            <td><input type="text" name="introduce" value="${product.getMo_ta()}" minlength="3" maxlength="20" required></td>
        </tr>
        <tr>
            <th>Loại xe</th>
            <td><select name="loaiXe" required>
                    <option value="1"/>1<span> : Sedan</span>
                    <option value="2"/>2<span> : SUV</span>
                    <option value="3"/>3<span> : Coupé</span>
                    <option value="4"/>4<span> : Xe Đa Dụng</span>
            </select></td>
        </tr>
        <tr>
            <th>Tình Trạng</th>
            <td><select name="tinhTrang" required>
                    <option value="1"/>1<span> : Có Sẵn</span>
                    <option value="2"/>2<span> : Không Có Sẵn</span>
            </select></td>
        </tr>
        <tr>
            <th>Giá(VND)</th>
            <td><input type="number" name="gia" value="${product.getGia()}" step="any" pattern="[-+]?[0-9]" required></td>
        </tr>
        <tr>
            <th>Ảnh(img)</th>
            <td><input type="text" name="img" value="${product.getImage()}" required></td>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
