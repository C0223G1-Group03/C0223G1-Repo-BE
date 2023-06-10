<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/7/2023
  Time: 9:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>add</title>
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
            height: 30px;
            text-align: center;
        }
        td,input{
            height: 30px;
            width: 400px;
        }
        tr{
            height: 30px;
        }
    </style>
</head>
<body>
<form action="/order?action=add" method="post">
<%--    <table class="table table-dark table-hover container-f ">--%>
<%--        <thead>--%>
<%--        <tr style="text-align: center">--%>
<%--            <td class="col-2" scope="col">Ngày làm order</td>--%>
<%--            <td class="col-1" scope="col">Số lượng xe</td>--%>
<%--            <td class="col-1" scope="col">Mã Xe</td>--%>
<%--            <td class="col-1" scope="col">Mã khách hàng</td>--%>
<%--            <td class="col-1" scope="col">Mã nhân viên</td>--%>
<%--            <td class="col-1" scope="col"><a href="/order"><span class="btn btn-outline-light"><i class="fa-solid fa-arrow-left"></i></span></a></td>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody style="text-align: center">--%>
<%--        <tr>--%>
<%--            <td class="col-2"><input name="ngay_lam_order"></td>--%>
<%--            <td class="col-1" ><input name="so_luong_xe"></td>--%>
<%--            <td class="col-1" ><input name="ma_xe">--%>
<%--            <td class="col-1"><input  name="ma_khach_hang"></td>--%>
<%--            <td class="col-1"><input  name="ma_nhan_vien"></td>--%>
<%--            <td class="col-1">--%>
<%--                <button class="btn btn-outline-light" type="submit" style="width: 40px"><span>--%>
<%--                <i class="fa-regular fa-circle-check"></i></span></button>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        </tbody>--%>
<%--    </table>--%>
    <table class="table table-dark table-hover">
        <thead>
        <tr style="color: white;text-align: center">
            <th>THÊM ĐƠN ĐẶT HÀNG</th>
        </tr>
        <tr style="text-align: center">
        <tr>
            <th class="col-3" scope="col"> Ngày làm order </th>
            <td class="col-3"><input type="date" name="ngay_lam_order" required></td>
        </tr>
        <tr>
            <th class="col-1" scope="col">Số lượng xe</th>
            <td class="col-1"><input name="so_luong_xe" required></td>
        </tr>
        <tr>
            <th class="col-2" scope="col">Mã xe</th>
            <td class="col-2"><input  name="ma_xe" required></td>
        </tr>
        <tr>
            <th class="col-1" scope="col">Mã khách hàng</th>
            <td class="col-1"><input name="ma_khach_hang" required></td>
        </tr>
        <tr>
            <th class="col-1" scope="col">Mã nhân viên</th>
            <td class="col-1"><input name="ma_nhan_vien" required></td>
        </tr>
        <tr>
            <th class="col-1" scope="col"><a href="/order"><span class="btn btn-outline-light"><i
                    class="fa-solid fa-arrow-left"></i></span></a></th>
            <td class="col-1">
                <button class="btn btn-outline-light" type="submit" style="width: 40px;margin-left: 300px"><span>
                <i class="fa-regular fa-circle-check"></i></span></button>
            </td>
        </tr>
        </thead>
    </table>
</form>
</body>
</html>

