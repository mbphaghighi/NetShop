<style>
    #introduction {
        float: right;
        width: 1180px;
        margin-top: 20px;
        padding: 10px;
        height: 270px;
        overflow: hidden;
        position: relative;
    }
    #introduction p{
        margin: 1px 0;
        font-size: 10.5pt;
    }
    #introduction .more {
        display: block;
        font-family: yekan;
        font-size: 11pt;
        position: absolute;
        text-align: center;
        bottom: 20px;
        width: 100%;
        cursor: pointer;
    }

    #introduction .more.active {
        display: block;
        font-family: yekan;
        font-size: 11pt;
        text-align: center;
        top: 20px;
        width: 100%;
        cursor: pointer;
    }


    #introduction.active {
        height: 450px !important;
    }
</style>

<div id="introduction" style="background: #fff;box-shadow: 0 1px 3px #eee;">
    <span style=" font-size: 14pt;">معرفی اجمالی محصول</span>
        <p> <?= $productInfo['introduction']; ?></p>
        <a class="more">نمایش بیشتر</a>
   </div>

<script>

    $('#introduction .more').click(function () {
        if($('#introduction').hasClass('active')){
            $('#introduction').removeClass('active');
            $('#introduction .more').html('نمایش بیشتر');
        }
        else {
            $('#introduction').addClass('active');
            $('#introduction .more').html('نمایش کمتر');
        }
    });

</script>