<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?php echo $title;?> </title>
      <script>var base_url = "<?php echo base_url() ?>";</script>
     
<!-- Chart.js -->
    <script src="<?php echo base_url('theme/vendors/Chart.js/dist/Chart.min.js'); ?>"></script>
    <script src="<?php echo base_url('theme/build/js/jquery.min.js'); ?>"></script>
    <script src="<?php echo base_url('theme/build/js/bootstrap-select.js'); ?>"></script>
    <link href="<?php echo base_url('theme/vendors/bootstrap/dist/css/bootstrap.min.css'); ?>" rel="stylesheet">
    <link href="<?php echo base_url('theme/vendors/font-awesome/css/font-awesome.min.css'); ?>" rel="stylesheet">
    <link href="<?php echo base_url('theme/vendors/nprogress/nprogress.css" rel="stylesheet'); ?>">
    <link href="<?php echo base_url('theme/vendors/bootstrap-daterangepicker/daterangepicker.css'); ?>" rel="stylesheet">
    <link href="<?php echo base_url('theme/build/css/custom.css'); ?>" rel="stylesheet">
    <!-- iCheck -->
    <link href="<?php echo base_url('theme/vendors/iCheck/skins/flat/green.css'); ?>" rel="stylesheet">
    <!-- bootstrap-wysiwyg -->
    <link href="<?php echo base_url('theme/vendors/google-code-prettify/bin/prettify.min.css'); ?>" rel="stylesheet">
    <!-- Select2 -->
    <link href="<?php echo base_url('theme/vendors/select2/dist/css/select2.min.css'); ?>" rel="stylesheet">
    <!-- Switchery -->
    <link href="<?php echo base_url('theme/vendors/switchery/dist/switchery.min.css'); ?>" rel="stylesheet">
    <!-- starrr -->
    <link href="<?php echo base_url('theme/vendors/starrr/dist/starrr.css'); ?>" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="#" class="site_title"><i class="fa fa-paw"></i> <span>E-Link</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2><?php echo $this->session->userdata('ses_nama');?></h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

