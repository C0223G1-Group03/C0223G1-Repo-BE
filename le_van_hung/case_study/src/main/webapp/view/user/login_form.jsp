<%--
  Created by IntelliJ IDEA.
  User: Hi
  Date: 6/3/2023
  Time: 10:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<section class="vh-100" style="background-color: #101f27 ;">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col col-xl-10">
                <div class="card" style="border-radius: 1rem;">
                    <div class="row g-0">
                        <div class="col-md-6 col-lg-5 d-none d-md-block">
                            <img style="height: 100%" src="view/image/Mercedes Benz Logo  by Rusydi Akmal Shahrani _ 500px.jpg"
                                 alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                        </div>
                        <div class="col-md-6 col-lg-7 d-flex align-items-center" style="background-color: black" >
                            <div class="card-body p-4 p-lg-5 text-black">

                                <form method="post" action="/user?action=login">

                                    <div class="d-flex align-items-center mb-3 pb-1">
                                        <i class="fas fa-cubes fa-2x me-3"></i>
                                        <span style="color:white;" class="h1 fw-bold mb-0">ĐĂNG NHẬP</span>
                                    </div>

                                    

                                    <div class="form-outline mb-4">
                                        <input type="text" name="account" class="form-control form-control-lg" />
                                        <label class="form-label" style="color: white">Tài khoản</label>
                                    </div>

                                    <div class="form-outline mb-4">
                                        <input type="password" name="password" class="form-control form-control-lg" />
                                        <label class="form-label"  style="color: white">Mật khẩu</label>
                                    </div>
                                   <input style="width: 300px;color: red;background-color: black;border: 0;padding: 0" type="text"
                                                                    value="${message}">
                                    <div class="pt-1 mb-4">
                                        <button class="btn btn-dark btn-lg btn-block" type="submit">Đăng nhập</button>
                                    </div>

                                    <a href="#!" class="small text-muted"><span style="color: white">Điều khoản sử dụng</span></a>
                                    <a href="#!" class="small text-muted"><span style="color: white">Chính sách bảo mật</span></a>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
