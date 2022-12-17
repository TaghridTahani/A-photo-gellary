<?php 

class Contact extends Controller
{

   	public function index()
	{
		$data['page_title'] = "Contact";

		if(isset($_POST['email']))
		{
			$model = $this->loadModel("user");
			$model->contact($_POST);
		}

		$this->view("catalog/Contact",$data);
	}
	
}