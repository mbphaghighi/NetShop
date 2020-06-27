
    <script src="public/js/jquery.elevatezoom.js"></script>
    <script src="public/js/scroll/jquery.mCustomScrollbar.js"></script>
    <script src="public/js/scroll/jquery.mousewheel.js"></script>
    <link href="public/js/scroll/jquery.mCustomScrollbar.css" rel="stylesheet">
    <script src="public/3d/jsc3d.js"></script>
    <script src="public/3d/jsc3d.touch.js"></script>
    <script src="public/3d/jsc3d.webgl.js"></script>

<style>
    #main::after {
        content: '';
        clear: both;
        display: block;

    }

    #offer {
        height: 60px;
        background: #fff5f5 url(public/images/amazing-offer.png) no-repeat 97% center;
        position: relative;
    }

    .flipTimer {
        position: absolute;
        transform: scale(0.3);
        top: -19px;
        left: -161px;
    }

    .flipTimer, .flipTimer div {
        direction: ltr !important;
    }

    .discount {
        width: 180px;
        height: 30px;
        display: inline-block;
        position: absolute;
        left: 200px;
        top: 16px;
        border-radius: 3px;
        overflow: hidden;
    }

    .discount .right {
        width: 105px;
        height: 100%;
        display: block;
        float: right;
        background: red;
        text-align: center;
        line-height: 25px;
    }

    .discount .left {
        width: 75px;
        height: 100%;
        display: block;
        float: right;
        background: #e54949;
        font-family: farsifont;
        font-size: 14pt;
        color: #FFFFFF;
        text-align: center;
        line-height: 25px;
    }

    .right .num {
        font-size: 13pt;
        font-family: farsifont;
        color: #FFFFFF;
    }

    .right .tomun {
        font-size: 12pt;
        font-family: farsifont;
        color: #FFFFFF;
        margin-right: 4px;
    }

    #details {
        background: #FFFFFF;
        box-shadow: 0 1px 3px #eee;
        width: 100%;
        float: right;
    }

    #details .share {
        float: left;
        padding: 20px 0;
    }

    #details .right {
        width: 450px;
        float: right;
    }

    #details .left {
        width: 700px;
        float: left;
        padding: 8px 0;
    }

    #details .right i {
        width: 20px;
        height: 20px;
        display: block;
        background: url(public/images/slices.png);
        float: left;
    }

    .galleris {
        float: right;
        width: 435px;
    }

    .galleris ul {
        float: right;
        width: 100%;
        padding: 0;
        margin-top: 20px;
    }

    .galleris ul li {
        float: left;
        width: 80px;
        height: 70px;
        border: 1px solid #cccccc;
        margin-right: 5px;
        text-align: center;
        padding-top: 10px;
        cursor: pointer;
    }

    .senoghteh {
        width: 30px;
        height: 20px;
        display: block;
        background: url(public/images/slices.png) no-repeat -562px -28px;
        margin-top: 20px;
        margin-right: 25px;
    }

    #details .left .title {
        background: #cccccc;
        border-radius: 2px;
        padding: 8px;
        font-size: 14pt;
        font-family: farsifont;
        margin-right: 8px;
    }

    .stars {
        float: left;
        margin-top: 15px;
        margin-left: 5px;

    }

    .stars .grey {
        width: 55px;
        height: 9px;
        background: url(public/images/stars.png) repeat 0 -9px;
        text-align: center;
        margin: 0 auto;
        position: relative;
    }

    .stars .red {
        width: 70%;
        height: 9px;
        background: url(public/images/stars.png) repeat 0 0;
        text-align: center;
        position: absolute;
        top: 0;
        left: 0;
    }

    .rating {
        float: left;
        font-family: farsifont;
        font-size: 8pt;
        margin-top: 1px;
    }

    #details .left .right {
        width: 415px;
        float: right
    }

    #details .left .right h4 {
        font-size: 10pt;
        font-family: farsifont;
    }

    #details .left .left {
        width: 300px;
        float: left
    }

    #details .colors {
        padding: 0;
        float: right;
        width: 100%;
        margin-bottom: 25px;
    }

    #details .colors .circle {
        width: 17px;
        height: 17px;
        border-radius: 50%;
        position: absolute;
        top: 5px;
        right: 6px;
        display: block;
        margin-left: 4px;
    }

    #details .colors li {
        width: 53px;
        height: 28px;
        float: right;
        border: 1px solid #ccc;
        background: #eeeeee;
        margin-left: 6px;
        font-family: farsifont;
        font-size: 9pt;
        padding-right: 28px;
        position: relative;
    }

    #details .colors li .circle.active::after {
        content: '';
        width: 10px;
        height: 10px;
        position: absolute;
        top: 5px;
        right: 5px;
        background: url(public/images/slices.png) no-repeat -169px -83px;
        display: block;
    }
