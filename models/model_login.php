<?php

class model_login extends Model
{

    function __construct()
    {
        parent::__construct();
    }

    function index()
    {

    }

    function checkUser($form)
    {

        $email = $form['email'];
        $password = $form['password'];

        $sql="select * from tbl_user where email=? and password=?";
        $params=[$email,$password];
        $result=$this->doSelect($sql,$params);

        $level=$result[0]['level'];
        if(sizeof($result)>0 and !empty($email) and !empty($password) and $level==3){
            echo 'correct user pass!';
            Model::sessionInit();
            Model::sessionSet('userId',$result[0]['id']);
        }
        else{
            echo 'wrong user pass!';
        }
    }

}


?>










