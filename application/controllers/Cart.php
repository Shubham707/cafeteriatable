<?php 
if (!defined('BASEPATH')) exit('No direct script access allowed');
class Cart extends CI_Controller 
{
	public function index()
	{	
		
		if (!$this->cart->contents()){
			$arr['message'] = '<p>Your cart is empty!</p>';
		}else{
			$arr['message'] = $this->session->flashdata('message');
		}

		$this->load->view('cart', $arr);
	}

	public function add()
	{
		
	    $rand=rand(0,6);
		$insert_room = array(
			'id' => $rand,
			'total' => $this->input->get_post('total'),
			'bike' => $this->input->get_post('bike'),
			'name' => $this->input->get_post('plan'),
			'username' => $this->session->userdata('username'),
			'email' => $this->session->userdata('email'),
			'mobile' => $this->session->userdata('mobile'),
			'qty'=>1
		);
		print_r($insert_room); die();

		
		$this->cart->insert($insert_room);
	}
	
	function remove($rowid)
	{
		if ($rowid=="all"){
			$this->cart->destroy();
		}else{
			$data = array(
				'rowid'   => $rowid,
				'qty'     => 0
			);

			$this->cart->update($data);
		}
		$this->session->unset_userdata('voucher_code');
		$this->session->unset_userdata('voucher_discount');
		$this->session->unset_userdata('voucher_status');
				
		redirect('cart');
	}	

	function update_cart()
	{
		
		$row_ids = $this->input->get_post('row_id');
		$qty = $this->input->get_post('cart_qty');
		$price = $this->input->get_post('price');
		
		for($i=0;$i<count($row_ids);$i++){
			$data = array(
					'rowid'   => $row_ids[$i],
					'qty'     => $qty[$i],
					'price' => $qty[$i]*$price[$i]
			);
	
			$this->cart->update($data);
		}
		
		redirect('cart');
	}	
	
	
}
 