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
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            font-size: 100px;
            text-align: center;
        }
    </style>
</head>
<body>
<%--<jsp:include page="nav_bar_giao_dien.jsp"></jsp:include>--%>
<jsp:include page="nav_bar_admin_show.jsp"></jsp:include>
<div  id="toastMessage" class="toast" style="background-color: dodgerblue;font-size: 20px;border-radius: 50px;text-align: center"></div>
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
        showToast("${dangnhap}");
    });
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
