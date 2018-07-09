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
		 $this->load->view('login');
		
	}
	public function save()
	{
		$data = array(
			'name' => $this->input->post('name'), 
			'email' => $this->input->post('email'),
			'mobile' => $this->input->post('mobile'),
			'password' => md5($this->input->post('password')),
		);
		//print_r($data); die();
		$this->User_model->customer_form_insert($data);
		redirect(base_url().'login');
	}
	public function user_login()
	{
		$admin_name = $this->input->post('email');
		 $password = md5($this->input->post('password'));
		$admin = $this->User_model->admin_login($admin_name,$password);

		if($admin == 1)
		{
			$user=$this->db->get('users')->result();
			foreach ($user as $key) 
			{
				$data1 = array(
                'id' => $key->id,
                'name' => $key->name,
                'email' => $key->email,
                'mobile' => $key->mobile,
                'login_in'=>true,
               );
			}
				$this->session->set_userdata($data1);
				redirect(base_url().'profile');				
		}
		else{
			redirect(base_url().'login');
	
		}
	}
	

	public function logout()
	{
		$this->session->sess_destroy();
		redirect(base_url().'login');
	}

}
