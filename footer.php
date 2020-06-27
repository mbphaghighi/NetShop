<?php
$option=Model::getoption();

?>

<footer>
    <div class="footer_top">
        <div class="main">
            <span>24 ساعته و همه جا در کنار شما هستیم.</span>
            <ul>
                <li>
                    <a>
                       <?= $option['tel'];?>
                        <i style="background-position:-397px -421px;"></i>
                    </a>
                </li>
                <li>
                    <a>
                        سوالات متداول
                        <i style="background-position:-358px -421px;"></i>
                    </a>
                </li>
                <li>
                    <a>
                        <?= $option['email'];?>
                        <i style="background-position:-321px -421px;"></i>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <style>

        footer {
            height: 300px;
            width: 100%;
            float: right;
            margin-top: 40px;
        }

        .footer_top {
            height: 45px;
            background: #6d717a;
        }

        .footer_bottom {
            height: 255px;
            background: #f7f8fa;
        }

        footer .main {
            width: 1200px;
            height: 100%;
            margin: auto;
        }

        .main >span {
            font-family: yekan;
            font-size: 11pt;
            color: #fff;
            position: relative;
            top:8px;
        }

        .main i {
            display: inline-block;
            width: 17px;
            height: 17px;
            background: url(public/images/slices.png) no-repeat;
            float: left;
            margin-top: 10px;
            margin-right: 8px;
        }

        .main ul {
            padding: 0;
            float: left;
            height: 100%;
        }

        .main ul li {
            float: right;
            height: 100%;
            margin-left: 30px;
        }

        .main ul li a {
            color: white;
            line-height: 40px;
            float: right;
            font-family: yekan;
        }


    .footer_bottom .right {
            width: 220px;
            height: 100%;
            float: right;
        }

        .footer_bottom .center {
            width: 220px;
            height: 100%;
            float: right;
            margin-right: 70px;
        }

        .footer_bottom .left {
            width: 590px;
            height: 100%;
            float: left;
        }

        .footer_bottom p {
            font-family: yekan;
            font-size: 12pt;
            font-weight: bold;
            float: right;
            width: 100%;
        }

        .footer_bottom ul {
            padding: 0;
        }

        .footer_bottom ul li {
            height: 40px;
            width: 100%;
        }

        .main ul li a {
            font-family: yekan;
            font-size: 9pt;
            color: #000;
            width: 100%;
            cursor: pointer;
        }

        .left input {
            width: 400px;
            height: 30px;
            float: right;
            border-radius: 4px;
            font-family: yekan;
            font-size: 9pt;
        }

        #emmail {
            width: 100px;
            height: 33px;
            background: blue;
            color: white;
            font-family: yekan;
            font-size: 10pt;
            float: right;
            margin-right: 4px;
            border-radius: 4px;
            text-align: center;
            cursor: pointer;
            line-height: 35px;
        }

        .left img {
            float: left;
            margin-top: 40px;
            margin-right: 10px;
        }

        #social span {
            background: url(public/images/slices.png) no-repeat;
            width: 28px;
            height: 28px;
            display: block;
            float: right;
            margin-top: 50px;
            margin-right: 8px;
        }
    </style>
    <div class="footer_bottom">
        <div class="main">
            <div class="right">
                <ul>
                    <p>راهنمای خرید از دیجی کالا</p>
                    <li>
                        <a>ثبت سفارش</a>
                    </li>
                    <li>
                        <a>رویه های ارسال سفارش</a>
                    </li>
                    <li>
                        <a>شیوه های پرداخت</a>
                    </li>
                    <li>
                        <a>معرفی دیجی بن</a>
                    </li>
                </ul>
            </div>
            <div class="center">
                <ul>
                    <p>خدمات مشتریان</p>
                    <li>
                        <a>پاسخ به پرسش های متداول</a>
                    </li>
                    <li>
                        <a>رویه های بازگرداندن کالا</a>
                    </li>
                    <li>
                        <a>شرایط استفاده</a>
                    </li>
                    <li>
                        <a>حریم خصوصی</a>
                    </li>
                </ul>
            </div>
            <div class="left">
                <p>اولین نفری که مطلع می شود باشید!</p>
                <input type="text" placeholder="آدرس ایمیل خود را وارد کنید">
                <span id="emmail">تایید ایمیل</span>
                <div id='social' style="width:509px; height:48px;">
                    <a><img src="public/images/android_app_bg.png" style="cursor: pointer;"></a>
                    <a><img src="public/images/ios_app_bg.png" style="cursor: pointer;"></a>
                    <span style="background-position: -577px -621px;"></span>
                    <span style="background-position: -453px -621px;"></span>
                    <span style="background-position: -494px -621px;"></span>
                </div>


            </div>

        </div>


    </div>
</footer>
</body>
</html>