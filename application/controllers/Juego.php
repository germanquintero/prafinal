<?php

class Juego extends MY_CI_Controller
{

	public function atacar()
	{
		$this->load->model('BatallaNaval_model','bnmodel');
		$result['piso1']=$this->bnmodel->cargar1();
		$result['piso2']=$this->bnmodel->cargar2();
		print json_encode($result);

	}



}
