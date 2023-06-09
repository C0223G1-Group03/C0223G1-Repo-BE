<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 03-06-2023
  Time: 4:25 PM
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
<form action="/customer?action=add" method="post">
    <table class="table table-dark table-hover container-f ">
        <tr style="color: white;text-align: center"><th>THÊM KHÁCH HÀNG</th></tr>
        <tr style="text-align: center">
        <tr>
            <th class="col-2" scope="col">Họ và tên</th>
            <td class="col-2"><input type="text" name="name" required title="Vui lòng nhập họ và tên"></td>
        </tr>
        <tr>
            <th class="col-1" scope="col">Ngày sinh</th>
            <td class="col-1"><input type="date" name="dateOfBirth" required title="Vui lòng nhập ngày sinh"></td>
        </tr>
        <tr>
            <th class="col-1" scope="col">Giới tính</th>
            <td class="col-1"><select name="gender">
                <option value="Nam">Nam
                <option value="Nữ">Nữ
            </select></td>
        </tr>
        <tr>
            <th class="col-1" scope="col">CCCD</th>
            <td class="col-1"><input type="number" name="citizenId" required title="Vui lòng nhập CCCD"></td>
        </tr>
        <tr>
            <th class="col-1" scope="col">SĐT</th>
            <td class="col-1"><input name="phone" type="tel"
                                     pattern="^(84|0[3|5|7|8|9])+([0-9]{8})$" title="Vui lòng nhập số điện thoại"
                                     required></td>
        </tr>
        <tr>
            <th class="col-3" scope="col">Địa chỉ</th>
            <td class="col-3"><input type="text" name="address" required title="Vui lòng nhập địa chỉ"></td>
        </tr>
        <tr>
            <th class="col-2" scope="col">Email</th>
            <td class="col-2"><input type="email" name="email" pattern="^\s*@[a-z0-9.-]*$" tilte="Vui lòng nhập Email" required></td>
        </tr>
        <tr>
            <th class="col-1" scope="col"><a href="/customer"><span class="btn btn-outline-light"><i
                    class="fa-solid fa-arrow-left"></i></span></a></th>
            <td class="col-1">
                <button class="btn btn-outline-light" type="submit" style="width: 40px;margin-left: 300px"><span>
                <i class="fa-regular fa-circle-check"></i></span></button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