</style>
<div id="main" style="width:1200px; margin:5px auto;">

    <div id="offer">
    <span class="discount">
        <span class="right">
            <span class="num">48</span>
            <span class="tomun">هزار تومان</span>
        </span>
        <span class="left">تخفیف</span>
    </span>
        <div class="flipTimer">
            <div class="hours"></div>
            <div class="minutes"></div>
            <div class="seconds"></div>
        </div>
    </div>
    <div id="details">
        <div class="right">
            <div class="share">
                <i class="social" style="background-position: -213px -187px; margin-right: 5px;"></i>
                <i class="addtofav" style="background-position: -160px -187px"></i>
            </div>
            <div class="galleris">
                <img id="zoom_img" src="public/images/product5.jpg" data-zoom-image="public/images/products/1/gallery/large/1472662586.jpg">
                <ul>
                    <li data-image="public/images/products/1/gallery/large/1472662586.jpg"><img src="public/images/product5_1.jpg"></li>
                    <li data-image="public/images/products/1/gallery/large/1472662590.jpg"><img src="public/images/product5_2.jpg"></li>
                    <li><img src="public/images/product5_3.jpg"></li>
                    <li><img src="public/images/product5_4.jpg"></li>
                    <li><span class="senoghteh"></span></li>
                </ul>
            </div>
        </div>
        <div class="left">
            <div class="title" style="width:650px;">گوشی سامسونگ اس 7
                <div class="stars">
                    <div class="grey">
                        <div class="red"></div>
                    </div>
                    <span class="rating">4 از 75 رای</span>

                </div>
            </div>
            <div class="right">
                <h4>انتخاب رنگ</h4>
                <ul class="colors">

                    <li>
                        <span class="circle" style="background: black"></span>
                        مشکی
                    </li>
                    <li>
                        <span class="circle" style="background: white"></span>
                        سفید
                    </li>
                </ul>
                <h4>انتخاب گارانتی</h4>
                <style>
                    #selectlist {
                        width: 390px;
                        height: 37px;
                        border: 1px solid #ccc;
                        background: #eeeeee;
                        position: relative;
                        text-align: center;
                        cursor: pointer;
                    }

                    #selectlist::before {
                        content: '';
                        width: 23px;
                        height: 23px;
                        display: block;
                        position: absolute;
                        background: url(public/images/slices.png) no-repeat -138px -79px;
                        right: 3px;
                        top: 8px;
                    }

                    #selectlist::after {
                        content: '';
                        width: 22px;
                        height: 17px;
                        display: block;
                        position: absolute;
                        background: url(public/images/slices.png) no-repeat -31px -461px;
                        left: 3px;
                        top: 11px;
                    }

                    #selectlist span {
                        font-size: 9pt;
                        font-family: farsifont;
                        line-height: 34px;
                    }

                    #selectlist ul {
                        padding: 0;
                        box-shadow: 1px 2px 2px #eeeeee;
                        display: none;
                        background: #FFFFFF;
                    }

                    #selectlist ul li {
                        font-family: farsifont;
                        font-size: 9pt;
                        padding-right: 30px;
                        cursor: pointer;
                    }

                    #selectlist ul li:hover {
                        background: #fcfcfc
                    }

                    #details .price {
                        float: right;
                        width: 100%;
                        margin-top: 25px;
                    }

                    .price .discount2 {
                        width: 135px;
                        float: left;
                        height: 22px;
                        display: block;
                        margin-top: 4px;
                        margin-left: 120px;
                    }

                    .discount_right {
                        width: 50px;
                        height: 100%;
                        display: block;
                        float: right;
                        background: red;
                        color: white;
                        font-size: 9.5pt;
                        font-family: farsifont;
                        text-align: center;
                        line-height: 20px;
                    }

                    .discount_left {
                        width: 80px;
                        height: 100%;
                        display: block;
                        float: right;
                        background: #e54949;
                        color: white;
                        font-size: 9.5pt;
                        font-family: farsifont;
                        text-align: center;
                        line-height: 20px;
                    }

                    .priceforu {
                        width: 100%;
                        float: right;
                        margin-top: 30px;
                    }

                    .compare {
                        float: right;
                        width: 100%;
                        margin-top: 25px;
                    }

                    .compare_btn {
                        width: 155px;
                        height: 40px;
                        display: block;
                        float: right;
                        background: #cccccc;
                        border-radius: 3px;
                        font-size: 12pt;
                        font-family: farsifont;
                        text-align: center;
                        color: #FFFFFF;
                    }

                    .addtocard_btn {
                        width: 210px;
                        height: 40px;
                        display: block;
                        float: right;
                        background: green;
                        border-radius: 3px;
                        margin-right: 7px;
                        font-size: 12pt;
                        font-family: farsifont;
                        overflow: hidden;
                        text-align: center;
                        color: #FFFFFF;
                    }

                    .addtocard_btn .sabad {
                        width: 40px;
                        height: 100%;
                        float: right;
                        display: block;
                        background: #43c851 url(public/images/slices.png) no-repeat -153px -412px;
                    }

                    .horiline {
                        height: 1px;
                        background: #6d717a;
                        margin: 15px;
                        float: right;
                        width: 95%;
                    }

                    #services_feature {
                        width: 690px;
                        height: 40px;
                        box-shadow: 0 1px 3px rgba(0, 0, 0, .3);
                        background: white;
                        border-radius: 4px;
                        overflow: hidden;
                        margin: 6px 0;
                    }

                    #services_feature ul {
                        padding: 0;
                        height: 100%;
                    }

                    #services_feature ul li {
                        width: 139px;
                        float: right;
                        height: 100%;
                    }

                    #services_feature ul li a {
                        display: block;
                        height: 100%;
                        font-family: farsifont;
                        font-size: 9pt;
                        line-height: 46px;
                        padding: 0 10px;
                    }

                    #services_feature ul li a i {
                        width: 24px;
                        height: 24px;
                        display: inline-block;
                        background: url('public/images/slices.png') no-repeat;
                        float: right;
                        margin-left: 8px;
                        margin-top: 10px;
                    }
                </style>
                <div id="selectlist">
                    <span class="zemanat">18 ماه گارانتی سام سرویس</span>
                    <ul>
                        <li>گارانتی شماره 1</li>
                        <li>گارانتی شماره 2</li>
                        <li>گارانتی شماره 3</li>
                    </ul>
                </div>
                <div class="price">
                    <span style="font-family: farsifont; font-size: 12pt;">قیمت:</span>
                    <span style="font-family: farsifont; font-size: 10pt; text-decoration: line-through;">900،000</span>
                    <span style="font-family: farsifont; font-size: 10pt;">تومان</span>
                    <span class="discount2">

                        <span class="discount_right">تخفیف</span>
                        <span class="discount_left">150 هزار تومان</span>
                    </span>
                </div>
                <div class="priceforu">
                    <span style="font-family:farsifont; font-size: 12pt; font-weight: bold">قیمت برای شما:</span>
                    <span style="font-family:farsifont; font-size: 13pt; color: green;">250،000</span>
                    <span style="font-family:farsifont; font-size: 9pt;">تومان</span>
                </div>
                <div class="compare">
                    <span class="compare_btn">مقایسه کن</span>
                    <span class="addtocard_btn">
                        <span class="sabad"></span>
                        افزودن به سبد خرید
                    </span>
                </div>
            </div>
            <div class="left"></div>
            <div class="horiline"></div>
            <div id="services_feature">
                <ul>
                    <li>
                        <a>
                            <i style="background-position: -210px -473px;"></i>
                            7 روز ضمانت بازگشت
                        </a>
                    </li>
                    <li>
                        <a>
                            <i style="background-position: -263px -473px;"></i>
                            پرداخت در محل
                        </a>
                    </li>
                    <li>
                        <a>
                            <i style="background-position: -158px -473px;"></i>
                            ضمانت اصل بودن کالا
                        </a>
                    </li>
                    <li>
                        <a>
                            <i style="background-position: -326px -473px;"></i>
                            تحویل اکسپرس
                        </a>
                    </li>
                    <li>
                        <a>
                            <i style="background-position: -103px -473px;"></i>
                            بهترین قیمت
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <style>
        .introduction {
            width: 1180px;
            height: 430px;
            overflow: hidden;
            float: right;
            background: #FFFFFF;
            box-shadow: 0 1px 3px #eee;
            margin-top: 10px;
            padding: 10px;
            position: relative
        }

        .introduction .more {
            font-size: 11pt;
            font-family: farsifont;
            display: block;
            width: 100%;
            position: absolute;
            text-align: center;
            bottom: 10px;
            cursor: pointer;
        }

        .introduction.active {
            height: auto;
        }
    </style>
    <div class="introduction">
        <a class="more">نمایش بیشتر</a>
        <p style="font-family: farsifont; font-size: 14pt;">معرفی اجمالی محصول</p>
        <p style="font-family: farsifont; font-size: 11pt;">توضیحات محصول در این قسمت نوشته خواهد شد</p>
    </div>
    <style>
        .sliderscroll {
            height: 310px;
            width: 1200px;
            box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
            margin-top: 10px;
            background: #FFFFFF;
            border-radius: 4px;
            overflow: hidden;
            float: right;
        }

        .sliderscroll p {
            background: #f7f9fa;
            height: 35px;
            padding-right: 10px;
            padding-top: 7px;
            font-family: farsifont;
            font-size: 10pt;
            margin: 0;
        }

        .sliderscroll_content {
            height: 268px;
        }

        .sliderscroll_content_prev, .sliderscroll_content_next {
            width: 55px;
            height: 100%;
            float: right;
        }

        .sliderscroll_content_main {
            width: 1090px;
            height: 100%;
            float: right;
            overflow: hidden;
        }

        .sliderscroll_content_prev .prev {
            width: 15px;
            height: 42px;
            background: url(public/images/slices.png) no-repeat;
            background-position: -852px -677px;
            display: block;
            position: relative;
            top: 100px;
            right: 15px;
            cursor: pointer;
        }

        .sliderscroll_content_next .next {
            width: 15px;
            height: 42px;
            background: url(public/images/slices.png) no-repeat;
            background-position: -812px -677px;
            display: block;
            position: relative;
            top: 100px;
            right: 15px;
            cursor: pointer;
        }

        .sliderscroll .sliderscroll_content_main ul {
            padding: 0;
            height: 100%;
        }

        .sliderscroll .sliderscroll_content_main ul li {
            width: 218px;
            padding: 0;
            height: 100%;
            float: right;
        }

        .sliderscroll .sliderscroll_content_main ul li a {
            display: block;
            text-align: center;
            margin-top: 5px;
        }

        .sliderscroll_content_main .price {
            color: green;
            font-size: 12pt;
        }

        .sliderscroll_content_main p {
            text-align: center;
            padding: 0;
            margin-top: 1px;
            margin-bottom: 0;
        }
    </style>
    <div class="sliderscroll">
        <p>فقط در دیجی کالا</p>
        <div class="sliderscroll_content">
            <div class="sliderscroll_content_prev">
                <span class="prev" onclick="sliderScroll('right',this);"></span>
            </div>
            <div class="sliderscroll_content_main">
                <ul>
                    <li>
                        <a>
                            <img src="public/images/sliderscroll2_1.jpg">
                            <img src="public/images/exclusive-blue.png">
                            <p>Samsung 8plus</p>
                            <p class="price">12,000,000</p>
                        </a>
                    </li>
                    <li>
                        <a>
                            <img src="public/images/sliderscroll2_2.jpg">
                            <img src="public/images/exclusive-blue.png">
                            <p>Samsung 8plus</p>
                            <p class="price">10,000,000</p>
                        </a>
                    </li>
                    <li>
                        <a>
                            <img src="public/images/sliderscroll2_3.jpg">
                            <img src="public/images/exclusive-blue.png">
                            <p>Samsung 8plus</p>
                            <p class="price">19,000,000</p>
                        </a>
                    </li>
                    <li>
                        <a>
                            <img src="public/images/sliderscroll2_4.jpg">
                            <img src="public/images/exclusive-blue.png">
                            <p>Samsung 8plus</p>
                            <p class="price">14,000,000</p>
                        </a>
                    </li>
                    <li>
                        <a>
                            <img src="public/images/sliderscroll2_3.jpg">
                            <img src="public/images/exclusive-blue.png">
                            <p>Samsung 8plus</p>
                            <p class="price">20,000,000</p>
                        </a>
                    </li>
                    <li>
                        <a>
                            <img src="public/images/sliderscroll2_3.jpg">
                            <img src="public/images/exclusive-blue.png">
                            <p>Samsung 8plus</p>
                            <p class="price">20,000,000</p>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="sliderscroll_content_next">
                <span class="next" onclick="sliderScroll('left',this);"></span>
            </div>
        </div>

    </div>
    <style>
        #tab {
            width: 1200px;
            margin-top: 15px;
            padding: 0;
            float: right;
            background: #f5f6f7;
        }

        #tab li {
            float: right;
            font-family: farsifont;
            font-size: 11pt;
            padding: 15px;
            border-left: 1px solid #ccc;
            cursor: pointer;
            position: relative;
            padding-right: 37px;
        }

        #tab li.active {
            background: white;
            box-shadow: 0 -2px 2px rgba(0 0 0 .2);
            border-top: 2px solid blue;
            color: blue;
        }

        .tab_content {
            width: 1200px;
            float: right;
            background: #FFFFFF;
            margin-top: 5px;
        }

        .tab_content section {
            padding: 10px;
            font-size: 12pt;
            font-family: farsifont;
            display: none;
        }

        #tab li::before {
            content: "";
            width: 30px;
            height: 25px;
            display: block;
            background: url(public/images/slices.png) no-repeat;
            position: absolute;
            right: 3px;
            top: 17px;
        }

        #tab .naghd::before {
            background-position: -105px -266px;
        }

        #tab .fani::before {
            background-position: -315px -266px;
        }

        #tab .nazar::before {
            background-position: -261px -266px;
        }

        #tab .soal::before {
            background-position: -210px -266px;
        }

        #tab .naghd.active::before {
            background-position: -105px -308px;
        }

        #tab .fani.active::before {
            background-position: -315px -308px;
        }

        #tab .nazar.active::before {
            background-position: -261px -308px;
        }

        #tab .soal.active::before {
            background-position: -210px -308px;
        }

        .tab_content .item {
            padding: 7px;
        }

        .tab_content h4 {
            font-family: farsifont;
            font-size: 12pt;
            margin: 5px;
            position: relative;
            padding-right: 17px;
            cursor: pointer;
        }

        .tab_content > h4::after {
            content: "";
            width: 86%;
            height: 1px;
            background: #cccccc;
            position: absolute;
            left: 0;
            top: 18px;
            display: block;
        }

        .tab_content .item h4 i {
            background: url(public/images/slices.png) no-repeat -259px -606px;
            width: 31px;
            height: 56px;
            position: absolute;
            display: block;
            right: -33px;
            top: -8px;
        }

        .tab_content .item h4.active i {
            background: url(public/images/slices.png) no-repeat -207px -606px !important;
        }

        .tab_content .item:first-child h4 i {
            background: url(public/images/slices.png) no-repeat -153px -615px;
            width: 31px;
            height: 44px;
            position: absolute;
            display: block;
            right: -32px;
            top: 2px;
        }

        .tab_content section:first-child {
            display: block;
        }

        .tab_content .itemcontainer {
            padding: 5px;
            margin-right: 20px;
            border-right: 2px solid #f0f1f2;
        }

        .itemcontainer .item .description {
            display: none;
        }
    </style>

    <ul id="tab">
        <li class="naghd active">نقد و بررسی تخصصی</li>
        <li class="fani">مشخصات فنی</li>
        <li class="nazar">نظرات کاربران</li>
        <li class="soal">پرسش و پاسخ</li>
    </ul>
    <div class="tab_content">
        <section>
            <div class="itemcontainer">
                <div class="item">
                    <h4>
                        <i></i>
                        طراحی و ساخت </h4>
                    <div class="description">
                        <p>item1</p>
                        <p>item1</p>
                        <p>item1</p>
                    </div>
                </div>
                <div class="item">
                    <h4>
                        <i></i>
                        صفحه نمایش </h4>
                    <div class="description">
                        <p>item1</p>
                        <p>item1</p>
                        <p>item1</p>
                    </div>
                </div>
                <div class="item">
                    <h4>
                        <i></i>
                        سخت افزار و باتری</h4>
                </div>
            </div>
        </section>
        <style>
            .spec {
                width: 100%;
                float: right;
            }

            .spec .title {
                font-size: 16pt;
                font-family: farsifont;
                width: 100%;
                margin-bottom: 0;
                margin-top: 0;
            }

            .spec .product_title {
                font-size: 9pt;
                font-family: farsifont;
                width: 100%;
                margin-top: 0;
                margin-bottom: 30px;
            }

            .pro_spec {
                width: 100%;
                float: right;
                margin-bottom: 10px;
            }

            .pro_spec .right {
                font-family: farsifont;
                font-size: 10pt;
                background: #aaaaaa;
                padding: 3px;
                width: 255px;
                float: right;
                margin-left: 10px;
                padding-right: 8px;
            }

            .spec .bb {
                font-size: 12pt;
                font-family: farsifont;
                font-weight: bold;
            }

            .pro_spec .left {
                font-family: farsifont;
                font-size: 10pt;
                background: #eeeeee;
                padding: 3px;
                width: 700px;
                float: right;
                padding-right: 8px;
            }
        </style>
        <section>
            <div class="spec">
                <p class="title">مشخصات فنی</p>
                <p class="product_title">sumsung gallexy s8</p>
                <span class="bb">مشخصات فیزیکی</span>
                <div class="pro_spec">
                    <div class="right">ابعاد</div>
                    <div class="left">20 میلی متر در 30 میلی متر</div>
                </div>
                <div class="pro_spec">
                    <div class="right">وزن</div>
                    <div class="left">120 گرم</div>
                </div>
            </div>

        </section>
        <style>

            #coments_result {
                width: 510px;
                float: right;
                position: relative;
            }

            #coments_send {
                width: 630px;
                float: right;
                margin-right: 40px;
            }

            .navbar .row {
                width: 100%;
                float: right;
            }

            .navbar .row .title {
                font-size: 9pt;
                font-family: farsifont;
                float: right;
                display: block;
                width: 160px;
                margin-left: 8px;
            }

            .navbar .row ul {
                padding: 0;
                height: 7px;
                float: right;
                margin-top: 11px;
            }

            .navbar .row ul li {
                width: 64px;
                height: 100%;
                float: right;
                background: #cccccc;
                border-left: 1px solid #fff;
            }

            .navbar .row ul li span {
                display: block;
                background: green;
                height: 100%;
            }

            .comment_btn {
                width: 100px;
                height: 33px;
                background: blue;
                color: white;
                font-family: farsifont;
                font-size: 10pt;
                float: left;
                margin-left: 24px;
                border-radius: 4px;
                text-align: center;
                cursor: pointer;
            }

        </style>
        <section>
            <div id="coments_result" class="navbar">
                <p style="font-family: farsifont; font-size: 13pt;">امتیاز کاربران به:
                    <span style="font-family: farsifont; font-size: 10pt; position: absolute; right:123px; top:21px;">گوشی Samsung gallexcy S8</span>
                </p>
                <div class="row">
                    <span class="title">ارزش خرید به نسبت قیمت</span>
                    <ul>
                        <li>
                            <span style="width:100%"></span>
                        </li>
                        <li><span style="width:100%"></span></li>
                        <li><span style="width:100%"></span></li>
                        <li><span style="width:40%"></span></li>
                        <li><span style="width:0"></span></li>
                    </ul>

                </div>
                <div class="row">
                    <span class="title">نوآوری</span>
                    <ul>
                        <li><span style="width:100%"></span></li>
                        <li><span style="width:100%"></span></li>
                        <li><span style="width:100%"></span></li>
                        <li><span style="width:100%"></span></li>
                        <li><span style="width:50%"></span></li>
                    </ul>

                </div>
            </div>
            <div id="coments_send">
                <p style="font-family: farsifont; font-size: 13pt;">شما هم می توانید نظر خود را ارسال کنید.</p>
                <p style="font-family: farsifont; font-size: 11pt;">به منظور ارسال نظر خود ابتدا بایستی وارد حساب کاربری
                    خود شوید.</p>
                <span class="comment_btn">ارسال نظر</span>

            </div>
            <div class="row">
                <p style="font-size: 13pt; font-family: farsifont; margin-bottom: 0; font-weight: bold;">نظرات
                    کاربران</p>
                <div class="horiline"></div>
            </div>
            <style>
                .comments {
                    width: 98%;
                    float: right;
                    box-shadow: 0 2px 3px rgba(0 0 0 .15);
                    border-radius: 2px;
                    overflow: hidden;
                    margin-bottom: 8px;
                    border:1px solid #776d6f;
                }

                .comments_header {
                    height: 55px;
                    font-family: farsifont;
                    font-size: 11pt;
                    background: #eee;
                    padding: 0 15px;
                    float: right;
                    width: 100%;

                }

                .comments_header .right {
                    float: right;
                    height:100%;
                }

                .comments_header .left {
                    float: left;
                    margin-left:33px;

                }

                .comments_header .left span {
                    float: left;
                    display: block;
                    margin-right: 6px;
                    font-family: farsifont;
                    font-size: 10pt;
                    margin-top: 12px;
                }

                .comments_header .left .like {
                    width: 65px;
                    height: 25px;
                    background: #FFFFFF;
                }

                .comments_header .left .like i {
                    width: 20px;
                    height: 20px;
                    display: block;
                    float: right;
                    background: url(public/images/slices.png) no-repeat -305px -190px;
                    margin-top: 4px;
                    margin-right: 3px;
                }

                .comments_header .left .dislike i {
                    width: 20px;
                    height: 20px;
                    display: block;
                    float: right;
                    background: url(public/images/slices.png) no-repeat -267px -193px;
                    margin-top: 4px;
                    margin-right: 3px;
                }

                .comments_header .left .dislike {
                    width: 65px;
                    height: 25px;
                    background: #FFFFFF;
                }
            </style>
            <div class="comments">
                <div class="comments_header">
                    <div class="right">
                        <span class="name"
                              style="font-size: 12pt; font-family: farsifont; display:block; margin-top: 0;"> مهدی رضایی</span>
                        <span class="date"
                              style="font-size: 9pt; font-family: farsifont; display: block;"> 3 بهمن 1398</span>
                    </div>
                    <div class="left">
                        <span class="dislike">
                            <i></i>
                            <span style="margin:0; margin-left:6px">12</span>
                        </span>
                        <span class="like">
                            <i></i>
                            <span style="margin:0;margin-left:6px">3</span>
                        </span>
                        <span>آیا این نظر برای شما مفید بود؟</span>
                    </div>

                </div>
                <div class="comments_content" style="float:right; width:100%;">
                    <div class="right" style="float:right; width:500px;">
                        <div class="navbar">
                            <div class="row" style="margin-top:15px;">
                                <span class="title" style="padding-right:5px;">ارزش خرید به نسبت قیمت</span>
                                <ul>
                                    <li>
                                        <span style="width:100%"></span>
                                    </li>
                                    <li><span style="width:100%"></span></li>
                                    <li><span style="width:100%"></span></li>
                                    <li><span style="width:40%"></span></li>
                                    <li><span style="width:0"></span></li>
                                </ul>

                            </div>

                            <div class="row">
                                <span class="title"style="padding-right:5px;">نوآوری</span>
                                <ul>
                                    <li><span style="width:100%"></span></li>
                                    <li><span style="width:100%"></span></li>
                                    <li><span style="width:100%"></span></li>
                                    <li><span style="width:100%"></span></li>
                                    <li><span style="width:50%"></span></li>
                                </ul>

                            </div>
                        </div>
                    </div>
                    <div class="left" style="float:right; width:630px; margin-right:25px;">
                        <div class="top">حیف که دو سیمکارته نبود!</div>
                        <div class="center">
                            <div class="positive" style="float:right;">
                                <p style="width:280px; color:green; font-size: 12pt; font-family: farsifont;margin-bottom:0; ">نقاط قوت</p>
                                <P style="margin-top:0;font-family: farsifont; font-size: 10pt">شارژ قوی، استحکام زیاد</P>
                            </div>
                            <div class="negative" style="float:right">
                                <p style="width:280px; color:red; font-size: 12pt; font-family: farsifont;margin-bottom:0; " >نقاط ضعف</p>
                                <P style="margin-top:0;font-family: farsifont; font-size: 10pt">تک سیمکارته بودن</P>
                            </div>
                        </div>
                        <div class="bottom" style="float:right; width: 100%;">
                            نظرات کامل و جامع در باره این محصول به شرح ذیل است...
                        </div>
                    </div>
                </div>

            </div>
            <div class="comments">
                <div class="comments_header">
                    <div class="right">
                        <span class="name"
                              style="font-size: 12pt; font-family: farsifont; display:block; margin-top: 0;"> مهدی رضایی</span>
                        <span class="date"
                              style="font-size: 9pt; font-family: farsifont; display: block;"> 3 بهمن 1398</span>
                    </div>
                    <div class="left">
                        <span class="dislike">
                            <i></i>
                            <span style="margin:0; margin-left:6px">12</span>
                        </span>
                        <span class="like">
                            <i></i>
                            <span style="margin:0;margin-left:6px">3</span>
                        </span>
                        <span>آیا این نظر برای شما مفید بود؟</span>
                    </div>

                </div>
                <div class="comments_content" style="float:right; width:100%;">
                    <div class="right" style="float:right; width:500px;">
                        <div class="navbar">
                            <div class="row" style="margin-top:15px;">
                                <span class="title" style="padding-right:5px;">ارزش خرید به نسبت قیمت</span>
                                <ul>
                                    <li>
                                        <span style="width:100%"></span>
                                    </li>
                                    <li><span style="width:100%"></span></li>
                                    <li><span style="width:100%"></span></li>
                                    <li><span style="width:40%"></span></li>
                                    <li><span style="width:0"></span></li>
                                </ul>

                            </div>

                            <div class="row">
                                <span class="title" style="padding-right:5px;">نوآوری</span>
                                <ul>
                                    <li><span style="width:100%"></span></li>
                                    <li><span style="width:100%"></span></li>
                                    <li><span style="width:100%"></span></li>
                                    <li><span style="width:100%"></span></li>
                                    <li><span style="width:50%"></span></li>
                                </ul>

                            </div>
                        </div>
                    </div>
                    <div class="left" style="float:right; width:630px; margin-right:25px;">
                        <div class="top">حیف که دو سیمکارته نبود!</div>
                        <div class="center">
                            <div class="positive" style="float:right;">
                                <p style="width:280px; color:green; font-size: 12pt; font-family: farsifont;margin-bottom:0; ">نقاط قوت</p>
                                <P style="margin-top:0;font-family: farsifont; font-size: 10pt">شارژ قوی، استحکام زیاد</P>
                            </div>
                            <div class="negative" style="float:right">
                                <p style="width:280px; color:red; font-size: 12pt; font-family: farsifont;margin-bottom:0; " >نقاط ضعف</p>
                                <P style="margin-top:0;font-family: farsifont; font-size: 10pt">تک سیمکارته بودن</P>
                            </div>
                        </div>
                        <div class="bottom" style="float:right; width: 100%;">
                            نظرات کامل و جامع در باره این محصول به شرح ذیل است...
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <style>
            #question h4{font-size: 12.5pt; font-family: farsifont;}
            #question textarea{height:190px; width:98%; border:1px solid #ccc; margin-bottom: 5px;}
            .qquestion_header{height:35px; background: #ccc; float:right; width:100%;}
            .qquestion_header i{float: right;background: url(public/images/slices.png) no-repeat -283px -126px; margin-right: 7px; width: 28px; height: 26px; display: block; margin-top: 8px; margin-left: 5px;}
            .qquestion_content{ background: #eeeeee; padding:10px;}
        </style>
        <section id="question">
            <h4>پرسش خود را مطرح نمایید</h4>
            <textarea></textarea>
            <div>
                <span class="comment_btn">ثبت پرسش</span>
            </div>
            <h4>پرسش ها و پاسخ ها</h4>
            <div class="horiline"></div>
            <div id="question_container" style="width: 98%;">
                <div class="qquestion" style="width:100%; float:right; margin-bottom: 5px;">
                    <div class="qquestion_header">
                        <i></i>
                        <span style="font-family: farsifont; font-size: 10pt;">پرسش</span>
                        <span style="font-family: farsifont; font-size: 9pt; float:left">-تیر ماه 1398</span>
                        <span style="font-family: farsifont; font-size: 9pt; float: left;">رضا سعیدی</span>
                    </div>
                    <div class="qquestion_content" style="float:right; width: 100%; padding:0; ">
                        <p style="font-size: 10pt; font-family: farsifont; padding-right: 15px;">سوالی که برای من پیش آمده در واقع...</p>
                    </div>

                </div>


            </div>
            <div id="question_container" style="width: 98%;">
                <div class="qquestion" style="width:100%; float:right; margin-bottom: 5px;">
                    <div class="qquestion_header">
                        <i></i>
                        <span style="font-family: farsifont; font-size: 10pt;">پرسش</span>
                        <span style="font-family: farsifont; font-size: 9pt; float:left">-تیر ماه 1398</span>
                        <span style="font-family: farsifont; font-size: 9pt; float: left;">رضا سعیدی</span>
                    </div>
                    <div class="qquestion_content" style="float:right; width: 100%; padding:0; ">
                        <p style="font-size: 10pt; font-family: farsifont; padding-right: 15px;">سوالی که برای من پیش آمده در واقع...</p>
                    </div>

                </div>


            </div>
        </section>

    </div>
</div>
<script>

    $('.itemcontainer .item h4 ').click(function () {
        var item = $(this).parents('.item');
        $(this).toggleClass('active');
        $('.description', item).slideToggle(200);
    });

    $('#tab li').click(function () {
        var index = $(this).index();
        $('#tab li').removeClass('active');
        $(this).addClass('active');
        $('.tab_content section').fadeOut(0);
        $('.tab_content section').eq(index).fadeIn(200);
    });

    function sliderScroll(direction, tag) {
        var span_tag = $(tag);
        var sliderScrollTag = span_tag.parents(".sliderscroll");
        var sliderScrollUl = sliderScrollTag.find('.sliderscroll_content_main ul');
        var sliderScrollItems = sliderScrollUl.find('li');
        var sliderScrollItemsNum = sliderScrollItems.length;
        var sliderScrollNum = Math.ceil(sliderScrollItemsNum / 5);
        var maxNegativeMargin = -(sliderScrollNum - 1) * 1090;
        sliderScrollUl.css('width', sliderScrollItemsNum * 218);
        var marginRightOld = sliderScrollUl.css('margin-right');
        var marginRightOld = parseFloat(marginRightOld);
        if (direction == 'left') {
            var marginRightNew = marginRightOld - 1090;
        }
        if (direction == 'right') {
            var marginRightNew = marginRightOld + 1090;
        }
        if (marginRightNew < maxNegativeMargin) {
            marginRightNew = 0;
        }
        if (marginRightNew > 0) {
            marginRightNew = maxNegativeMargin;
        }
        sliderScrollUl.animate({'marginRight': marginRightNew}, 1000);
    }

    $('.next').click(function () {
        sliderScroll('left');
    });
    $('.prev').click(function () {
        sliderScroll('right');
    });

    $('.introduction .more').click(function () {
        $('.introduction').toggleClass('active');
    });
    $('#selectlist').click(function () {
        $('#selectlist ul, this').slideToggle(200);
    });
    $('#selectlist ul li').click(function () {
        var txt = $(this).text();
        $('#selectlist .zemanat').text(txt);
    });
    $('.colors li').click(function () {
        $('.circle').removeClass('active');
        $('.circle', this).addClass('active');
    });
    $('.flipTimer').flipTimer({
        direction: 'down',
        date: 'February 02,2020 6:07',
        callback: function () {
            $('.slider2_content_right').css('opacity', 0.4);
            $('.slider2_content_left').css('opacity', 0.4);
            $('.slider2_finished').fadeIn();
        }


    });
    $('#zoom_img').elevateZoom({'zoomWindowOffetx' :-800,'scrollZoom':true})
    var timer = {};
    $('#Menu_top li').hover(function () {
        var tag = $(this);
        var timerAtt = tag.attr('data-time');
        clearTimeout(timer[timerAtt]);
        timer[timerAtt] = setTimeout(function () {
            $('> ul', tag).fadeIn(0);
            $(tag).addClass('active_menu');
            $('> .submenu3', tag).fadeIn(0);
        }, 500);
    }, function () {
        var tag = $(this);
        var timerAtt = tag.attr('data-time');
        clearTimeout(timer[timerAtt]);
        timer[timerAtt] = setTimeout(function () {
            $(tag).removeClass('active_menu');
            $('> ul', tag).fadeOut(0);
            $('> .submenu3', tag).fadeOut(0);
        }, 500);
    })

</script>
<style>
    #products_galleries{width:900px;height:600px;background: #FFFFFF; position: fixed;left:0; right:0; margin:auto; top:10px; z-index: 6;bottom:10px; display: none;}
    #dark{width:100%; height: 100%;top:0; left:0; position: fixed; background: rgba(0, 0, 0, .4);z-index: 4; display: none;}
    #products_galleries h4{font-family: farsifont;font-size: 12pt; padding: 8px; background: #eeeeee; margin: 0; position: relative;}
    #products_galleries h4 .close{width:28px; height:28px; background: url(public/images/slices.png) no-repeat -134px -123px; position: absolute; top:6px; left:6px;border:1px solid #ccc; border-radius: 50%; cursor: pointer;}
    #products_galleries .right{width:700px; float:right; height: 550px;}
    #products_galleries .right img{max-width: 100%; max-height: 100%;}
    #products_galleries .left{width:195px; float:left;height: 550px; border-right:1px solid #ccc; overflow-y: auto;}
    #products_galleries .left ul{padding: 0; width: 100%;}
    #products_galleries .left li{height:130px; border-bottom: 1px solid #ccc; text-align: center; cursor: pointer; opacity: 0.6; position: relative;}
    #products_galleries .left li.active{opacity: 1 !important;}
    #products_galleries .left li img{max-height: 100%; max-width: 100%; margin-top: 8px; margin-left:33px;}
    .ikon3d{width: 37px;
        height: 37px;
        background: url(public/images/slices.png) no-repeat -365px -117px;
        display: block;
        position: absolute;
        left: -4px;
        bottom: 3px; }


</style>
<div id="products_galleries">
    <h4>گوشی سامسونگ مدل گلکسی اس 7
        <span class="close"></span>
    </h4>
    <div class="right">
        <canvas id="cv" width="420px" height="320px" style="margin:auto; position: relative; right:133px;"></canvas>

        <img class="mainimg" src="public/">

    </div>
    <div class="left">
        <ul>
            <li data-image=""> <img src="public/images/products/1/gallery/small/1472662586.jpg"> <span class="ikon3d"></span></li>
            <li data-image="public/images/products/1/gallery/large/1472662593.jpg"> <img src="public/images/products/1/gallery/small/1472662586.jpg"></li>
            <li data-image="public/images/products/1/gallery/large/1472662590.jpg"> <img src="public/images/products/1/gallery/small/1472662590.jpg"></li>
            <li> <img src="public/images/products/1/gallery/small/1472662593.jpg"></li>
            <li> <img src="public/images/products/1/gallery/small/1472662593.jpg"></li>
            <li> <img src="public/images/products/1/gallery/small/1472662593.jpg"></li>
            <li> <img src="public/images/products/1/gallery/small/1472662593.jpg"></li>
        </ul>
    </div>
</div>
<div id="dark"></div>
<script>
    var canvasTag =document.getElementById('cv');
    var viewer=new JSC3D.Viewer(canvasTag, {
        SceneUrl: 'public/images/products/1/3d/bmw.obj',
        InitRotationX: -100,
        InitRotationY: -100,
        InitRotationZ: 0,
        RenderMode: 'texturesmooth'
    });
    viewer.init();
    viewer.update();

    var iimg= $('#products_galleries .left ul li')
    $(iimg).click(function () {
        $(iimg).removeClass('active');
        $(this).toggleClass('active');
        var imgSource= $(this).attr('data-image');
        if(imgSource.length>0){
            $('.mainimg').attr('src',imgSource);
            $('#cv').fadeOut(0);
            $('.mainimg').fadeIn(100);

        }
        else{
            $('#cv').fadeIn(0);
            $('.mainimg').fadeOut(100);


        }



    });

    $('.close').click(function () {
        $('#products_galleries').fadeOut(200);
        $('#dark').fadeOut(200);
    });
    $('.galleris ul li').click(function () {
        var imgSource= $(this).attr('data-image');
        $('#products_galleries').fadeIn(200);
        $('#dark').fadeIn(200);

    });
    $("#products_galleries .left").mCustomScrollbar({
        setWidth: false,
        setHeight: false,
        setTop: 0,
        setLeft: 0,
        axis: "y",
        scrollbarPosition: "inside",
        scrollInertia: 950,
        autoDraggerLength: true,
        autoHideScrollbar: false,
        autoExpandScrollbar: false,
        alwaysShowScrollbar: 0,
        snapAmount: null,
        snapOffset: 0,
        mouseWheel: {
            enable: true,
            scrollAmount: "auto",
            axis: "y",
            preventDefault: false,
            deltaFactor: "auto",
            normalizeDelta: false,
            invert: false,
            disableOver: ["select", "option", "keygen", "datalist", "textarea" ]
        },
        scrollButtons: {
            enable: true,
            scrollType: "stepless",
            scrollAmount: "auto"
        },
        keyboard: {
            enable: true,
            scrollType: "stepless",
            scrollAmount: "auto"
        },
        contentTouchScroll: 25,
        advanced: {
            autoExpandHorizontalScroll: false,
            autoScrollOnFocus: "input,textarea,select,button,datalist,keygen,a[tabindex],area,object,[contenteditable='true']",
            updateOnContentResize: true,
            updateOnImageLoad: true,
            updateOnSelectorChange: false,
            releaseDraggableSelectors: false
        },
        theme: "3d-dark",

        callbacks: {
            onInit: false,
            onScrollStart: false,
            onScroll: false,
            onTotalScroll: false,
            onTotalScrollBack: false,
            whileScrolling: false,
            onTotalScrollOffset: 0,
            onTotalScrollBackOffset: 0,
            alwaysTriggerOffsets: true,
            onOverflowY: false,
            onOverflowX: false,
            onOverflowYNone: false,
            onOverflowXNone: false
        },
        live: false,
        liveSelector: null

    });
</script>
