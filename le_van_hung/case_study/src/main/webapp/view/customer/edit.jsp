<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 04-06-2023
  Time: 10:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
</head>
<body>
<form action="/customer?action=update" method="post">
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
            <td class="col-1 "><input scope="row" name="id" readonly value="${customer.getId()}"></td>
            <td class="col-2"><input name="name_edit" value="${customer.getName()}" ></td>
            <td class="col-1"><input name="dateOfBirth_edit" value="${customer.getDateOfBirth()}"></td>
            <td class="col-1" ><select name="gender" >
                <option   value="male">Male
                <option  value="female">Female
            </select></td>
            <td class="col-1"><input  name="citizenId" value="${customer.getCitizenId()}"></td>
            <td class="col-1"><input  name="phone" value="${customer.getPhone()}"></td>
            <td class="col-2"><input  name="address" value="${customer.getAddress()}"></td>
            <td class="col-2"><input  name="email" value="${customer.getEmail()}"></td>
            <td class="col-1">
                <button class="btn btn-outline-light" type="submit" style="width: 40px"><span>
                <i class="fa-regular fa-circle-check"></i></span></button>
            </td>
        </tr>
        </tbody>
    </table>
</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
