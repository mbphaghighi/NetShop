<?php
class model_index extends Model{
    function __construct()
    {
      parent::__construct();
    }
    function getSlider1(){

        $sql='select * from tbl_slider1';
        $result=$this->doSelect($sql);
        return $result;

    }
    function getSlider2(){

        $sql='select * from tbl_product WHERE special=?';
        $result=$this->doSelect($sql,[1]);

        foreach ($result as $key=>$row){
            $price = $row['price'];
            $discount = $row['discount'];
            $price_total=($price-($discount*$price/100));
            $result[$key]['price_total']=$price_total;
        }

        $first_row=$result[0];
        $special=$first_row['time_special'];
        $option=self::getoption();
        $duration=$option['special_time'];
        $duration=$duration*3600;

        $end_time=$special+$duration;
        date_default_timezone_set('Asia/Tehran');
        $date=date('F d, Y H:i:s',$end_time);
        return [$result,$date];

    }
    function onlydigi(){
        $sql='select * from tbl_product WHERE onlydigi=?';
        $result=$this->doSelect($sql,[1]);
        return $result;
    }
    function mostviewed(){
        $option=self::getoption();
        $limit=$option['limit_slider'];

        $sql='select * from tbl_product order by viewed DESC limit '.$limit.' ';
        $result=$this->doSelect($sql);
        return $result;
    }
    function lastproduct(){

        $option=self::getoption();
        $limit=$option['limit_slider'];

        $sql='select * from tbl_product order by id DESC limit '.$limit.' ';
        $result=$this->doSelect($sql);
        return $result;
    }
}