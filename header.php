<!DOCTYPE html>
<html lang="fa">
<head>
    <base href="<?= URL ?>">
    <meta charset="UTF-8">
    <title>Online Shopping</title>
    <script src="public/js/jquery-3.0.0.min.js"></script>
    <script src="public/js/jquery.flipTimer.js"></script>
    <link href="public/css/flipTimer.css" type="text/css" rel="stylesheet">
</head>
<style>
    @font-face {
        font-family: 'yekan';
        src: url('public/fonts/yekan.ttf') format('truetype'),
        url('public/fonts/yekan.eot?#iefix') format('embedded-opentype');
    }

    * {
        text-align: right;
        direction: rtl;
    }

    a {
        text-decoration: none;
    }

    .fontsm {
        font-size: 10.5pt;
    }

    .error {
        border: 1px solid red;
        text-align: center;
        font-size: 12pt;
        color: red;
        font-family: yekan;
        padding: 8px;
    }

    .success {
        border: 1px solid green;
        text-align: center;
        font-size: 12pt;
        color: green;
        font-family: yekan;
        padding: 8px;
    }
</style>
<body style="margin:0; background: #<?= body_color ?>">
<header style="background-color: white">
    <div class="header" style="width:1200px; height:100px; margin:auto; padding-top:13px;">
        <div class="header_right" style="float:right; width:720px; height:100px;">
            <div class="header_right_top" style="height:40px;">

                <?php
                $getbasket = Model::getBasket();
                $basket = $getbasket[0];
                model::sessionInit();
                $userId = model::sessionGet('userId');
                if ($userId == false) {
                    ?>
                    <span style="width:20px; height:20px; background:url(public/images/view_icon.png);display:block; float:right;"></span>
                    <a class="fontsm" href="<?= URL ?>" style="float:right; margin-left:15px; font-family:yekan; ">
                        خانه</a>
                    <span style="width:20px; height:20px; background:url(public/images/lock.png);display:block; float:right;"></span>
                    <a class="fontsm" href="<?= URL ?>login" style="float:right; margin-right:5px; font-family:yekan; ">
                        پنل کاربری</a>
                    <span style="width:20px; height:20px; background:url(public/images/signup.png);display:block; float:right; margin-right:14px;"></span>
                    <a class="fontsm" href="<?= URL ?>register"
                       style="float:right; margin-right:5px; font-family: yekan;">ثبت نام
                        کنید</a>
                    <span style="width:20px; height:20px; background:url(public/images/login.png);display:block; float:right; margin-right:14px;"></span>
                    <a class="fontsm" href="<?= URL ?>adminlogin"
                       style="float:right; margin-right:5px; font-family: yekan;">پنل مدیریت
                    </a>
                <?php } else {
                    ?>
                    <span style="width:20px; height:20px; background:url(public/images/view_icon.png);display:block; float:right;"></span>
                    <a class="fontsm" href="<?= URL ?>" style="float:right; margin-left:15px; font-family:yekan; ">
                        خانه</a>
                    <span style="width:20px; height:20px; background:url(public/images/lock.png);display:block; float:right;"></span>
                    <?php
                    $level=Model::getUserLevel();
                    if($level==1){?>
                        <a class="fontsm" style="float:right; margin-right:5px; font-family:yekan; ">
                            مدیر گرامی خوش آمدید</a>
                        <?php } else{?>
                        <a class="fontsm" style="float:right; margin-right:5px; font-family:yekan; ">
                        کاربر گرامی خوش آمدید</a>
                   <?php }?>

                    <span style="width:20px; height:20px; background:url(public/images/signup.png);display:block; float:right; margin-right:14px;"></span>
                <?php   if($level==1){?>
                    <a class="fontsm" href="<?= URL ?>admindashboard" style="float:right; margin-right:5px; font-family: yekan;">پنل
                        مدیریت
                    </a>
                <?php } else{?>
                    <a class="fontsm" href="<?= URL ?>panel" style="float:right; margin-right:5px; font-family: yekan;">پنل
                        کاربری
                    </a>
                    <?php }?>
                    <span style="width:20px; height:20px; background:url(public/images/circle.png);display:block; float:right; margin-right:14px; margin-left=4px;"></span>
                    <a class="fontsm" href="<?= URL ?>panel/logout"
                       style="float:right; margin-right:4px; font-family: yekan;">خروج
                    </a>
                <?php } ?>


            </div>
            <div class="header_right_bottom" style="height:50px;">
                <div id="basket_top" style="width:190px; height:40px; float:right;">
                    <div id="basket_top_right"
                         style="width:54px; height:100%; background:#43c851; background-image:url(public/images/basket.png); background-repeat:no-repeat; background-position:center center; float:right;">
                    </div>
                    <a href="<?php if ($userId == false) {
                        echo 'login';
                    } else {
                        echo "showcart";
                    } ?>" id="basket_top_left"
                       style="width:96px; height:100%; background:#38a844; float:right; line-height: 35px; padding:0 20px; cursor: pointer">
                        <span class="fontsm" style="font-family: yekan; color:#fff;padding:10px;">سبد خرید</span>
                        <span style="width:20px; height:20px; background:#eee; text-align:center; display:block; float:left; margin-top: 10px; line-height: 22px; border-radius: 100%;"><?php echo sizeof($basket); ?></span>
                    </a>
                </div>
                <div id="search_top" style="width:280px; height:40px; float:right; position: relative;">
                    <a href="<?= URL ?>search/index/4">
                    <input type="text" disabled
                           style="width:280px; height:35px; margin-right:10px; border:2px solid #eee; color:#aaa; padding-right: 10px; font-family: yekan; position: absolute"
                           placeholder=" محصول، مدل ویا برند موردنظر را جستجو کنید...">
                    <span  style="width:45px; height:39px; display:block; background: url('public/images/search.png') no-repeat center #aaaaaa; position:relative; top:1px; left:-260px; cursor: pointer;"></span>
                    </a>
                </div>
            </div>
        </div>
        <div id="header_left" style="float:left;">
            <img src="public/images/logo.png">
        </div>
    </div>
