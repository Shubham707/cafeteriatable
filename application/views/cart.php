<?php

$this->load->view('include/header');

?>

<script>
function clear_cart() {
	var result = confirm('Are you sure want to clear all bookings?');
	
	if(result) {
		window.location = "<?php echo base_url();?>cart/remove/all";
	}else{
		return false; // cancel button
	}
}
</script>


<div style="background:#000; width:100%;height:93px;"></div>

<div class="booking-form">
<div class="columns-container">



  <div class="container" id="columns">
    <div class="col-md-12"> 
    </div>
    <div class="col-md-12"> 
      <h2 class="page-heading no-line"> <span class="page-heading-title2">Ground Cart Summary</span> </h2> 
    </div>
    <div class="col-md-12">
      <div class="page-content page-order">
        <form action="<?php echo base_url().'cart/update_cart/';?>" method="post">
          <?php if ($cart = $this->cart->contents()): ?>
        <div class="heading-counter warning" style="background:#e63125 !important; padding:10px;margin-bottom:20px;color:#fff">Your  cart contains: <span>
          <?php echo count($this->cart->contents());?>
           Ground Booking</span> </div>
          <div class="order-detail-content">

		<div class="table-responsive">

            <table class="table table-bordered table-hover cart_summary">
              <thead style="background:#fee2d9">
                <tr>
                  <th class="cart_product">Sr.</th>
                  <th>Plan</th>
                  <th>Bike</th>
                  <th>Amount</th>
                  <th  class="action">Actions</th>
                </tr>
              </thead>
              <tbody>
                <?php  $grand_total = 0; $i=1;	foreach ($cart as $item): 

                $size='';
							echo form_hidden('cart['. $item['id'] .'][id]', $item['id']);
							echo form_hidden('cart['. $item['id'] .'][prdid]', $item['prdid']);
							echo form_hidden('cart['. $item['id'] .'][rowid]', $item['rowid']);
							echo form_hidden('cart['. $item['id'] .'][name]', $item['name']);
							//echo form_hidden('cart['. $item['id'] .'][skucode]', $item['skucode']);
							echo form_hidden('cart['. $item['id'] .'][price]', $item['price']);
							//echo form_hidden('cart['. $item['id'] .'][qty]', $item['qty']);
							echo form_hidden('cart['. $item['id'] .'][size]', $item['size']);
							//echo form_hidden('cart['. $item['id'] .'][color]', $item['color']);
							
							
						?>

              <tr>



        <td><?php echo $i++; ?></td>
				<td><?php echo $item['name']; ?></td>
				<td>
				</td>

				<td><?php echo 'Rs. '.(count($ss) * $item['total']); ?></td>

                <td class="action"><a href="<?php echo base_url().'cart/remove/'.$item['rowid']?>" title="Delete"><i class="fa fa-trash-o"></i></a></td>



              </tr>



              <?php endforeach; ?>



                </tbody>
              <tfoot>

              </tfoot>
            </table>

		        </div>

            <div class="cart_navigation"> 


              <td colspan="10" align="right"><input type="button" value="Clear Cart" class="btn btn-default btn-gradient" onclick="clear_cart()">



              <button type="button" title="Proceed to Checkout" class="btn btn-13 pull-right prev-btn" onclick="window.location='<?php echo base_url('checkout');?> ';"><span><span>Proceed to Checkout</span></span></button>



            </div>



          </div>



        </form>



        <?php else: ?>



        <h2 align="center">Please add your slots to cart, your cart is currently empty</h2>



        <?php endif; ?>



      </div>



    </div>



  </div>



</div>

</div>

<?php

$this->load->view('include/footer');







?>



