<%--
  Created by IntelliJ IDEA.
  User: Hi
  Date: 6/6/2023
  Time: 11:34 AM
  To change this template use File | Settings | File Templates.
--%>

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
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <!-- Container wrapper -->
    <div class="container-fluid">
        <!-- Navbar brand -->
        <a class="navbar-brand" href="#"></a>

        <!-- Toggle button -->
        <button class="navbar-toggler" type="button" data-mdb-toggle="collapse"
                data-mdb-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <i class="fas fa-bars text-light"></i>
        </button>

        <!-- Collapsible wrapper -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Left links -->
            <ul class="navbar-nav me-auto d-flex flex-row mt-3 mt-lg-0">
                <li class="nav-item text-center mx-2 mx-lg-1">
                    <a class="nav-link" href="/product">
                        <div>
                            <i class="fa-brands fa-product-hunt"></i>
                        </div>
                        Quản lý sản phẩm
                    </a>
                </li>
                <li class="nav-item text-center mx-2 mx-lg-1">
                    <a class="nav-link" href="/employee">
                        <div>
                            <i class="fa-solid fa-user"></i>
                        </div>
                        Quản lý nhân viên
                    </a>
                </li>
                <li class="nav-item dropdown text-center mx-2 mx-lg-1">
                    <a class="nav-link" href="/customer">
                        <div>
                            <i class="fa-solid fa-users"></i>
                        </div>
                        Quản lý khách hàng
                    </a>
                </li>
                <li class="nav-item dropdown text-center mx-2 mx-lg-1">
                    <a class="nav-link" href="/order">
                        <div>
                            <i class="fa-solid fa-file-signature"></i>
                        </div>
                        Quản lý đặt hàng
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="nav-item dropdown text-center mx-2 mx-lg-1">
        <a class="nav-link" href="/user?action=logout" style="width: 200px;color: white; padding-right: 20px">
            <div>
                ${employee.account} <i class="fa-solid fa-right-from-bracket"></i>
            </div>
            Đăng xuất
        </a>
    </div>
</nav>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
