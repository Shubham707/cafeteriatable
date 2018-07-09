
 <?php $this->load->view('include/admin_header');?>
 <?php $this->load->view('include/sidebar');?>
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
   

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
         

          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Brand Details</h3><br>
              <a class="btn btn-primary pull-right" href="<?php echo  base_url('admin/brand/add')?>">Add Brand</a>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Sr No.</th>
                  <th>Brand Id</th>
                  <th>Brand Name</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                  <?php $i=1; foreach($brands as $brand){?>
                <tr>
                  <td><?php echo $i++;?></td>
                  <td><?php echo $brand->Brand_ID;?></td>
                  <td><?php echo $brand->Brand_Name;?></td>
                  <td><a class="btn btn-primary" href="<?php echo  base_url('admin/brand/edit/').$brand->SN;?>"><i class="fa fa-eye"></i></a>&nbsp;<a class="btn btn-danger" href="<?php echo  base_url('admin/brand/delete/').$brand->SN;?>"><i class="fa fa-trash"></i></a></td>
                </tr>
              <?php }?>
                 </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 
<?php $this->load->view('include/admin_footer');?>