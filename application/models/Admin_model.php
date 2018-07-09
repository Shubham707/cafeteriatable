<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Admin_model extends CI_Model
{
	public function __construct()
	{
		$this->load->database();
	}
	/*login admin*/
	public function admin_login($user_email,$user_pass)
	{
	return	$data=$this->db->get_where('admin',array('email'=> $user_email,'password'=>$user_pass,))->num_rows();	
	}




	
}
