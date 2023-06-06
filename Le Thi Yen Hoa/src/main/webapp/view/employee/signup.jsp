<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 05-06-2023
  Time: 10:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:700,300">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <style>
        html, body, div, span, applet, object, iframe,
        h1, h2, h3, h4, h5, h6, p, blockquote, pre,
        a, abbr, acronym, address, big, cite, code,
        del, dfn, em, img, ins, kbd, q, s, samp,
        small, strike, strong, sub, sup, tt, var,
        b, u, i, center,
        dl, dt, dd, ol, ul, li,
        fieldset, form, label, legend,
        table, caption, tbody, tfoot, thead, tr, th, td,
        article, aside, canvas, details, embed,
        figure, figcaption, footer, header, hgroup,
        menu, nav, output, ruby, section, summary,
        time, mark, audio, video {
            margin: 0;
            padding: 0;
            border: 0;
            font: inherit;
            font-size: 100%;
            vertical-align: baseline;
        }

        body {
            position: relative;
            height: 100vh;
            margin-right: 300px;
        }

        html {
            line-height: 1;
        }

        ol, ul {
            list-style: none;
        }

        table {
            border-collapse: collapse;
            border-spacing: 0;
        }

        caption, th, td {
            text-align: left;
            font-weight: normal;
            vertical-align: middle;
        }

        q, blockquote {
            quotes: none;
        }

        q:before, q:after, blockquote:before, blockquote:after {
            content: "";
            content: none;
        }

        a img {
            border: none;
        }

        article, aside, details, figcaption, figure, footer, header, hgroup, main, menu, nav, section, summary {
            display: block;
        }

        body {
            font-family: "Open Sans", sans-serif;
            font-size: 16px;
            text-align: center;
            color: #444;
            background: #eae5ef;
        }

        header {
            margin-bottom: 2em;
        }

        h1 {
            font-size: 2em;
            margin: 2em 0 1em;
        }

        strong {
            font-weight: 700;
        }

        p {
            line-height: 1.4em;
        }

        article header {
            margin: 0;
        }

        .full-height {
            height: 26em;
            align-items: center;
        }

        .flexy-item {
            display: flex;
            flex-direction: row;
            justify-content: center;
            position: relative;
        }

        .flexy-column {
            flex-direction: column;
        }

        .flexy-column.reverse {
            flex-direction: column-reverse;
        }

        .flexy-item_child {
            flex: 1 0 100%;
        }

        .pure-steps {
            display: inline-block;
            width: 20em;
            color: white;
            margin-bottom: 3em;
        }

        .pure-steps strong {
            color: #ffffff;
            font-weight: 300;
        }

        .pure-steps .pure-steps_group {
            position: relative;
            margin-top: 50px;
            align-items: center;
            min-height: 45em;
            min-width: 40em;
            border-radius: .4em;
            overflow: hidden;
            box-shadow: 0 1.7em 5.5em -0.94em rgba(0, 0, 0, 0.3), 0 2em 3em 0.5em rgba(0, 0, 0, 0.1), 0 1.8em 2em -1.5em rgba(0, 0, 0, 0.2);
            background-image: linear-gradient(-120deg, #000000 0%, #000000 100%, #ff0000 200%);
            background-position: 0 0;
            background-size: 300%;
            will-change: background, box-shadow;
            transition: all 0.3s ease-out;
        }

        .pure-steps .pure-steps_group .pure-steps_group-step {
            position: absolute;
            left: 0;
            top: 0;
            width: 100%;
            transform: translate(100%);
            opacity: 0;
            will-change: transform, opacity;
            transition: all 0.6s ease-in-out;
            text-align: left;
        }

        .pure-steps .pure-steps_group .pure-steps_group-step:last-child {
            text-align: center;
        }

        .pure-steps .pure-steps_group .pure-steps_group-step .pure-steps_group-step_legend {
            font-size: 1.5em;
            font-weight: 700;
            padding: 1.5em 1.34em 1em;
            line-height: 1em;
            position: relative;
        }

        .pure-steps .pure-steps_group .pure-steps_group-step .pure-steps_group-step_item {
            padding: 0 2em 1em;
        }

        .pure-steps .pure-steps_group .pure-steps_group-step .pure-steps_group-step_item label {
            font-size: 1em;
            display: block;
            opacity: .6;
        }

        .pure-steps .pure-steps_group .pure-steps_group-step .pure-steps_group-step_item input {
            font-size: 1em;
            box-sizing: border-box;
            width: 100%;
            border: 0;
            line-height: 1.5em;
            background-color: transparent;
            background-image: linear-gradient(0deg, rgba(0, 0, 0, 0) 0%, #e5e5e5 1px), linear-gradient(0deg, rgba(0, 0, 0, 0) 0%, #70726f 1px);
            background-size: 100% 1px, 0% 1px;
            background-repeat: no-repeat;
            outline: none;
            will-change: background;
            transition: background 0.3s ease-in-out;
            color: white;
            font-family: "Open Sans", sans-serif;
            font-weight: 300;
        }

        .pure-steps .pure-steps_group .pure-steps_group-step .pure-steps_group-step_item input:focus {
            color: white;
            background-size: 0% 1px, 100% 1px;
        }

        .pure-steps .pure-steps_group .pure-steps_group-step .pure-steps_group-step_item input:focus + label {
            opacity: 1;
            color: #2a363f;
        }

        .pure-steps .pure-steps_group .pure-steps_group-step .pure-steps_group-step_item input::-webkit-input-placeholder {
            color: rgba(255, 255, 255, 0.6);
        }

        .pure-steps .pure-steps_group .pure-steps_group-step .pure-steps_group-step_item input:-moz-placeholder {
            /* Firefox 18- */
            color: rgba(255, 255, 255, 0.6);
        }

        .pure-steps .pure-steps_group .pure-steps_group-step .pure-steps_group-step_item input::-moz-placeholder {
            /* Firefox 19+ */
            color: rgba(255, 255, 255, 0.6);
        }

        .pure-steps .pure-steps_group .pure-steps_group-step .pure-steps_group-step_item input:-ms-input-placeholder {
            color: rgba(255, 255, 255, 0.6);
        }

        .pure-steps .pure-steps_radio {
            display: none;
        }

        .pure-steps .pure-steps_group-triggers {
            position: absolute;
            left: 0;
            bottom: 0;
            width: 100%;
            height: 3.6em;
            border-radius: 0 0 .4em .4em;
            background-color: rgba(0, 0, 0, 0.1);
            will-change: opacity;
            transition: opacity 0.3s ease-in-out;
        }

        .pure-steps .pure-steps_group-triggers:before {
            content: '';
            display: inline-block;
            position: absolute;
            left: 0;
            width: 0%;
            height: .1em;
            background: rgb(255, 255, 255);
            will-change: width;
            transition: width 0.6s ease-in-out;
        }

        .pure-steps .pure-steps_group-triggers .pure-steps_group-triggers_item {
            display: none;
        }

        .pure-steps .pure-steps_group-triggers .pure-steps_group-triggers_item label {
            display: block;
            padding: 1.2em;
            color: white;
        }

        .pure-steps .pure-steps_radio:nth-child(1):checked ~ .pure-steps_group {
            background-position: 25% 0;
        }

        .pure-steps .pure-steps_radio:nth-child(1):checked ~ .pure-steps_group .pure-steps_group-triggers:before {
            width: 33.333%;
        }

        .pure-steps .pure-steps_radio:nth-child(1):checked ~ .pure-steps_group .pure-steps_group-triggers .pure-steps_group-triggers_item:nth-child(2) {
            display: block;
        }

        .pure-steps .pure-steps_radio:nth-child(1):checked ~ .pure-steps_group .pure-steps_group-step:nth-child(1) {
            opacity: 1;
            transform: translate(0);
        }

        .pure-steps .pure-steps_radio:nth-child(2):checked ~ .pure-steps_group {
            background-position: 50% 0;
        }

        .pure-steps .pure-steps_radio:nth-child(2):checked ~ .pure-steps_group .pure-steps_group-triggers:before {
            width: 66.666%;
        }

        .pure-steps .pure-steps_radio:nth-child(2):checked ~ .pure-steps_group .pure-steps_group-triggers .pure-steps_group-triggers_item:nth-child(3) {
            display: block;
        }

        .pure-steps .pure-steps_radio:nth-child(2):checked ~ .pure-steps_group .pure-steps_group-step:nth-child(2) {
            opacity: 1;
            transform: translate(0);
        }

        .pure-steps .pure-steps_radio:nth-child(3):checked ~ .pure-steps_group {
            background-position: 75% 0;
        }

        .pure-steps .pure-steps_radio:nth-child(3):checked ~ .pure-steps_group .pure-steps_group-triggers {
            opacity: 0;
            transition-delay: 0.6s;
        }

        .pure-steps .pure-steps_radio:nth-child(3):checked ~ .pure-steps_group .pure-steps_group-step {
            align-items: center;
            height: 100%;
        }

        .pure-steps .pure-steps_radio:nth-child(3):checked ~ .pure-steps_group .pure-steps_group-step .pure-steps_preload {
            display: block;
            height: .1em;
            width: 100%;
            box-sizing: border-box;
            margin: 0 2em;
            background-image: linear-gradient(0deg, rgba(255, 59, 153, 0.4) 0%, rgba(255, 157, 0, 0.4) 50%, rgba(178, 255, 65, 0.4) 100%);
            background-size: 0 10em;
            background-position: top center;
            background-repeat: no-repeat;
            will-change: background-image;
            transition: background-image 3s linear;
            -webkit-animation: preloadLine 3s ease-out forwards;
            animation: preloadLine 3s ease-out forwards;
        }

        .pure-steps .pure-steps_radio:nth-child(3):checked ~ .pure-steps_group .pure-steps_group-step .pure-steps_preload svg {
            font-size: 1.2em;
            width: auto;
            height: 1em;
            padding: 1em;
            border-radius: 2em;
            background-color: #6c736d;
            fill: white;
            margin-top: -1.5em;
            transform: scale(0);
            -webkit-animation: preloadTic .8s linear forwards;
            animation: preloadTic .8s linear forwards;
            -webkit-animation-delay: 3s;
            animation-delay: 3s;
        }

        .pure-steps .pure-steps_radio:nth-child(3):checked ~ .pure-steps_group .pure-steps_group-triggers:before {
            width: 99.999%;
        }

        .pure-steps .pure-steps_radio:nth-child(3):checked ~ .pure-steps_group .pure-steps_group-triggers .pure-steps_group-triggers_item:nth-child(4) {
            display: block;
        }

        .pure-steps .pure-steps_radio:nth-child(3):checked ~ .pure-steps_group .pure-steps_group-step:nth-child(3) {
            opacity: 1;
            transform: translate(0);
        }

        @-webkit-keyframes preloadLine {
            0% {
                background-position: bottom center;
                background-size: 0 10em;
            }
            100% {
                background-position: top center;
                background-size: 100% 10em;
            }
        }

        @keyframes preloadLine {
            0% {
                background-position: bottom center;
                background-size: 0 10em;
            }
            100% {
                background-position: top center;
                background-size: 100% 10em;
            }
        }

        @-webkit-keyframes preloadTic {
            0% {
                transform: scale(0);
            }
            20% {
                transform: scale(0.2);
                -webkit-animation-timing-function: ease-out;
                animation-timing-function: ease-out;
            }
            50% {
                transform: scale(1.3);
                -webkit-animation-timing-function: ease-in;
                animation-timing-function: ease-in;
            }
            65% {
                transform: scale(0.9);
                -webkit-animation-timing-function: ease-out;
                animation-timing-function: ease-out;
            }
            80%,
            100% {
                transform: scale(1);
            }
        }

        @keyframes preloadTic {
            0% {
                transform: scale(0);
            }
            20% {
                transform: scale(0.2);
                -webkit-animation-timing-function: ease-out;
                animation-timing-function: ease-out;
            }
            50% {
                transform: scale(1.3);
                -webkit-animation-timing-function: ease-in;
                animation-timing-function: ease-in;
            }
            65% {
                transform: scale(0.9);
                -webkit-animation-timing-function: ease-out;
                animation-timing-function: ease-out;
            }
            80%,
            100% {
                transform: scale(1);
            }
        }

    </style>
</head>
<body>
<section>
    <article>
        <form class="pure-steps" action="/employee?action=add" method="post">
            <input type="radio" name="steps" class="pure-steps_radio" id="step-0" checked="">
            <input type="radio" name="steps" class="pure-steps_radio" id="step-1">
            <input type="radio" name="steps" class="pure-steps_radio" id="step-2">
            <div class="pure-steps_group">
                <ol>
                    <li class="pure-steps_group-step">
                        <header>
                            <h1 class="pure-steps_group-step_legend">Welcome to VH3</h1>
                            <p class="pure-steps_group-step_item"><strong>"Sign up here"</strong></p>
                        </header>
                    </li>
                    <li class="pure-steps_group-step">
                        <fieldset>
                            <legend class="pure-steps_group-step_legend">ĐĂNG KÝ THÔNG TIN <span
                                    style="padding-left: 10px"><i class="fa-regular fa-pen-to-square"></i></span>
                            </legend>
                            <p class="pure-steps_group-step_item flexy-item flexy-column reverse">
                                <label><input type="text" placeholder="Nguyễn Văn A" name="name" id="input_name"></label>
                                <label for="input_name">Họ và tên</label>
                            </p>
                            <p class="pure-steps_group-step_item flexy-item flexy-column reverse">
                                <label><input type="date" placeholder="dd/mm/yyyy" name="dayOfBirth" id="input_dayOfBirth"></label>
                                <label for="input_dayOfBirth">Ngày sinh</label>
                            </p>
                            <p class="pure-steps_group-step_item flexy-item  reverse" >
                                <span ><label>Giới tính</label></span>
                                <span style="margin-left: 110px;margin-right: 50px" ><label><input type="radio" value="Nam" name="gender">Nam</label></span>
                                <span style="margin-right: 250px"><label><input type="radio" value="Nữ" name="gender">Nữ</label></span>
                            </p>


                            <p class="pure-steps_group-step_item flexy-item flexy-column reverse">
                                <label><input type="text" placeholder=" CCCD" name="citizenId" id="input_cccd"></label>
                                <label for="input_cccd">CCCD</label>
                            </p>
                            <p class="pure-steps_group-step_item flexy-item flexy-column reverse">
                                <label><input type="text" placeholder="(+84)-0xxxxxxxxx" name="phone" id="input_phone"></label>
                                <label for="input_phone">Số điện thoại</label>
                            </p>
                            <p class="pure-steps_group-step_item flexy-item flexy-column reverse">
                                <label><input type="text" placeholder="Số nhà,đường,phường,quận/huyện,tỉnh/thành phố" name="address" id="input_address"></label>
                                <label for="input_address">Địa chỉ</label>
                            </p>
                            <p class="pure-steps_group-step_item flexy-item flexy-column reverse">
                                <label><input type="text" placeholder="example@gmail.com" name="email" id="input_email"></label>
                                <label for="input_email">Email</label>
                            </p>
                            <p class="pure-steps_group-step_item flexy-item flexy-column reverse">
                                <label><input type="text" placeholder="abc123" name="account" id="input_account"></label>
                                <label for="input_account">Tên tài khoản</label>
                            </p>
                            <p class="pure-steps_group-step_item flexy-item flexy-column reverse">
                                <label><input type="password" placeholder="**********" name="password" id="input_password"></label>
                                <label for="input_password">Password</label>
                            </p>
                        </fieldset>
                    </li>
                    <li class="pure-steps_group-step flexy-item">
                        <div class="pure-steps_preload">
                            <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
                                 xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 32 32"
                                 style="enable-background:new 0 0 32 32;" xml:space="preserve">
                <path d="M31.8,3.6c-0.2-0.5-0.4-0.9-0.9-1.2C30.4,2,29.7,1.8,29,1.9c-0.6,0.1-1.2,0.4-1.6,1l-8.5,11.2l0,0l-7.2,9.5l-7.1-9.4 c-0.5-0.7-1.3-1-2.1-1c-0.5,0-1,0.2-1.4,0.5c-0.5,0.4-0.9,1-1,1.7s0.1,1.2,0.5,1.8l9.1,12.1l0,0c0.1,0.2,0.3,0.3,0.4,0.4 c0.4,0.3,0.9,0.5,1.4,0.5c0.8,0,1.6-0.3,2.1-1L22.1,18l0,0l9.1-12.1C32,5.2,32.1,4.4,31.8,3.6z"></path>
              </svg>
                        </div>
                    </li>
                </ol>
                <ol class="pure-steps_group-triggers">
                    <li class="pure-steps_group-triggers_item">
                        <label for="step-0">Restart</label>
                    </li>
                    <li class="pure-steps_group-triggers_item">
                        <label for="step-1">Sign Up</label>
                    </li>
                    <li class="pure-steps_group-triggers_item">
                        <label for="step-2"><input style="background-color: black" type="submit" value="Jump in"></label>
                    </li>
                </ol>
            </div>
            <br>
            <label for="step-0" style="padding-left: 290px">Restart</label>
        </form>
    </article>
</section>
</body>
</html>