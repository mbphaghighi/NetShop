<?php
class Showcart3 extends Controller{

    function __construct()
    {
    }
    function index(){

        $basketInfo=$this->model->getBasketReview();
        $postPrice=$this->model->postPrice();
        model::sessionInit();
        $addressInfo=model::sessionGet('addressInfo');
        $addressInfo=unserialize($addressInfo);
        $postType=model::sessionGet('postType');
        $data=['basketInfo'=>$basketInfo,'postPrice'=>$postPrice,'addressInfo'=>$addressInfo,'postType'=>$postType];
        $postPrice=$this->view('showcart3/index',$data);

    }
}