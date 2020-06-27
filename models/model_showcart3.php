<?php
class Model_showcart3 extends Model
{

    function __construct()
    {
        parent::__construct();
    }

    function getBasketReview(){
      return parent::getBasket();
    }

    function postPrice(){
        self::sessionInit();
        $addressInfo=self::sessionGet('addressInfo');
        $addressInfo=unserialize($addressInfo);
        $postType=self::sessionGet('postType');
        $cityId=$addressInfo['city'];
        $postPrice=$this->calculatePostPrice($cityId);
        if($postType==1){
            $postPrice=$postPrice['pishtaz'];
        }
        elseif ($postType==2){
            $postPrice=$postPrice['sefareshi'];
        }
        return $postPrice;

    }

}