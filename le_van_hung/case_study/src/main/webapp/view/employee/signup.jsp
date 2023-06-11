<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        .gradient-custom {
            /* fallback for old browsers */
            background: black;
            height:100%;

            /* Chrome 10-25, Safari 5.1-6 */
            background: -webkit-linear-gradient(to bottom right, rgb(0, 0, 0), rgb(0, 0, 0));

            /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            background: linear-gradient(to bottom right, rgb(0, 0, 0), rgb(7, 16, 31))
        }

        .card-registration .select-input.form-control[readonly]:not([disabled]) {
            font-size: 1rem;
            line-height: 2.15;
            padding-left: .75em;
            padding-right: .75em;
        }
        .card-registration .select-arrow {
            top: 13px;
        }
    </style>
    <link rel="stylesheet" href="bootstrap-5.1.3-dist/bootstrap-5.1.3-dist/css/bootstrap.min.css">
    <script src="bootstrap-5.1.3-dist/bootstrap-5.1.3-dist/js/bootstrap.bundle.js"></script>
</head>
<body>
<form action="/employee?action=add" method="post">
<section class="100% gradient-custom">
    <div class="container py-5 h-100">
        <div class="row justify-content-center align-items-center h-100">
            <div class="col-12 col-lg-9 col-xl-7">
                <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                    <div class="card-body p-4 p-md-5">
                        <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">ĐĂNG KÝ TÀI KHOẢN <span
                                style="padding-left: 10px"><i class="fa-regular fa-pen-to-square"></i></span></h3>
                        <form>
                            <div class="row">
                                <div class="col-md-6 mb-2">
                                    <div class="form-outline">
                                        <input type="text" placeholder="Nguyễn Văn A" name="name" id="input_name" required title="Vui lòng nhập họ và tên" class="form-control form-control-lg" />
                                        <label class="form-label" for="input_name">Họ và tên</label>
                                    </div>
                                </div>
                                <div class="col-md-6 mb-4">
                                    <div class="form-outline">
                                        <input type="date" placeholder="dd/mm/yyyy" name="dateOfBirth" id="input_dayOfBirth" required title="Vui lòng nhập ngày sinh" class="form-control form-control-lg" />
                                        <label class="form-label" for="input_dayOfBirth">Ngày sinh</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mb-2 d-flex align-items-center">
                                    <div class="form-outline datepicker w-100">
                                        <span id="cccd_error"></span>
                                        <input onkeyup="checkCCCD()" type="text" placeholder=" CCCD" name="citizenId" id="input_cccd" required title="Vui lòng nhập CCCD" class="form-control form-control-lg"/>
                                        <label for="input_cccd" class="form-label">CCCD</label>
                                    </div>
                                </div>
                                <div class="col-md-6 mb-4">
                                    <h6 class="mb-2 pb-1">Giới tính </h6>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="femaleGender"  value="Nữ" name="gender" required checked />
                                        <label class="form-check-label" for="femaleGender">Nữ</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" value="Nam" name="gender" required id="maleGender"/>
                                        <label class="form-check-label" for="maleGender">Nam</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mb-2 d-flex align-items-center">
                                    <div class="form-outline datepicker w-100 ">
                                        <span id="error_mail"></span>
                                        <input onkeyup="checkEmail()" type="email" name="email" required id="emailAddress" class="form-control form-control-lg"
                                               title="Vui lòng nhập Email"/>
                                        <label class="form-label" for="emailAddress">Email</label>
                                    </div>
                                </div>
                                <div class="col-md-6 mb-2 d-flex align-items-center">
                                    <div class="form-outline datepicker w-100">
                                        <span id="phone_error"></span>
                                        <input onkeyup="checkPhone()"  type="tel" placeholder="(+84)-0xxxxxxxxx" name="phone" title="Vui lòng nhập số điện thoại" id="phoneNumber" class="form-control form-control-lg" />
                                        <label class="form-label" for="phoneNumber">Số điện thoại</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 mb-2 align-items-center" >
                                    <div class="form-outline">
                                        <input type="text" placeholder="Số nhà,đường,phường,quận/huyện,tỉnh/thành phố" name="address" id="input_address" required title="Vui lòng nhập địa chỉ" class="form-control form-control-lg" />
                                        <label class="form-label" for="input_address">Địa chỉ</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 mb-2 align-items-center">
                                    <div class="form-outline">
                                        <input type="text" placeholder="abc123" name="account" id="input_account" required title="Vui lòng nhập tên tài khoản" class="form-control form-control-lg" />
                                        <label class="form-label" for="input_account">Tên tài khoản</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mb-2 d-flex align-items-center">
                                    <div class="form-outline">
                                        <input onkeyup="checkPW()"  type="password" placeholder="**********" name="password" id="input_password" required class="form-control form-control-lg"
                                               title="Vui lòng nhập mật khẩu"/>
                                        <label class="form-label" for="input_password">Mật khẩu</label>
                                    </div>
                                </div>
                                <div class="col-md-6 mb-2 pb-2">
                                    <div class="form-outline">
                                        <input onkeyup="checkRPW()" type="password" placeholder="**********" name="password1" id="repeat_password" required class="form-control form-control-lg"
                                               title="Vui lòng nhập lại mật khẩu"/>
                                        <label class="form-label" for="repeat_password">Nhập lại khẩu</label>
                                    </div>
                                </div>
                            </div>
                            <p id="message"></p>
                            <div class="mt-4 pt-2">
                                <button id="button" class="btn btn-outline-dark btn-lg" type="submit">Gửi</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</form>


<script>
   function checkRPW(){
        let pw=document.getElementById("input_password").value;
        let rpw=document.getElementById("repeat_password").value;
        let message=document.getElementById("message");
        if(pw.length>=6){
            if(pw==rpw){
                message.textContent="";
                document.getElementById('button').style.display='block';
            }else{
                message.textContent="Mật khẩu không khớp.";
                message.style.color="#C71010FF"
                document.getElementById('button').style.display='none';
            }
        }else{
            message.textContent="Mật khẩu tối thiểu là 6 kí tự";
            message.style.color="#C71010FF";
            document.getElementById('button').style.display='none';

        }
   }
   function checkPW(){
        let pw=document.getElementById("input_password").value;
        let message=document.getElementById("message");
        if(pw.length>=6){
                message.textContent="";
            document.getElementById('button').style.display='block';
        }else{
            message.textContent="Mật khẩu tối thiểu là 6 kí tự";
            message.style.color="#C71010FF";
            document.getElementById('button').style.display='none'

        }
   }

    function checkCCCD() {
        let message_cccd=document.getElementById("cccd_error");
        let cccd=document.getElementById("input_cccd").value;
        if(!cccd.match(/^[0-9]{12,}/)){
            message_cccd.textContent="CCCD không hợp lệ";
            message_cccd.style.color="#C71010FF"
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
           message_phone.style.color="#C71010FF"
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
           message_mail.style.color="#C71010FF"
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