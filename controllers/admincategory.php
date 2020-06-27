<?php

class Admincategory extends Controller {
    function __construct()
    {
        parent::__construct();
        $level=Model::getUserLevel();
        if($level!=1){header('location:'.URL.'adminlogin');}
    }

    function index(){
        $category = $this->model->getChildren(0);
        $data=['category'=>$category];
        $this->view('admin/category/index',$data);
    }

    function showchildren($idcategory=0){
        $categoryinfo=$this->model->categoryInfo($idcategory);
        $children=$this->model->getChildren($idcategory);
        $parents=$this->model->getParents($idcategory);
        $data=['categoryinfo'=>$categoryinfo,'category'=>$children,'parents'=>$parents];
        $this->view('admin/category/index',$data);
    }

    function addcategory($idcategory=0,$edit=''){
        if(isset($_POST['titlee'])) {
                $title = $_POST['titlee'];
                if($_POST['parent']=='انتخاب کنید'){
                    $parent=0;
                }
                else{ $parent = $_POST['parent'];}


                $this->model->addCategory($title,$parent,$edit,$idcategory);
                header('location:'.URL.'admincategory/showchildren/'.$idcategory);
            }


         $category=$this->model->getCategory();
        $categoryinfo=$this->model->categoryInfo($idcategory);
        $data=['category'=>$category,'parentId'=>$idcategory,'edit'=>$edit,'categoryinfo'=>$categoryinfo];
        $this->view('admin/category/addcategory',$data);

    }
    function deletecategory($parentId){
     $ids=$_POST['id'];
     $this->model->deleteCategory($ids);
     header('location:'.URL.'admincategory/showchildren/'.$parentId);
}
    function showattr($categoryId,$attrId=0){
        $attr=$this->model->getAttr($categoryId,$attrId);
        $categoryInfo=$this->model->categoryInfo($categoryId);
        $attrInfo=$this->model->attrInfo($attrId);
        $data=['attr'=>$attr,'categoryInfo'=>$categoryInfo,'attrInfo'=>$attrInfo];
        $this->view('admin/category/showattr',$data);
    }

    function addattr($categoryId=0,$parentId=0,$editId=''){

        if(isset($_POST['title'])){
            if($_POST['parent']=='انتخاب کنید'){
                $_POST['parent']=0;
            }
            else{ $parent = $_POST['parent'];
        }
            $this->model->addAttr($_POST,$categoryId,$editId);
            header('location:'.URL.'admincategory/showattr/'.$categoryId.'/'.$parentId);
            }
        $attr=$this->model->getAttr($categoryId,0);
        $categoryInfo=$this->model->categoryInfo($categoryId);
        $editInfo=$this->model->attrInfo($editId);
        $attrInfo=$this->model->attrInfo($parentId);
        $data=['attr'=>$attr,'categoryInfo'=>$categoryInfo,'parentId'=>$parentId,'editInfo'=>$editInfo,'attrInfo'=>$attrInfo];
        $this->view('admin/category/addattr',$data);

    }

    function deleteattr($categoryId,$attrId){
        $ids=$_POST['id'];
        $this->model->deleteAttr($ids);
        header('location:'.URL.'admincategory/showattr/'.$categoryId.'/'.$attrId);

    }
    function attrval($attrId){

        if(isset($_POST['submited'])){
            $this->model->saveAttrVal($_POST,$attrId);
        }

        $result=$this->model->getAttrVal($attrId);
        $attrInfo=$this->model->attrInfo($attrId);
        $data=['attrval'=>$result,'attrInfo'=>$attrInfo];
        $this->view('admin/category/attrval',$data);
    }

}