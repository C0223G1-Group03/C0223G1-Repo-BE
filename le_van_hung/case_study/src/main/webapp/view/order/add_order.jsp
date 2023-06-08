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
    <title>Add Order</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
</head>
<body>
<form action="/order?action=add" method="post">
    <table class="table table-dark table-hover container-f ">
        <thead>
        <tr style="text-align: center">
            <th class="col-2" scope="col">Ngày làm order</th>
            <th class="col-1" scope="col">Số lượng xe</th>
            <th class="col-1" scope="col">Mã Xe</th>
            <th class="col-1" scope="col">Mã khách hàng</th>
            <th class="col-1" scope="col">Mã nhân viên</th>
            <th class="col-1" scope="col"><a href="/order"><span class="btn btn-outline-light"><i class="fa-solid fa-arrow-left"></i></span></a></th>
        </tr>
        </thead>
        <tbody style="text-align: center">
        <tr>
            <td class="col-2"><input name="ngay_lam_order"></td>
            <td class="col-1" ><input name="so_luong_xe"></td>
            <td class="col-1" ><input name="ma_xe">
            <td class="col-1"><input  name="ma_khach_hang"></td>
            <td class="col-1"><input  name="ma_nhan_vien"></td>
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