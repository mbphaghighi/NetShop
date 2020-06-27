<?php

class model_adminproduct extends Model
{

    function __construct()
    {
        parent::__construct();
    }

    function getProduct()
    {
        $sql = 'select * from tbl_product';
        $result = $this->doSelect($sql);
        return $result;
    }

    function getCategory()
    {

        $sql = 'select * from tbl_category';
        $result = $this->doSelect($sql);
        return $result;
    }

    function getColor()
    {

        $sql = 'select * from tbl_color';
        $result = $this->doSelect($sql);
        return $result;
    }

    function getGarantee()
    {

        $sql = 'select * from tbl_garantee';
        $result = $this->doSelect($sql);
        return $result;
    }

    function addProduct($data = [], $productId = '',$file=[])
    {
        $title = $data['title'];
        $categoryId = $data['categoryId'];
        $price = $data['price'];
        $discount = $data['discount'];
        $introduction = $data['introduction'];
        $tedad_mojod = $data['tedad_mojod'];
        $colors = '';
        if (isset($data['color'])) {
            $colors = $data['color'];
            $colors = join(',', $colors);
        }

        $garantees = '';
        if (isset($data['garantee'])) {
            $garantees = $data['garantee'];
            $garantees = join(',', $garantees);
        }


        if ($productId == '') {
            $sql = 'insert into tbl_product (title, price,cat, introduction, discount, tedad_mojod,color,garantee) values (?,?,?,?,?,?,?,?)';
            $values = [$title, $price, $categoryId, $introduction, $discount, $tedad_mojod, $colors, $garantees];
            $this->doQuery($sql, $values);
            $productId=parent::$connection->lastInsertId();
            mkdir('public/images/products/'.$productId);

        } else {
            $sql = 'update tbl_product set title=?, price=? ,cat=?, introduction=?, discount=?, tedad_mojod=?,color=?,garantee=? where id=?';
            $values = [$title, $price, $categoryId, $introduction, $discount, $tedad_mojod, $colors, $garantees, $productId];
            $this->doQuery($sql, $values);
        }
        $fileName = $file['name'];
        $fileSize = $file['size'];
        $fileTmp = $file['tmp_name'];
        $fileType = $file['type'];
        $fileError = $file['error'];
        $uploadOk = 1;
        $targetMain = 'public/images/products/' . $productId . '/';
        $newName = 'product';

        if ($fileType != 'image/jpg' and $fileType != 'image/jpeg') {
            $uploadOk = 0;
        }

        if ($fileSize > 5242880) {
            $uploadOk = 0;
        }

        if ($uploadOk == 1) {

            $ext = pathinfo($fileName, PATHINFO_EXTENSION);

            $target = $targetMain . $newName . '.' . $ext;

            move_uploaded_file($fileTmp, $target);

            $target220 = $targetMain . $newName . '_220.' . $ext;
            $target350 = $targetMain . $newName . '_350.' . $ext;

            $this->create_thumbnail($target, $target220, 220, 220);
            $this->create_thumbnail($target, $target350, 350, 350);

        }
    }

    function getProductInfo($productId)
    {
        $sql = 'select * from tbl_product where id=?';
        $result = $this->doSelect($sql, [$productId], 1);
        $colors = $result['color'];
        $garantees = $result['garantee'];
        $colors = explode(',', $colors);
        $garantees = explode(',', $garantees);
        $result['colorsInfo'] = [];
        $result['garanteesInfo'] = [];
        foreach ($colors as $color) {
            $sql = 'select * from tbl_color where id=?';
            $colorInfo = $this->doSelect($sql, [$color], 1);
            array_push($result['colorsInfo'], $colorInfo);
        }
        foreach ($garantees as $garantee) {
            $sql = 'select * from tbl_garantee where id=?';
            $garanteeInfo = $this->doSelect($sql, [$garantee], 1);
            array_push($result['garanteesInfo'], $garanteeInfo);
        }


        return $result;

    }

    function getNaghd($productId)
    {
        $sql = 'select * from tbl_naghd where idproduct=? ORDER BY id desc';
        $result = $this->doSelect($sql, [$productId]);
        return $result;
    }

