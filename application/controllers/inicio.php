<?php

class Inicio extends MY_CI_Controller {

	public function index()
	{
		redirect('auth/login', 'refresh');

	}


}
