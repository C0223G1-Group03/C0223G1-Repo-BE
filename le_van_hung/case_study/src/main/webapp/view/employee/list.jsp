<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <style>
        /* Styling for the toast message */
        .toast {
            background-color: dodgerblue;
            color: white;
            padding: 25px;
            border-radius: 5px;
            position: fixed;
            top: 60px;
            right: 20px;
            z-index: 1;
            display: none;
            font-size: medium;
        }
    </style>
    <style>
        body_1 {
            margin: 0;
            padding: 0;
            background: #19161c;
            height: 10000vh;
            display: flex;
            /*justify-content: space-evenly;*/
            align-items: center;
            flex-direction: column;
            align-content: center;
            place-items: center;
        }

        .box {
            position: relative;
        }

        .input {
            padding: 10px;
            width: 40px;
            height: 40px;
            background: none;
            border: 4px solid white;
            border-radius: 50px;
            box-sizing: border-box;
            font-family: Comic Sans MS;
            font-size: 20px;
            color: white;
            outline: none;
            transition: .5s;
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



        html,
        body {
            height: 100%
        }

        .modal-content {
            border-radius: 5rem;
        }


        .modal-content:hover {
            box-shadow: 2px 2px 2px black;
        }

        .fa {
            color: #be2b3c;
            font-size: 90px;
            padding: 30px 0px;
            text-align: center;
        }

        .b1 {
            background-color: #2b84be;
            box-shadow: 0px 4px #337095;
            font-size: 17px;
        }

        .r3 {
            color: #c1c1c1;
            font-weight: 500;
        }

        a, a:hover {
            text-decoration: none;
        }
    </style>

</head>
<jsp:include page="/view/main_menu/nav_bar_admin_show.jsp"></jsp:include>
<body_1>
<table class="table table-dark table-hover container">
    <thead>
    <tr style="text-align: center">
        <th class="col-1" scope="col">Mã NV</th>
        <th class="col-1" scope="col">Họ và tên</th>
        <th class="col-1" scope="col">Ngày sinh</th>
        <th class="col-1" scope="col">Giới tính</th>
        <th class="col-1" scope="col">CCCD</th>
        <th class="col-1" scope="col">SĐT</th>
        <th class="col-2" scope="col">Địa chỉ</th>
        <th class="col-1" scope="col">Email</th>
        <th class="col-1" scope="col">Tài khoản</th>
        <th class="col-1" scope="col">Mật khẩu</th>
        <th class="col-1" scope="col">
            <a href="/employee?action=showAddForm">
                <span style="color: white;border-radius: 100%"><i class="fa-solid fa-user-plus"></i></span></a>
            <div class="box" style="padding-top: 10px">
                <form action="/employee?action=search" method="post">
                    <input type="search" class="input" id="id" name="id">
                </form>
                <i class="fas fa-search"></i>
            </div>
        </th>
    </tr>
    </thead>
    <tbody style="text-align: center">
    <c:forEach items="${employeeList}" var="e">
        <tr>
            <th class="col-1" scope="row"><c:out value="${e.id}"/></th>
            <td class="col-1" style="text-align: left"><c:out value="${e.name}"/></td>
            <td class="col-1"><c:out value="${e.dateOfBirth}"/></td>
            <td class="col-1"><c:if test="${e.gender==false}">Nữ</c:if>
                <c:if test="${e.gender==true}">Nam</c:if></td>
            <td class="col-1"><c:out value="${e.citizenId}"/></td>
            <td class="col-1"><c:out value="${e.phone}"/></td>
            <td class="col-2"><c:out value="${e.address}"/></td>
            <td class="col-1"><c:out value="${e.email}"/></td>
            <td class="col-1"><c:out value="${e.account}"/></td>
            <td class="col-1"><c:out value="${e.password}"/></td>

            <td class="col-1">
                <a href="/employee?action=showUpdateForm&id=${e.id}">
                    <button class="btn btn-outline-light col-6" type="button" style="width: 40px"><span><i
                            class="fa-regular fa-pen-to-square"></i></span></button>
                </a>
                <button onclick="remove(${e.id},'${e.name}')" class="btn btn-outline-light col-6" type="button"
                        style="width: 40px" data-bs-toggle="modal" data-bs-target="#modelId"><span
                        style="color: red;width: 10px"><i
                        class="fa-solid fa-trash-can"></i></span></button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<script>
    function remove(id, name) {
        console.log(id, name)
        document.getElementById("isDelete").value = id;
        document.getElementById("nameDelete").innerText = name;
    }

</script>

<!-- Modal -->
    <div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content py-md-5 px-md-4 p-sm-3 p-4">
                <h4 style="text-align: center">Xóa nhân viên</h4>
                <i class=" fa fa-solid fa-trash-can"></i>
                <h5 style="text-align: center" class="r3 px-md-5 px-sm-1">Bạn có chắc chắn muốn xóa <span style="color: black" id="nameDelete"></span> ?</h5>
                <form action="/employee?action=delete" method="post">
                    <input type="hidden" id="isDelete" name="isDelete">
                    <div class="text-center mb-3">
                        <button class="btn btn-outline-dark w-50 rounded-pill b1" type="submit">Có</button>
                    </div>
                    <div class="text-center mb-3">
                        <button type="button" class="btn btn-outline-dark w-50 rounded-pill b1" data-bs-dismiss="modal" >Không</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>
<%-- sign_up--%>
    <c:if test="${massage!= null}">
    <div style="background-color: dodgerblue;font-size: 20px;border-radius: 50px ;text-align: center" id="toastMessage" class="toast"></div>
    </c:if>
    <script>
        // Function to show the toast message
        function showToast(message) {
            var toast = document.getElementById("toastMessage");
            toast.style.display = "block";
            toast.innerText = message;
            setTimeout(function() {
                toast.style.display = "none";
            }, 3000); // Hide the toast message after 3 seconds
        }
        // Automatically show the toast message when the page is reloaded
        window.addEventListener('load', function() {
            showToast("${massage}");
        });
    </script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body_1>
</html>