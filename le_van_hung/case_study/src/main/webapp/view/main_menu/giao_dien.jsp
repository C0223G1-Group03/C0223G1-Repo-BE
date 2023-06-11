<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 31/05/2023
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mercedes-Benz</title>
    <style>
        .dropdown-menu:hover {

        }

        .dropdown-item {
            color: white;
        }

        .menu ul li a i {
            color: white;
            font-size: 18px;
        }

        marquee {
            color: white;
            font-family: VnCooper;
        }

        body {
            font-family: Courier New;
            background-color: black;
        }

        .bg {
            /* The image used */
            background: linear-gradient(to top, black, transparent 50%), linear-gradient(to right, black, transparent 50%), url("https://www.danang.andu.mercedes-benz.com.vn/content/retail/vietnam/XY03662539/vi/passengercars/find-and-buy/brouchue-va-bang-gia/_jcr_content/root/responsivegrid/simple_stage.component.damq5.3317822648704.jpg/mercedes-eq-eqs-v2");
            /* Full height */
            height: 100vh;
            /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            z-index: 100;
            position: relative;
        }

        .bg::after {
            z-index: 1;
            content: "";
        / /:: before and:: after both require content position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: linear-gradient(120deg, #eaee44, #33d0ff);
            opacity: .7;
        }

        #myBtn {
            display: block;
            position: fixed;
            bottom: 10px;
            right: 43px;
            z-index: 999999;
            font-size: 18px;
            border: none;
            outline: none;
            background-color: black;
            color: white;
            cursor: pointer;
            padding: 15px;
            border-radius: 4px;
        }

        #myBtn:hover {
            background-color: #555;
        }

        .menu ul a {
            color: white
        }

        p a {
            color: #FFF; /*white*/
            text-decoration: none;
        }

        ul li {
            color: black;
        }

        .row {
            /*--bs-gutter-x: 1.5rem; */
            --bs-gutter-y: 0;
            display: flex;
            flex-wrap: wrap;
            margin-top: calc(-1 * var(--bs-gutter-y));
            margin-right: 0px;
            margin-left: 0px;
            padding-left: 0px;
            padding-right: 0px;
        }

        .dropdown-menu li a {
            color: black;
        }

    </style>

    <link rel="stylesheet" href="../../bootstrap-5.1.3-dist/bootstrap-5.1.3-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <link rel="stylesheet" href="(../../bootstrap-5.1.3-dist/bootstrap-5.1.3-dist/css/bootstrap.min.css))">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <link href="/RetailSmart/Jquery/jquery.multiselect.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<div style="background-color: black; display: flex">
    <div class="col-2">
        <img src="/view/image/hinh_anh_logo_nhom.png" height="150px" width="100%">
    </div>
    <div class="col-8" style="font-size: 50px; padding-top:  40px; ">
        <marquee class="menu"> VH3 Automobile Store Online</marquee>
    </div>
    <div class="col-2">
        <img src="/view/image/mecccc.png" width="150px" ; style="padding-left: 70px; padding-top: 35px"/>
    </div>
