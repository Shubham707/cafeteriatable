<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends CI_Controller 
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('User_model');
		$this->load->database();
		$this->load->library('session');
		if(!$this->session->userdata('login_in')==true)
	    {
	      redirect(base_url().'login/logout');
	    }

	}
	
	public function index()
	{
		$this->load->view('user/profile');
	}
	
}