</header>
<style>
    nav {
        box-shadow: 1px 2px 3px #ccc;
        -webkit-box-shadow: 1px 2px 3px #ccc;
        -moz-box-shadow: 1px 2px 3px #ccc;
        width: 100%;
        height: 40px;
        background-color: #<?=menu_color?>;
        border-top: 1px solid #edeee4;
    }

    li {
        list-style: none;
        font-family: yekan;
        font-size: 10pt;
    }

    ul {
        margin: 0 auto;
        z-index: 2;
    }

    #Menu_top > ul > li {
        float: right;
        height: 40px;
    }

    #Menu_top > ul {
        position: relative;
        padding: 0;

    }

    #Menu_top > ul > li > a {
        padding: 0 10px;
        height: 40px;
        display: block;
        line-height: 40px;
    }

    .Menu_top_ikon {
        width: 7px;
        height: 4px;
        background: url('public/images/down.png');
        display: inline-block;
    }

    #Menu_top > ul > li > ul > li {
        float: right;
    }

    #Menu_top > ul > li > ul {
        position: absolute;
        background-color: white;
        width: 1200px;
        padding: 0;
        right: 0;
        box-shadow: 0 2px 3px #aaaaaa;
        display: none;
    }

    #Menu_top > ul > li > ul > li > a {
        font-size: 9pt;
        display: block;
        padding: 5px 15px;
    }

    .top_menu3_col {
        width: 299px;
        height: 100%;
        border-left: 1px solid #cccccc;
        float: right;
    }

    .top_menu3_col_ul li {
        font-size: 8pt;
        padding-right: 10px;

    }

    .level3 {
        padding-right: 0;
        color: blue;
        margin-bottom: 10px;
    }

    .submenu3 {
        display: none;
    }

    .active_menu {
        background-color: white;
        box-shadow: 0 -1px 2px #cccccc;
    }

    .active_menu > a {
        color: red;
    }

    #Menu_top a {
        cursor: pointer;
    }

    .mm3 {
        font-size: 8pt;
        padding-right: 10px;
        margin-bottom: 7px;
    }


</style>
<nav>
    <div id="Menu_top" style="width:1200px; height:40px; margin:auto; ">
        <ul>
            <?php

            $model = new Model;
            $Menu = $model->getMenu();
            foreach ($Menu as $level1) {
                ?>


                <li data-time="<?= $level1['id']; ?>">
                    <a>
                        <?= $level1['title'] ?>
                        <span class="Menu_top_ikon"></span>
                    </a>
                    <ul>
                        <?php
                        if (isset($level1['children'])) {
                            $children1 = $level1['children'];
                            foreach ($children1 as $level2) {
                                ?>
                                <li data-time="<?= $level2['id']; ?>">
                                    <a>
                                        <?= $level2['title']; ?>

                                    </a>
                                    <div class="submenu3"
                                         style="width:1200px; height:300px; background:#eeeeee; border-top:1px solid #eee; position:absolute; right:0;">

                                        <ul class="top_menu3_col" style="padding-right:10px;">
                                            <?php
                                            if (isset($level2['children'])){
                                            $children2 = $level2['children'];
                                            $i = 1;
                                            foreach ($children2

                                            as $level3){
                                            ?>
                                            <?php if ($i % 10 == 0){ ?>
                                        </ul>
                                        <ul class="top_menu3_col" style="padding-right:10px;">

                                            <?php } ?>

                                            <li data-time="<?= $level3['id']; ?>"
                                                class="level3 yekan "> <?= $level3['title']; ?></li>
                                            <?php
                                            $i++;
                                            if (isset($level3['children'])){
                                            $children3 = $level3['children'];
                                            foreach ($children3

                                            as $level4){


                                            ?>
                                            <?php if ($i % 10 == 0){ ?>
                                        </ul>
                                        <ul class="top_menu3_col" style="padding-right:10px;">

                                            <?php } ?>

                                            <li data-time="<?= $level4['id']; ?>"
                                                class="yekan mm3"> <?= $level4['title']; ?></li>
                                            <?php

                                            $i++;
                                            }
                                            } ?>
                                            <?php }
                                            } ?>

                                        </ul>


                                        <img src="public/images/mobile.png"
                                             style="width:379px; height:280px; position:absolute; left:1px; bottom:2px;">


                                    </div>

                                </li>
                            <?php }
                        } ?>

                    </ul>
                </li>

            <?php } ?>

        </ul>


    </div>
</nav>
<script>
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
