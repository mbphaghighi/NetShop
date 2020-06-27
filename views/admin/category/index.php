<?php

$activeMenu='category';
require('views/admin/layout.php');
$categoryinfo = [];
if (isset($data['categoryinfo'])) {
    $categoryinfo = $data['categoryinfo'];

}
$parents = [];
if (isset($data['parents'])) {
    $parents = $data['parents'];
    $parents = array_reverse($parents);
}
$category = $data['category'];
?>

<div class="left">
    <p class="title">
        مدیریت دسته ها
        -<?php foreach ($parents as $row) { ?>
            <a href="admincategory/showchildren/<?= $row['id'] ?>"><?= $row['title'] ?></a>-
        <?php } ?>
        <a href="admincategory/<?php if (isset($categoryinfo['id'])) {
            echo 'showchildren/' . $categoryinfo['id'];
        } else {
            echo 'index';
        } ?>"><?php if (isset($categoryinfo['title'])) {
                echo $categoryinfo['title'];
            } else {
                echo 'دسته های اصلی';
            } ?></a>
    </p>

    <a class="btn_green_small" href="admincategory/addcategory/<?= $categoryinfo['id'] ?>">افزودن</a>
    <a class="btn_red_small" onclick="submitForm()">حذف</a>
    <form action="admincategory/deletecategory/<?= $categoryinfo['id'] ?>" method="post">
        <table cellspacing="0" class="list">
            <tr>
                <td>ردیف</td>
                <td>عنوان دسته</td>
                <td>مشاهده دسته</td>
                <td>ویرایش</td>
                <td>ویژگی ها</td>
                <td>انتخاب</td>
            </tr>
            <?php
            foreach ($category as $row) {
                ?>
                <tr>
                    <td><?= $row['id'] ?></td>
                    <td><?= $row['title'] ?></td>
                    <td><a href="admincategory/showchildren/<?= $row['id'] ?>"><img src="public/images/view_icon.png"
                                                                                    class="view"></a>
                    </td>
                    <td><a href="admincategory/addcategory/<?= $row['id'] ?>/edit"><img
                                    src="public/images/edit_icon.ico"
                                    class="edit"
                                    style="width:20px;height:20px;"></a>
                    </td>
                    <td><a href="admincategory/showattr/<?= $row['id'] ?>"> مشاهده</a></td>
                    <td><input type="checkbox" name="id[]" value="<?= $row['id'] ?>"></td>
                </tr>
            <?php } ?>


        </table>
    </form>
</div>
