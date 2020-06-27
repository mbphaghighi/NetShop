<?php
class Register extends Controller{

    function __construct()
    {
    }
    function index(){
        if(isset($_POST['email'])){

            $this->model->doRegister($_POST);
        }
        $this->view('register/index');
    }

}