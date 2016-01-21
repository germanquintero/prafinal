<?php

class Inicio2 extends MY_CI_Controller {

	public function index()
	{
		$this->load->model('BatallaNaval_model','bnmodel');
		$this->bnmodel->iniciarJuego();
		$data['content']=$this->load->view('inicio.phtml','',TRUE);
		$this->load->view($this->layout,$data);
	}


     public function vistaeditar(){
		 $this->load->model('BatallaNaval_model','bnmodel');
 		$data['content']=$this->load->view('EditReservas.phtml','',TRUE);
 		$this->load->view($this->layout,$data);
	 }


	 public function GetDatos(){
			 $this->load->model('BatallaNaval_model','bnmodel');
	          $episo = $this->input->post("episo");
			  $eaula = $this->input->post("eaula");
			  $ehora = $this->input->post("ehora");
			  $this->bnmodel->AulaDisponible($episo, $eaula,$ehora);
 		  	  redirect('/inicio3', 'refresh');
	 }



	 	 public function AdmInventario(){
			 $this->load->model('BatallaNaval_model','bnmodel');
	 		$data['content']=$this->load->view('editarinventario.phtml','',TRUE);
	 		$this->load->view($this->layout,$data);
		
	 	 }




}
