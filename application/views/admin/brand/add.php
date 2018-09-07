
 <?php $this->load->view('include/admin_header');?>
 <?php $this->load->view('include/sidebar');?>
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
   

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-offset-3 col-md-6">

          <div class="box box-danger">
            <div class="box-header">
              <h3 class="box-title">Menu Add</h3>
            </div>
            <form name="frm" action="<?php echo base_url('admin/brand/save');?>" method="post">
            <div class="box-body">
               <div class="form-group">
                <label>Menu Category.</label>
                <div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <select  class="form-control" name="Brand_menu" >
                    <option>Please Select Category</option>
                    <?php foreach($menu as $menus){ ?>
                    <option><?= ucfirst($menus->Category_Name);?></option>
                  <?php }?>
                  </select>
                </div>
              </div>
              

              <div class="form-group">
                <label>Menu Name.</label>
                <div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" class="form-control" name="Brand_Name">
                </div>
              </div>
              <div class="form-group">
                <label>Menu Price.</label>
                <div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" class="form-control" name="Brand_price">
                </div>
              </div>
               <div class="form-group">
                <div class="input-group">
                 
                  <input type="submit" class="btn btn-primary" name="submit" value="Submit">
                </div>
              </div>
            </div>
            </form>
          </div>
        </div>
       
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 
<?php $this->load->view('include/admin_footer');?>