    function addNaghd($productId, $data = [], $naghdId = '')
    {
        if ($naghdId == 0) {
            $sql = 'insert into tbl_naghd (title,description,idproduct) values(?,?,?) ';
            $params = [$data['title'], $data['description'], $productId];
            $this->doQuery($sql, $params);
        } else {
            $sql = 'update tbl_naghd set title=?,description=? where id=? ';
            $params = [$data['title'], $data['description'], $naghdId];
            $this->doQuery($sql, $params);
        }
    }

    function naghdInfo($naghdId)
    {
        $sql = 'select * from tbl_naghd where id=?';
        $result = $this->doSelect($sql, [$naghdId], 1);
        return $result;
    }

    function deleteNaghd($ids = [])
    {
        $ids = join(',', $ids);
        $sql = 'delete from tbl_naghd where id In (' . $ids . ') ';
        $this->doQuery($sql);
    }

    function deleteProduct($ids = [])
    {
        $ids = join(',', $ids);
        $sql = 'delete from tbl_product WHERE id IN (' . $ids . ') ';
        $this->doQuery($sql);

        $sql = 'delete from tbl_naghd WHERE id IN (' . $ids . ') ';
        $this->doQuery($sql);
    }

    function getAttrVal($attrId){

        $sql='select * from tbl_attr_val where idattr=?';
        $values=$this->doSelect($sql,[$attrId]);
        return $values;
    }

    function getProductAttr($productId)
    {

        $productInfo = $this->getProductInfo($productId);
        $catId = $productInfo['cat'];
        $sql = 'select tbl_attr.*, tbl_product_attr.idval from tbl_attr left JOIN tbl_product_attr ON tbl_attr   .id=tbl_product_attr.idattr and tbl_product_attr.idproduct=? where idcategory=? AND parent!=0';
        $result = $this->doSelect($sql, [$productId, $catId]);

        foreach ($result as $key => $attr) {
            $values = $this->getAttrVal($attr['id']);
            $result[$key]['values'] = $values;

        }
        return $result;


    }
    function editAttr($data = array(), $productId)
    {

        $ids = $data['id'];
        foreach ($ids as $id) {

            $sql = "delete from tbl_product_attr where idproduct=? and idattr=?";
            $params = array($productId, $id);
            $this->doQuery($sql, $params);

            $sql = "insert into tbl_product_attr (idproduct,idattr,idval) VALUES (?,?,?) ";
            $params = array($productId, $id, $data['x' . $id]);
            $this->doQuery($sql, $params);
        }

    }
    function getGallery($productId){
        $sql='select * from tbl_gallery WHERE idproduct=?';
        $result=$this->doSelect($sql,[$productId]);
        return $result;
    }

    function addGallery($productId,$file)
    {
        $fileName = $file['name'];
        $fileSize = $file['size'];
        $fileTmp = $file['tmp_name'];
        $fileType = $file['type'];
        $fileError = $file['error'];
        $uploadOk = 1;
        $targetMain = 'public/images/products/' . $productId . '/gallery/';
        $newName = time();

        if ($fileType != 'image/jpg' and $fileType != 'image/jpeg') {
            $uploadOk = 0;
        }

        if ($fileSize > 5242880) {
            $uploadOk = 0;
        }

        if ($uploadOk == 1) {

            $ext = pathinfo($fileName, PATHINFO_EXTENSION);

            $target = $targetMain .'large/'. $newName . '.' . $ext;

            move_uploaded_file($fileTmp, $target);

            $target_small = $targetMain .'small/'. $newName. '.'. $ext;
            $this->create_thumbnail($target, $target_small, 115, 115);
            $sql='insert into tbl_gallery (img,idproduct) VALUES (?,?)';
            $data=[$newName.'.'.$ext,$productId];
            $this->doQuery($sql,$data);

        }

    }

    function deleteGallery($ids,$productId){


        foreach($ids as $galleryId){
            $sql='select * from tbl_gallery where id=?';
            $result=$this->doSelect($sql,[$galleryId],1);
            $filename=$result['img'];
            $dir='public/images/products/'.$productId.'/gallery/';
            $dir_small=$dir.'small/'.$filename;
            $dir_large=$dir.'large/'.$filename;
            unlink($dir_small);
            unlink($dir_large);
        }
        $ids_str=join(',',$ids);
        $sql='delete from tbl_gallery where id in ('.$ids_str.')';
        $this->doQuery($sql);

    }

}