<?php

class model_admincategory extends Model
{
public $allChildrenIds=[];
    function __construct()
    {
        parent::__construct();
    }

    function index()
    {
    }

    function getCategory()
    {
        $sql = 'select * from tbl_category';
        $result = $this->doSelect($sql);
        return $result;
    }

    function getChildren($idcategory)
    {
        $sql = 'select * from tbl_category where parent=?';
        $result = $this->doSelect($sql, [$idcategory]);
        return $result;
    }

    function getParents($idcategory)
    {

        $categoryinfo = $this->categoryInfo($idcategory);
        $parent = $categoryinfo['parent'];
        $all_parents = [];
        while ($parent != 0) {
            $sql = 'select * from tbl_category WHERE id=?';
            $result = $this->doSelect($sql, [$parent], 1);
            array_push($all_parents, $result);
            $parent = $result['parent'];
        }
        return $all_parents;
    }

    function categoryInfo($idcategory)
    {
        $sql = 'select * from tbl_category WHERE id=?';
        $result = $this->doSelect($sql, [$idcategory], 1);
        return $result;
    }

    function addCategory($title, $parent, $edit, $idcategory)
    {
        if ($edit == '') {

            $sql = 'insert into tbl_category (title,parent) values (?,?)';
            $stmt = self::$connection->prepare($sql);
            $stmt->bindValue(1, $title);
            $stmt->bindValue(2, $parent);
            $stmt->execute();
        }
         else {
            $sql = 'update tbl_category set title=?, parent=? where id=?';
            $stmt = self::$connection->prepare($sql);
            $stmt->bindValue(1, $title);
            $stmt->bindValue(2, $parent);
            $stmt->bindValue(3, $idcategory);
            $stmt->execute();
        }

    }

    function getChilds($catIds){

        $childrenIds=[];
        foreach ($catIds as $catId){
            $children=$this->getChildren($catId);
            foreach ($children as $child){
                array_push($childrenIds,$child['id']);
            }
        }
              return $childrenIds;
    }

    function deleteCategory($ids = [])
    {
        $this->allChildrenIds=array_merge($this->allChildrenIds,$ids);
        while(sizeof($ids)>0){
            $chidrenIds=$this->getChilds($ids);
            $this->allChildrenIds=array_merge($this->allChildrenIds,$chidrenIds);
            $ids=$chidrenIds;
        }
        $x = join(',', $this->allChildrenIds);
        $sql='delete from tbl_category WHERE id IN ('.$x.')';
        $stmt = self::$connection->prepare($sql);
        $stmt->execute();
    }
    function getAttr($categoryId,$attrId){
        $sql='select * from tbl_attr WHERE idcategory=? and parent=? ORDER BY id DESC ';
        $data=[$categoryId,$attrId];
        $result=$this->doSelect($sql,$data);
        return $result;

    }
    function attrInfo($attrId){
        $sql='select * from tbl_attr WHERE id=?';
        $data=[$attrId];
        $result=$this->doSelect($sql,$data,1);
        return $result;
    }

    function addAttr($data,$categoryId,$editId){
        if($editId==''){
            $sql='insert into tbl_attr (title,parent,idcategory) VALUES (?,?,?)';
            $params=[$data['title'],$data['parent'],$categoryId];
            $this->doQuery($sql,$params);
        }
        else{

        }
        $sql='update tbl_attr set title=?, parent=? where id=?';
        $params=[$data['title'],$data['parent'],$editId];
        $this->doQuery($sql,$params);
    }
    function deleteAttr($ids = [])
    {
        $sql='select * from tbl_attr';
        $result=$this->doSelect($sql);
        foreach ($result as $row){
            $parent=$row['parent'];
            if(in_array($parent,$ids)){
                array_push($ids,$row['id']);
            }
        }

        $x = join(',', $ids);
        $sql='delete from tbl_attr WHERE id IN ('.$x.')';
        $stmt = self::$connection->prepare($sql);
        $stmt->execute();
    }

    function getAttrVal($attrId){
       $sql='select * from tbl_attr_val where idattr=?';
       $result=$this->doSelect($sql,[$attrId]);
       return $result;

    }

    function saveAttrVal($data, $attrId)
    {

        $attrValNew = $data['attrvalnew'];
        $attrValNew = array_filter($attrValNew);
        foreach ($attrValNew as $val) {
            $sql = "insert into tbl_attr_val (idattr,val) VALUES (?,?)";
            $params = array($attrId, $val);
            $this->doQuery($sql, $params);
        }

        unset($data['attrvalnew']);
        foreach ($data as $key => $val) {

            $key = explode('-', $key);
            if (isset($key[1])) {
                $valId = $key[1];

                if($val!='') {
                    $sql = "update tbl_attr_val set val=? where id=?";
                    $params = array($val, $valId);
                    $this->doQuery($sql, $params);
                }else{
                    $sql = "delete from tbl_attr_val where id=?";
                    $params = array($valId);
                    $this->doQuery($sql, $params);
                }
            }

        }

    }
}