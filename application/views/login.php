<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title><?php echo $title;?></title>
    <link href="<?php echo base_url('theme/production/bootstrap.min.css');?>" rel="stylesheet">
    <link href="<?php echo base_url('theme/vendors/bootstrap/dist/css/bootstrap.min.css');?>" rel="stylesheet">
    <link href="<?php echo base_url('theme/vendors/font-awesome/css/font-awesome.min.css')?>" rel="stylesheet">
    <link href="<?php echo base_url('theme/vendors/nprogress/nprogress.css')?>" rel="stylesheet')?>">
    <link href="<?php echo base_url('theme/vendors/animate.css/animate.min.css')?>" rel="stylesheet">
    <link href="<?php echo base_url('theme/build/css/custom.min.css') ?>" rel="stylesheet">
</head>
<body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form action="<?php echo base_url().'Proses_login/auth'?>" method="post">
              <h1>Login Form</h1>
              <?php echo $this->session->flashdata('msg');?>
              <div>
                <input type="text" class="form-control" name="username" placeholder="No. KTP" required="" />
              </div>
              <div>
                <input type="password" class="form-control" name="password" placeholder="Password" required="" />
              </div>
              <div>
                <button type="submit" class="btn btn-success " >Log in</button>
                
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>