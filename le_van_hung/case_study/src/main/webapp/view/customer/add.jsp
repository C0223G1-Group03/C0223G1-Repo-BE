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
            <td class="col-1"><input id="input_cccd" onkeyup="checkCCCD()" type="number" name="citizenId" required title="Vui lòng nhập CCCD">
               <br> <span id="cccd_error"></span>
            </td>
        </tr>
        <tr>
            <th class="col-1" scope="col">SĐT</th>
            <td class="col-1"><input id="phoneNumber" onkeyup="checkPhone()" name="phone" type="tel" title="Vui lòng nhập số điện thoại" required>
                <br><span id="phone_error"></span>
            </td>
        </tr>
        <tr>
            <th class="col-3" scope="col">Địa chỉ</th>
            <td class="col-3"><input type="text" name="address" required title="Vui lòng nhập địa chỉ"></td>
        </tr>
        <tr>
            <th class="col-2" scope="col">Email</th>
            <td class="col-2"><input id="emailAddress" onkeyup="checkEmail()" type="email" name="email" tilte="Vui lòng nhập Email" required>
              <br>  <span id="error_mail"></span>
            </td>
        </tr>
        <tr>
            <th class="col-1" scope="col"><a href="/customer"><span class="btn btn-outline-light"><i
                    class="fa-solid fa-arrow-left"></i></span></a></th>
            <td class="col-1">
                <button id="button" class="btn btn-outline-light" type="submit" style="width: 40px;margin-left: 300px"><span>
                <i class="fa-regular fa-circle-check"></i></span></button>
            </td>
        </tr>
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
</body>
</html>
