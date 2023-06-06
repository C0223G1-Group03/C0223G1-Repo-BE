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
    <title>add</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
</head>
<body>
<form action="/customer?action=add" method="post">
<table class="table table-dark table-hover container-f ">
    <thead>
    <tr style="text-align: center">
        <th class="col-1" scope="col">Mã KH</th>
        <th class="col-2" scope="col">Họ và tên</th>
        <th class="col-1" scope="col">Ngày sinh</th>
        <th class="col-1" scope="col">Giới tính</th>
        <th class="col-1" scope="col">CCCD</th>
        <th class="col-1" scope="col">SĐT</th>
        <th class="col-3" scope="col">Địa chỉ</th>
        <th class="col-2" scope="col">Email</th>
    </tr>
    </thead>
    <tbody style="text-align: center">
    <tr>
       <td class="col-1 "><input scope="row" name="id"></td>
        <td class="col-2"><input name="name"></td>
        <td class="col-1" ><input name="dateOfBirth"></td>
        <td class="col-1" ><select name="gender">
        <option   value="male">Nam
        <option  value="female">Nữ
        </select></td>
        <td class="col-1"><input  name="citizenId"></td>
        <td class="col-1"><input  name="phone"></td>
        <td class="col-2"><input  name="address"></td>
        <td class="col-2"><input  name="email"></td>
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
