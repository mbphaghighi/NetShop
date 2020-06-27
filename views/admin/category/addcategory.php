<?php
require('views/admin/layout.php');
$edit=$data['edit'];
$categoryinfo=$data['categoryinfo'];
?>
<style>

    .row {
        width: 100%;
        margin-top: 5px;
        float: right;
    }

    .span_title {
        display: inline-block;
        width: 150px;
        float: right;
    }

    input {
        height: 24px;
        width: 200px;
    }
     select{padding:3px;}
    option{font-size: 10pt; padding: 4px;}
</style>
<div class="left">
    <p class="title">
        <?php if($edit==''){?>
        ایجاد دسته جدید
       <?php } else{ ?>
    ویرایش دسته
    <?php }?>

    <form action="admincategory/addcategory/<?= $categoryinfo['id']?>/<?= $edit?>" method="post">

        <div class="row">
            <span class="span_title">عنوان دسته</span>

            <input type="text" name="titlee" value="<?php if($edit==''){}else{ echo $categoryinfo['title'];}?>">

        </div>
        <div class="row">
            <span class="span_title">دسته والد</span>

           <select name="parent" autocomplete="off">


               <option>انتخاب کنید</option>
               <?php
               $category=$data['category'];
               $parentId=$data['parentId'];
               if($edit==''){
                   $selectedid=$parentId;
               }
               else{
                   $selectedid=$categoryinfo['parent'];
               }

               foreach ($category as $row){
                   if($row['id']==$selectedid){
                       $x='selected';}
                       else{
                           $x='';
                       }


                   ?>

                   <option value="<?= $row['id'];?>" <?= $x?>><?= $row['title'];?></option>
               <?php }?>


           </select>
        </div>

        <a class="btn_green_small" onclick="submitForm();" >
                 اجرای عملیات</a>

    </form>


</div>




