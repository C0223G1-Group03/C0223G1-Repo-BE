<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/7/2023
  Time: 9:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
        body_1 {
            margin: 0;
            padding: 0;
            background: #19161c;
            height: 100vh;
            display: flex;
            /*justify-content: space-evenly;*/
            align-items: center;
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

    </style>

</head>
<jsp:include page="/view/main_menu/nav_bar_admin_show.jsp"></jsp:include>

<body_1>
<table class="table table-dark table-hover container">
    <thead>
    <tr style="text-align: center">
        <th class="col-1" scope="col">Mã Order</th>
        <th class="col-2" scope="col">Ngày làm order</th>
        <th class="col-1" scope="col">Số lượng xe</th>
        <th class="col-1" scope="col">Mã xe </th>
        <th class="col-1" scope="col">Tên xe</th>
        <th class="col-1" scope="col">Gia</th>
        <th class="col-1" scope="col">Mã khách hàng</th>
        <th class="col-1" scope="col">Tên khách hàng</th>
        <th class="col-3" scope="col">
            <a href="/order?action=showFormAddOrder">
                <span style="color: white;border-radius: 100%"><i class="fa-solid fa-file-circle-plus"></i></span></a>
        </th>
    </tr>
    </thead>
    <tbody style="text-align: center ;color: white">
    <c:forEach items="${orderList}" var="o">
        <tr>
            <th class="col-1" scope="row"><c:out value="${o.ma_order}"/></th>
            <td class="col-2"><c:out value="${o.ngay_lam_order}"/></td>
            <td class="col-1"><c:out value="${o.so_luong_xe}"/></td>
            <td class="col-1"><c:out value="${o.product.ma_xe}"/></td>
            <td class="col-1"><c:out value="${o.product.ten_xe}"/></td>
            <td class="col-1">
                <fmt:formatNumber type="number" maxFractionDigits="3" value="${o.product.gia}"/>
            </td>
            <td class="col-1"><c:out value="${o.customer.id}"/></td>
            <td class="col-1"><c:out value="${o.customer.name}"/></td>
            <td class="col-3">
                <a href="/order?action=showDetailOrder&id=${o.ma_order}">
                    <button class="btn btn-outline-light col-6" type="button" style="width: 40px"><span>
                        <i class="fa-regular fa-rectangle-list"></i></span></button>
                </a>
                <button onclick="remove(${o.ma_order},'${o.ngay_lam_order}')" class="btn btn-outline-light col-6" type="button"
                        style="width: 40px" data-bs-toggle="modal" data-bs-target="#modelId"><span
                        style="color: red;width: 10px"><i
                        class="fa-solid fa-trash-can"></i></span></button>
                <a href="/send">
                    <button class="btn btn-outline-light col-6" type="button" style="width: 40px"><span>
                        <i class="fa-solid fa-file-signature"></i></span></button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<script>
    function remove(id, name) {
        console.log(id, name)
        document.getElementById("isDelete").value = id;
        document.getElementById("ngay_lam_order").innerText = name;
    }

    function searchId(id){
        console.log(id)
        document.getElementById("id").value=id;
    }
</script>

<!-- Modal -->
<div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="modelTitleId"></h4>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h3>Do you want to delete <span id="ngay_lam_order"></span> ?</h3>
            </div>
            <div class="modal-footer">
                <form action="/order?action=delete" method="post">
                    <input type="hidden" id="isDelete" name="isDelete">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                    <button type="submit" class="btn btn-primary">Yes</button>
                </form>
            </div>
        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body_1>
</html>
