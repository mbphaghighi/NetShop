<?php

class model_product extends Model
{
    function __construct()
    {
        parent::__construct();
    }

    function productInfo($id)
    {
        $sql = 'select * from tbl_product WHERE id=?';
        $result = $this->doSelect($sql, [$id], 1);
        $price = $result['price'];
        $discount = $result['discount'];
        $price_calculate = $this->calculateDiscount($discount, $price);
        $result['price_discount'] = $price_calculate[0];
        $result['price_total'] = $price_calculate[1];

        $special = $result['time_special'];
        $option = self::getoption();
        $duration = $option['special_time'];
        $duration = $duration * 3600;
        $end_time = $special + $duration;
        date_default_timezone_set('Asia/Tehran');
        $date = date('F d, Y H:i:s', $end_time);
        $result['date_special'] = $date;

        $colors = $result['color'];
        $colors = explode(',', $colors);
        $colors = array_filter($colors);
        $all_colors = [];
        foreach ($colors as $color) {
            $colorInfo = $this->colorInfo($color);
            array_push($all_colors, $colorInfo);
        }
        $result['all_colors'] = $all_colors;

        $garantees = $result['garantee'];
        $garantees = explode(',', $garantees);
        $garantees = array_filter($garantees);
        $all_garantees = [];
        foreach ($garantees as $garantee) {
            $garanteeInfo = $this->garanteeInfo($garantee);
            array_push($all_garantees, $garanteeInfo);
        }
        $result['all_garantees'] = $all_garantees;

        return $result;

    }

    function colorInfo($id)
    {
        $sql = 'select * from tbl_color WHERE id=?';
        $result = $this->doSelect($sql, [$id], 1);
        return $result;
    }

    function garanteeInfo($id)
    {
        $sql = 'select * from tbl_garantee WHERE id=?';
        $result = $this->doSelect($sql, [$id], 1);
        return $result;
    }

    function onlydigi()
    {
        $sql = 'select * from tbl_product WHERE onlydigi=?';
        $result = $this->doSelect($sql, [1]);
        return $result;
    }

    function naghd($id)
    {
        $sql = 'select * from tbl_naghd where idproduct=?';
        $result = $this->doSelect($sql, [$id]);
        return $result;
    }

    function fanni($idcategory,$idproduct)
    {
        $sql = 'select * from tbl_attr where idcategory=? and parent=0';
        $result = $this->doSelect($sql, [$idcategory]);
        foreach ($result as $key => $row) {
         $sql2 = 'select  tbl_attr.title, tbl_attr_val.val, tbl_product_attr.idval from tbl_attr
        LEFT JOIN tbl_product_attr ON tbl_attr.id=tbl_product_attr.idattr AND tbl_product_attr.idproduct=? 
        LEFT JOIN tbl_attr_val ON tbl_product_attr.idval=tbl_attr_val.id 
        WHERE tbl_attr.parent=? ';
            $params=[$idproduct,$row['id']];
            $result2 = $this->doSelect($sql2, $params);
            $result[$key]['children'] = $result2;
        }
        return $result;
    }

    function comment_param($idcategory,$idproduct)
    {
        $sql = 'select * from tbl_comment_param WHERE idcategory=?';
        $result = $this->doSelect($sql, [$idcategory]);

        $sql='select * from tbl_comment WHERE idproduct=?';
        $result2 = $this->doSelect($sql,[$idproduct]);

        foreach ($result2 as $row){
            $params_score=$row['param'];
            $params_score=unserialize($params_score);

            foreach ($params_score as $key=>$val){
                $param_id=$key;
                $score=$val;
                $score=intval($score);
                if(!isset( $scores_total[$param_id])){
                    $scores_total[$param_id]=0;
                }
                $scores_total[$param_id]= $scores_total[$param_id]+$score;
            }

            }
            $total_comments=sizeof($result2);
        if($total_comments>0){

            foreach ($scores_total as $key=>$val){
                $val=$val/$total_comments;
                $scores_total[$key]=$val;
            }
            return [$result,$scores_total];
        }
    }


    function getComment($idproduct){
        $sql = 'select * from tbl_comment WHERE idproduct=?';
        $result = $this->doSelect($sql, [$idproduct]);
        return $result;
    }

    function getQuestions($idproduct){
        $sql = 'select * from tbl_question WHERE idproduct=? AND parent=0';
        $question = $this->doSelect($sql, [$idproduct]);
        $sql2='select * from tbl_question WHERE parent!=0';
        $all_answers=$this->doSelect($sql2);
        $all_answers_new=[];
        foreach ($all_answers as $answer){
            $parent=$question_id=$answer['parent'];
            $all_answers_new[$question_id]=$answer;
        }
        return [$question,$all_answers_new];
    }

    function getGallery($idproduct){
        $sql = 'select * from tbl_gallery WHERE idproduct=? ORDER BY threed DESC ';
        $result = $this->doSelect($sql, [$idproduct]);
        return $result;
    }

    function addToBasket($productId,$color=0,$garantee=0){
        $cookie=self::getBasketCookie();
        $sql='select * from tbl_basket where cookie=? and idproduct=? and color=? and garantee=?';
        $params=[$cookie,$productId,$color,$garantee];
        $result=$this->doSelect($sql,$params);
        if(isset($result[0])){

            $sql='update tbl_basket set tedad=tedad+1 where cookie=? and idproduct=? and color=? and garantee=?';
                    }
        else{
            $sql='insert into tbl_basket (cookie,idproduct,tedad,color,garantee) VALUES (?,?,1,?,?)';

                    }
        $params=[$cookie,$productId,$color,$garantee];
        $this->doQuery($sql,$params);

    }
}