<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller 
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('User_model');
		$this->load->database();
		$this->load->library('session');
		

	}
	
	public function index()
	{		
		 $this->load->view('admin/index');
		
	}
	public function admin_login()
	{
		$admin_name = $this->input->post('admin_name');
		$password = md5($this->input->post('password'));
		
		$user=$this->db->get('admin')->result();
		//print_r($user); die();
		if($user[0] == 1)
		{
			foreach ($user as $key) 
			{
				$data1 = array(
                'id' => $key->id,
                'admin_name' => $key->admin_name,
                'username' => $key->username,
                'admin_in'=>true,
               );
			}
				$this->session->set_userdata($data1);
				redirect(base_url().'admin/dashboard');				
		}
		else{
			redirect(base_url().'admin/login');
	
		}
	}
	

	public function logout()
	{
		$this->session->sess_destroy();
		redirect(base_url().'admin/login');
	}

}
