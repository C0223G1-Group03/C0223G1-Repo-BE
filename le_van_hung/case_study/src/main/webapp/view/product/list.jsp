<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 02/06/2023
  Time: 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
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
            /*align-items: center;*/
            flex-direction: column;

            align-content: center;
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

        .table {
            background-color: #101f27;
        }

        .toast {
            background-color: white;
            color: black;
            padding: 25px;
            border-radius: 5px;
            position: fixed;
            top: 60px;
            right: 20px;
            z-index: 1;
            display: none;
            font-size: medium;
        }

        .toast1 {
            background-color: white;
            color: red;
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

</head>
<jsp:include page="/view/main_menu/nav_bar_admin_show.jsp"></jsp:include>
<body>
<div>
    <h2 style="text-align: center;">
       QUẢN LÝ SẢN PHẨM
    </h2>
</div>
<%--<jsp:include page="/view/main_menu/nav_bar_giao_dien.jsp"></jsp:include>--%>
<table id="table" class="table table-dark table-hover">
    <thead style="padding-bottom: 50px">
    <tr style="text-align: center;">
        <th class="col-1" scope="col">
            STT
        </th>
        <th class="col-2" scope="col">Tên Loại xe</th>
        <th class="col-1" scope="col">Màu xe</th>
        <th class="col-2" scope="col">Ngày Sản Xuất</th>
        <th class="col-1" scope="col">Mô Tả</th>
        <th class="col-1" scope="col">Tên Loại Xe</th>
        <th class="col-1" scope="col">Tình Trạng</th>
        <th class="col-1" scope="col">Giá(VND)</th>
        <th class="col-1" scope="col">Ảnh(img)</th>
        <th class="col-1" scope="col">
            <a href="/product?action=showFormAdd"
               style="color: white;border-radius: 100%;height: 100px;width: 100px">
                <span><i class="fa-solid fa-circle-down"></i></span></a>
            <div class="box" style="padding-top: 10px">
                <form action="/product?action=search" method="post">
                    <input type="search" class="input" id="id" name="id">
                    <%--                        <button type="submit" >tìm kiếm</button>--%>
                </form>
                <i class="fas fa-search"></i>
            </div>
        </th>
    </tr>
    </thead>
    <tbody style="text-align: center;">
    <c:forEach items="${list}" var="list" varStatus="loop">
        <tr>
            <th class="col-1" scope="row"><c:out value="${loop.count}"/></th>
            <td class="col-2" style="text-align:left"><c:out value="${list.ten_xe}"/></td>
            <td class="col-1"><c:out value="${list.mau_sac_xe}"/></td>
            <td class="col-2"><c:out value="${list.ngay_san_xuat}"/></td>
            <td class="col-1"><c:out value="${list.mo_ta}"/></td>
            <td class="col-1" style="text-align:left"><c:out value="${list.loaiXe.ten_loai_xe}"/></td>
            <td class="col-1"><c:out value="${list.tinhTrang.ten_tinh_trang}"/></td>
            <td class="col-1" style="text-align: right">
                <fmt:formatNumber type="number" maxFractionDigits="3" value="${list.gia}"/>
            </td>
            <td class="col-1"><img height="50px" width="50px" src="<c:out value="${list.image}"/>"/></td>
            <td class="col-1">
                <a href="/product?action=showFormEdit&id=${list.ma_xe}"/>
                <button class="btn btn-outline-light col-6" type="button" style="width: 40px"><span><i
                        class="fa-regular fa-pen-to-square"></i></span></button>
                </a>
                <button onclick="remove(${list.ma_xe},'${list.ten_xe}')" class="btn btn-outline-light col-6"
                        type="button"
                        style="width: 40px" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        <span
                                style="color: red;width: 10px"><i
                                class="fa-solid fa-trash-can"></i></span>
                </button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Xóa sản phẩm</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <h4>Bạn có chắc chắn xóa sản phẩm có tên:
                    <span style="color:red" id="nameDelete"></span>
                </h4>
            </div>
            <div class="modal-footer">
                <form action="/product?action=delete" method="post">
                    <input type="hidden" name="idDelete" id="idDelete">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Không</button>
                    <button type="submit" class="btn btn-primary">Có</button>
                </form>
            </div>
        </div>
    </div>
</div>
<%--<c:if test="${AddProduct !=null}">--%>
<%--    <div id="toastMessage" class="toast"></div>--%>
<%--</c:if>--%>
<c:if test="${EditProduct !=null}">
    <div id="toastMessage" class="toast"></div>
</c:if>
<%--<c:if test="${DeleteProduct !=null}">--%>
<%--    <div id="toastMessage" class="toast"></div>--%>
<%--</c:if>--%>
<c:if test="${massage !=null}">
    <div id="toastMessage" class="toast"></div>
</c:if>
<script>
    function showToast(message) {
        var toast = document.getElementById("toastMessage");
        toast.style.display = "block";
        toast.innerText = message;
        setTimeout(function () {
            toast.style.display = "none";
        }, 3000); // Hide the toast message after 3 seconds
    }

    window.addEventListener('load', function () {
            showToast("${massage}")
    });
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function () {
        $('#table').dataTable({
            "dom": 'lrtp',
            "lengthChange": false,
            "pageLength": 5,
            "scrollY": true,
        });
    });
</script>
<script>
    function remove(ma_xe, ten_xe) {
        document.getElementById("nameDelete").innerText = ten_xe;
        document.getElementById("idDelete").value = ma_xe;
    }

    function searchId(id) {
        console.log(id)
        document.getElementById("id").value = id;
    }
</script>
</body>
</html>
