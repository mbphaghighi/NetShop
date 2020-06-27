<?php
class Showcart4 extends Controller{

    function __construct()
    {
    }
    function index($Status=''){
        $data=['Status'=>$Status];
        $this->view('showcart4/index',$data);
    }

    function checkcode($code){
        $result=$this->model->checkCode($code);
        $totalPrice=$this->model->calculateTotalPrice($code);
        $array=[$result,$totalPrice];
        echo json_encode($array);
            }

    function calculatetotalprice(){
        $totalPrice=$this->model->calculateTotalPrice($_POST['code']);
        echo $totalPrice;

    }

    function saveorder(){
        $this->model->saveOrder($_POST);
    }
}