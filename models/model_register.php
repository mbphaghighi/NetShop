<?php
class model_register extends Model
{

    function __construct()
    {
        parent::__construct();
    }

    function doRegister($data)
    {

        $email = $data['email'];
        $password = $data['password'];
        @$rule = $data['rule'];
        $khabarname = $data['khabarname'];

        if (isset($rule)) {
            $sql = 'insert into tbl_user (email,password,khabarname) values (?,?,?)';
            $data = [$email, $password, $khabarname];
            $result = $this->doQuery($sql, $data);

            header('location:' . URL . 'login');

        }
    }



}