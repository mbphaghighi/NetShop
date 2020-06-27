<?php
class Product extends Controller
{

    function __construct()
    {
    }

    function index($id,$activeTab='naghd')
    {
        $productInfo = $this->model->productInfo($id);
        $onlydigi = $this->model->onlydigi();
        $gallery=$this->model->getGallery($id);
        $data = ['productInfo' => $productInfo, 'onlyclicksite' => $onlydigi,'gallery'=>$gallery,'activeTab'=>$activeTab];
        $this->view('product/index', $data);
    }

    function tab($id,$idcategory)
    {
        $number = $_POST['number'];
        if ($number == 0) {
            $naghd = $this->model->naghd($id);
           $data = [$naghd];
            $this->view('product/tab1', $data, 1, 1);
        }

        if ($number == 1) {

            $fanni = $this->model->fanni($idcategory,$id);
            $data = [$fanni];
            $this->view('product/tab2', $data, 1, 1);
        }
        if ($number == 2) {
            $comment_param = $this->model->comment_param($idcategory, $id);

            $comment_param_names = $comment_param[0];
            $comment_param_scores = $comment_param[1];

            $comments = $this->model->getComment($id);
            $data = [$comment_param_names, $comments, $comment_param_scores,$id];
            $this->view('product/tab3', $data, 1, 1);
        }
        if ($number == 3) {
            $getQuestions = $this->model->getQuestions($id);
            $questions = $getQuestions[0];
            $answers = $getQuestions[1];
            $data =[$questions, $answers,$id];
            $this->view('product/tab4', $data, 1, 1);
        }
    }

    function addtobasket($productId,$color=0,$garantee=0){
        $this->model->addToBasket($productId,$color,$garantee);

    }

}