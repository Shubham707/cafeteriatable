<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Plan extends CI_Controller 
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
	
	
	public function plans($value,$plan)
	{
		$val=str_replace('%20', '_', $value);
		if($val=='Bikes_Below_150CC'){
		    $data['bike_details']=$this->db->get_where('pricing_table',array('Bikes_Below_150CC'=> $val))->result();

		}else if($val=='Scooters_Below_150CC'){
			$data['bike_details']=$this->db->get_where('pricing_table',array('Scooters_Below_150CC'=> $val))->result();

		}else if($val=='Bikes_Btw_150_220CC'){
			$data['bike_details']=$this->db->get_where('pricing_table',array('Bikes_Below_150CC'=> $val))->result();

		}else if($val =='Bikes_Btw_220_500CC'){
			$data['bike_details']=$this->db->get_where('pricing_table',array('Bikes_Below_150CC'=> $val))->result();

		}
		//print_r($data['bike_details']); die();
		$data['bike']=$val;
		 $data['plan_bike']=str_replace('%20', ' ', $plan);
		$data['plan']=$this->db->get('category_table')->result();
		$this->load->view('plan-select',$data);
	}

	public function plan_service($value,$bike)
	{

		 $name=str_replace('%20', ' ', $value); 
		$data=$this->db->get_where('pricing_table',array('Category_Name'=> $name))->result();
		foreach($data as $key)
		{
			if($bike=='Scooters_Below_150CC'){
		     echo "<input type='checkbox' data-id='".$key->Service_Name."' onClick='ShowModal(this)' name='set_up[]' value='".$key->Scooters_Below_150CC."'>".$key->Service_Name."<br><br>";
			}
			else if($bike=='Bikes_150CC_and_220CC'){
		     echo "<input type='checkbox' data-id='".$key->Service_Name."' name='set_up[]' onClick='ShowModal(this)' value='".$key->Bikes_Btw_150_220CC."'>".$key->Service_Name."<br><br>";
			}
			else if($bike=='Bikes_Below_150CC'){
		     echo "<input type='checkbox' data-id='".$key->Service_Name."' name='set_up[]' onClick='ShowModal(this)' value='".$key->Bikes_Below_150CC."'>".$key->Service_Name."<br><br>";
			}
			else if($bike=='Bikes_220CC_and_500CC'){
		     echo "<input type='checkbox' data-id='".$key->Service_Name."' onClick='ShowModal(this)' name='set_up[]' value='".$key->Bikes_Btw_220_500CC."'>".$key->Service_Name."<br><br>";
			}
		}


	}
	
}
