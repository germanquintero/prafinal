<?php

class Inicio3 extends MY_CI_Controller {

	public function index()
	{
		$this->load->model('BatallaNaval_model','bnmodel');
		$this->bnmodel->iniciarJuego();
		$data['content']=$this->load->view('inicio2.phtml','',TRUE);
		$this->load->view($this->layout,$data);
	}
	public function hola()
	{
	echo "holaaa";

	}


}