</div>
<jsp:include page="nav_bar_giao_dien.jsp"></jsp:include>
<div class="bg">
</div>
<div class="row"
     style="color: white; background-color: black; padding-top: 200px;width: 100%; height: 1000px; margin: 0px">
    <h2 style="padding-top: 150px">Tìm Hiểu Thêm</h2>
    <div class="col-4">
        <br>
        <div class="card" style="width: 100%;height:500px;; color: black">
            <img src="https://images.drive.com.au/driveau/image/upload/c_fill,f_auto,g_auto,h_675,q_auto:eco,w_1200/v1/cms/uploads/jrb4ysxfzzbr0udce9kj"
                 c...lass="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">GLC của bạn đã sẵn sàng</h5>
                <p class="card-text">Tận hưởng ưu đãi 100% lệ phí trước bạ từ Nhà Phân Phối chính hãng.</p>
                <a href="#" class="btn btn-primary">Chọn Xe Có Sẵn Cùng Ưu Đãi</a>
            </div>
        </div>
    </div>
    <div class="col-4" >
        <br>
        <div class="card" style="width: 100%;height:500px; color: black">
            <img src="https://cdn.dailyxe.com.vn/image/lan-truyen-tin-don-mercedes-benz-c300-amg-2022-sap-ve-viet-nam-gia-chenh-lech-gan-200-trieu-dong(1)-235609j.jpg"
                 c...lass="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Ưu đãi tháng 6 - Thời điểm hoàn hảo để sở hữu C-Class</h5>
                <p class="card-text">Nhận ngay quà tặng 50% lệ phí trước bạ khi mua C-Class, duy nhất trong tháng 5.</p>
                <a href="#" class="btn btn-primary">Mua Xe Có Sẵn Cùng Ưu Đãi</a>
            </div>
        </div>
    </div>
    <div class="col-4">
        <br>
        <div class="card" style="width: 100%;height:500px;color: black">
            <img src="https://mercedes-center.com.vn/gw-content/images/gia-lan-banh-mercedes-benz-eclass-RhqvK.jpg"
                 c...lass="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Sở hữu E-Class cùng ưu đãi tháng 6</h5>
                <p class="card-text">Duy nhất tháng 5 - Dẫn đầu xu thế năng động cùng ưu đãi 50% lệ phí trước bạ.</p>
                <a href="#" class="btn btn-primary">Chọn Xe Có Sẵn Cùng Ưu Đãi</a>
            </div>
        </div>
    </div>
</div>
</div>
<div style="padding-top: 100px">
    <div>
        <h2>Các loại Xe bán chạy nhất</h2>
    </div>
</div>
<div class="row"
     style="color: white; background-color: white; padding-top: 50px;width: 100%;">
    <div class="col-4">
        <br>
        <div class="card" style="width: 100%; color: black;">
            <img src="https://images.drive.com.au/driveau/image/upload/c_fill,f_auto,g_auto,h_675,q_auto:eco,w_1200/v1/cms/uploads/jrb4ysxfzzbr0udce9kj"
                 c...lass="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Mercedes-benz GLC 2023</h5>
                <p>2.299.000.000VND</p>
            </div>
        </div>
    </div>
    <div class="col-4">
        <br>
        <div class="card" style="width: 100%; color: black">
            <img src="https://cdn.dailyxe.com.vn/image/lan-truyen-tin-don-mercedes-benz-c300-amg-2022-sap-ve-viet-nam-gia-chenh-lech-gan-200-trieu-dong(1)-235609j.jpg"
                 c...lass="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Mercedes-AMG C300</h5>
                <p>2.199.000.000VND</p>
            </div>
        </div>
    </div>
    <div class="col-4">
        <br>
        <div class="card" style="width: 100%;color: black;">
            <img src="https://media.autoexpress.co.uk/image/private/s--X-WVjvBW--/f_auto,t_content-image-full-desktop@1/v1620898674/autoexpress/2021/05/Mercedes%20S-Class%202021%20UK-18.jpg"
                 c...lass="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Mercedes S-class 450</h5>
                <p>6.118.237.000VND</p>
            </div>
        </div>
    </div>
</div>
<div style="padding-top: 50px">
    <div>
        <h2>Các loại Xe Hot nhất tháng 6</h2>
    </div>
</div>
<div class="row"
     style="color: white; background-color: white; padding-top: 50px;width: 100%">
    <div class="col-4">
        <br>
        <div class="card" style="width: 100%; color: black;">
            <img src="https://sieuthiotoonline.com.vn/wp-content/uploads/2022/05/dong-xe-mercedes.jpeg"
                 c...lass="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Mercedes benz C-Class</h5>
                <p>2.199.000.000VND</p>
            </div>
        </div>
    </div>
    <div class="col-4">
        <br>
        <div class="card" style="width: 100%; color: black">
            <img src="https://sieuthiotoonline.com.vn/wp-content/uploads/2022/05/dong-xe-mercedes-1.jpg"
                 c...lass="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Mercedes Benz E-Class</h5>
                <p>2.159.000.000VND</p>
            </div>
        </div>
    </div>
    <div class="col-4">
        <br>
        <div class="card" style="width: 100%;color: black;">
            <img src="https://sieuthiotoonline.com.vn/wp-content/uploads/2022/05/dong-xe-mercedes-2.jpg"
                 c...lass="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Mercedes S-class</h5>
                <p>6.118.237.000VND</p>
            </div>
        </div>
    </div>
