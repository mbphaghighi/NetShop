<div id="main" style="width: 1200px;margin:10px auto;background: #fff;">


    <style>
        #main::after {
            content: " ";
            clear: both;
            display: block;
        }

        #main {
            padding: 10px;
            font-family: yekan;
            font-size: 12pt;
            padding-bottom: 50px;

        }
        .titleTag {
            width: 200px;
            float: right;
            display: block;
        }

        input {
            width: 300px;
            height: 23px;
            border: 1px solid #ccc;
        }
        .btn_green {
            background: #4ed133 none repeat scroll 0 0;
            border: 1px solid #eee;
            border-radius: 3px;
            color: #fff;
            float: left;
            font-size: 9pt;
            margin-bottom: 3px;
            padding: 1px 15px;
            text-align: center;
            cursor: pointer;
        }

    </style>


    <p class="title">
        <a>
            ورود به پنل مدیریت
        </a>


    <form action="adminlogin/checkuser" method="post">

        <div class="row2">

        <span class="titleTag">
             نام کاربری:

        </span>

            <input type="text" name="email">

        </div>
        <div class="row2">

        <span class="titleTag">
         پسورد:
        </span>

            <input type="password" name="password">

        </div>

        <div class="row2">

            <span onclick="submitForm()" class="btn_green" style="float: left;">
                ورود
            </span>

        </div>


    </form>

</div>

<script>
    function submitForm() {
        $('form').submit();
    }
</script>











