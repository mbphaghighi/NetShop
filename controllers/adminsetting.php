<?php

class Adminsetting extends Controller
{

    function __construct()
    {
        parent::__construct();
        $level=Model::getUserLevel();
        if($level!=1){header('location:'.URL.'adminlogin');}
    }

    function index()
    {
        if(isset($_POST['limit_slider'])){

            $this->model->saveSetting($_POST);

        }
        $this->view('admin/setting/index');
    }

}


?>














