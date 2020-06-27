<?php
class Model_showcart extends Model{

    function __construct()
    {
        parent::__construct();
    }


    function deleteBasket($productId){
        $sql='delete from tbl_basket WHERE id=?';
        $params=[$productId];
        $this->doQuery($sql,$params);
    }

    function updateBasket($data){
        $tedad=$data['tedad'];
        $basketRow=$data['basketRow'];
        $sql='update tbl_basket set tedad=? where id=?';
        $params=[$tedad,$basketRow];
        $this->doQuery($sql,$params);


    }


}