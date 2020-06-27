<?php
class index extends Controller
{

    function __construct()
    {

    }

    function index()
    {
        $slider1=$this->model->getSlider1();
        $slider2=$this->model->getSlider2();
        $onlydigi=$this->model->onlydigi();
        $mostviewd=$this->model->mostviewed();
        $lastproduct=$this->model->lastproduct();
        $slider2_items=$slider2[0];
        $date_end=$slider2[1];
        $data=[$slider1,$slider2_items,$date_end,$onlydigi,$mostviewd,$lastproduct];
        $this->view('index/index',$data);
    }


}