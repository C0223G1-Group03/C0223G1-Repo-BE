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
<body>
<form action="/customer?action=update" method="post">
    <table class="table table-dark table-hover container-f">
        <thead>
        <tr style="text-align: center">
        <tr>
            <th>Mã KH</th>
            <td><input name="id" readonly value="${customer.getId()}"></td>
        </tr>
        <tr>
            <th >Họ và tên</th>
            <td ><input name="name_edit" value="${customer.getName()}"></td>
        </tr>
        <tr>
            <th >Ngày sinh</th>
            <td ><input name="dateOfBirth_edit" value="${customer.getDateOfBirth()}"></td>
        </tr>
        <tr>
            <th >Giới tính</th>
            <td ><select name="gender">
                <option value="Nam">Nam
                <option value="Nữ">Nữ
            </select></td>
        </tr>
        <tr>
            <th>CCCD</th>
            <td ><input onkeyup="checkCCCD()" id="input_cccd" type="number" name="citizenId" value="${customer.getCitizenId()}">
            <br><span id="cccd_error"></span></td>
        </tr>
        <tr>
            <th>SĐT</th>
            <td ><input id="phoneNumber" onkeyup="checkPhone()"  name="phone" type="phone" value="${customer.getPhone()}">
            <br><span id="phone_error"></span></td>
        </tr>
        <tr>
            <th >Địa chỉ</th>
            <td ><input name="address" value="${customer.getAddress()}"></td>
        </tr>
        <tr>
            <th >Email</th>
            <td ><input onkeyup="checkEmail()" id="emailAddress" name="email" type="email" value="${customer.getEmail()}">
            <br><span id="error_mail"></span></td>
        </tr>
        <tr>
            <th><a href="/customer"><span class="btn btn-outline-light"><i class="fa-solid fa-arrow-left"></i></span></a></th>
            <td>
                <button id="button" class="btn btn-outline-light" type="submit" style="width: 40px;margin-left: 300px"><span>
                <i class="fa-regular fa-circle-check"></i></span></button>
            </td>
        </tr>
        </thead>
    </table>
</form>
<script>
    function checkCCCD() {
        let message_cccd=document.getElementById("cccd_error");
        let cccd=document.getElementById("input_cccd").value;
        if(!cccd.match(/^[0-9]{12,}/)){
            message_cccd.textContent="CCCD không hợp lệ";
            message_cccd.style.color="#ffffff"
            document.getElementById('button').style.display='none'
        }else{
            message_cccd.textContent="";
            document.getElementById('button').style.display='block';
        }

    }

    function checkPhone(){
        let message_phone=document.getElementById("phone_error");
        let phone=document.getElementById("phoneNumber").value;
        if(!phone.match(/^(0?)(3[2-9]|5[6|8|9]|7[0|6-9]|8[0-6|8|9]|9[0-4|6-9])[0-9]{7}$/)){
            message_phone.textContent="Số điện thoại không hợp lệ";
            message_phone.style.color="#ffffff"
            document.getElementById('button').style.display='none'
        }else{
            message_phone.textContent="";
            document.getElementById('button').style.display='block';
        }
    }

    function checkEmail(){
        let message_mail=document.getElementById("error_mail");
        let mail=document.getElementById("emailAddress").value;
        if(!mail.match(/^[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*@[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*$/)){
            message_mail.textContent="Email không đúng định dạng";
            message_mail.style.color="#ffffff"
            document.getElementById('button').style.display='none'
        }else{
            message_mail.textContent="";
            document.getElementById('button').style.display='block';
        }
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