</div>

<div class="row container" style="padding-top: 200px; padding-bottom: 100px">
    <div class="col-4">
        <div class="row" style="border: 1px black solid; margin-left: 50px; padding-top: 10px">
            <span><b><i class="fa-solid fa-steering-wheel"></i>Đăng Ký Lái Thử</b></span>
            <p>Đặt lịch hẹn lái thử tại nhà phân phối</p>
        </div>
        <div class="row" style="border: 1px black solid; margin-top:20px;margin-left: 50px;padding-top: 10px ">
            <b>Công cụ cấu hình xe</b>
            <p>Chọn cấu hình xe bạn mong muốn</p>
        </div>
    </div>
    <div class="col-4">
        <div class="row" style="border: 1px black solid; margin-left: 20px;padding-top: 10px">
            <b>Bảng giá & brochure</b>
            <p>Tải về bảng giá & brochure</p>
        </div>
        <div class="row" style="border: 1px black solid; margin-top:20px;margin-left: 20px;padding-top: 10px">
            <b>Đặt lịch hẹn dịch vụ</b>
            <p>Đặt lịch hẹn dịch vụ tại đại lý</p>
        </div>
    </div>
    <div class="col-4">
        <div class="row" style="border: 1px black solid;margin-left: 20px;padding-top: 10px">
            <b>Tìm xe có sẵn</b>
            <p>Tìm xe có sẵn và nhận báo giá</p>
        </div>
        <div class="row" style="border: 1px black solid ; margin-top:20px;margin-left: 20px;padding-top: 10px">
            <b>Liên hệ</b>
            <p>Yêu cầu tư vấn</p>
        </div>
    </div>
</div>
<div class="row container-fluid " style="background-color: dodgerblue;font-size: 20px;border-radius: 50px">
    <div class="row container-fluid"
         style="border: 1px white solid; color: white; margin-bottom: 50px ;margin-left: 10px; padding-top: 20px;padding-bottom: 20px">
        <h5>Giữ liên lạc với chúng tôi</h5>
        <b>Mọi thắc mắc của Qúy Khách xin vui lòng liên hệ qua Hotline : 0123456789
            & 9876543210</b>
    </div>
    <hr style="color: white">
    <div class="container" style="color: white;padding-left: 100px; display: flex; padding-bottom: 100px">
        <div class="col-2 menu">
            <h5>Mua Xe</h5>
            <p><a href="#"> Xe đã qua sử dụng</a></p>
            <p><a href="#"> Xe mới</a></p>
            <p><a href="#"> Chọn cấu hình xe</a></p>
            <p><a href="#"> Bảng giá & brochure</a></p>
        </div>
        <div class="col-2">
            <h5>Tư vấn mua xe</h5>
            <p><a href="#">Yêu cầu tư vấn</a></p>
            <p><a href="#"> Đăng ký lái thử</a></p>
            <p><a href="#"> Tìm Nhà Phân Phối gần nhất</a></p>
        </div>
        <div class="col-2">
            <h5>Dịch vụ</h5>
            <p><a href="#"> Đặt hẹn dịch vụ</a></p>
            <p><a href="#"> Ưu đãi đặc biệt</a></p>
            <p><a href="#"> Phụ kiện chính hãng</a></p>
            <p><a href="#"> Triệu hồi xe</a></p>
        </div>
        <div class="col-2">
            <h5>Các Dòng Xe</h5>
            <p><a href="#"> SUV</a></p>
            <p><a href="#"> Sedan</a></p>
            <p><a href="#"> Mercedes-AMG</a></p>
            <p><a href="#"> Mercedes-Maybach</a></p>
        </div>

        <div class="col-2">
            <h5>Giới thiệu</h5>
            <p><a href="#"> Liên hệ</a></p>
            <p><a href="#"> Câu chuyện của chúng tôi</a></p>
            <p><a href="#"> Phát triển bền vững & tương lai</a></p>
            <p><a href="#"> Tin tức & sự kiện</a></p>
        </div>
    </div>
</div>
<script>
    window.onscroll = function () {
        scrollFunction()
    };

    function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            document.getElementById("myBtn").style.display = "block";
        } else {
            document.getElementById("myBtn").style.display = "none";
        }
    }

    function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    }
</script>
</head>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
