<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="<?php echo base_url(); ?>assets/images/favicon.png">
    <title></title>
    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url(); ?>assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<?php echo base_url(); ?>assets/css/style.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="<?php echo base_url(); ?>assets/css/colors/blue.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<style type="text/css">
/* .card-body.loginpage {
    padding: 2.25em 2.25em;
}
.login-sidebar .login-box {
    right: 42%;
    position: absolute;
    height: 46%;
    top: 30%;
    /* left: 30%; */
    align-items: normal;
    background-color: #c1c1c166;
}   */

    .login-box {
        width: 90%
    }
    .login-sidebar {
        padding: 10% 0
    }
    .login-sidebar .login-box {
        position: relative
    }
    .card-body.loginpage {
        padding: 15% 1.25em;
    }  
    .card-body.loginpage {
        padding: 10% 2.25em 0px;
    }
    .login-sidebar .login-box {
        height: 100%;
    }  
</style>
</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <section id="wrapper" class="login-register login-sidebar" style="background-image:url(<?php echo base_url(); ?>assets/images/background/login-register.jpg);">
        <div class="login-box card">
            <div class="card-body loginpage">
                <?php if (empty($message) == FALSE) {
                    echo $message;
                }?>
                <form class="form-horizontal form-material" method="post" id="loginform" action="login/signIn">
                    <a href="javascript:void(0)" class="text-center db">
                    <img src="<?php echo base_url(); ?>assets/images/home_logo.png" alt="Home" height="100" /></a>
                    <div class="form-group m-t-40">
                        <div class="col-xs-12">
                            <input class="form-control" type="email" name="email" required="" placeholder="Username">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12">
                            <input class="form-control" type="password" name="password" required="" placeholder="Password">
                        </div>
                    </div>
                    <div class="form-group text-center m-t-20">
                        <div class="col-xs-12">
                            <button class="btn btn-info btn-md btn-login btn-block text-uppercase waves-effect waves-light" type="submit">Log In</button>
                        </div>
                    </div>
                    <a href="#" data-toggle="modal" data-target="#responsive-modal"><i class="ti-user"></i> Forget Password?</a>
                </form>
            </div>
                               
        </div>
    </section>
    <div id="responsive-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Reset Your Password</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                            </div>
                                            <form class="form-group" action="">
                                            <div class="form-group">
                                                        <label for="recipient-name" class="control-label">Input Admin Pin!</label>
                                                        <input id="pin" type="password" name="one" class="form-control" id="recipient-name">
                                                    </div>
                                            </form>
                                            <form action="<?php echo base_url() ?>Employee/Reset_Password" method="post">
                                            <div class="modal-body">

                                          

                                                
                                                    <div class="form-group">
                                                        <label for="recipient-name" class="control-label">New Password</label>
                                                        <input type="password" name="one" id="npass" class="form-control" id="recipient-name" readonly>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="message-text" class="control-label">Confirm Password</label>
                                                        <input type="password" name="two" id="cpass" class="form-control" id="message-text" readonly>
                                                    </div>
                                                
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
                                                <button type="button" onclick="checkPin()" class="btn btn-danger waves-effect waves-light">Check Pin</button>
                                                <button type="submit" id="savepass" class="btn btn-danger waves-effect waves-light" disabled>Save changes</button>
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <script>
                                        function checkPin() {
  const password = document.getElementById("pin").value;
  if (password === "020123") {
    alert ("Admin Verified. Now you can change password");
    document.getElementById("npass").readOnly = false;
    document.getElementById("cpass").readOnly = false;
    document.getElementById("savepass").disabled = false;
  }

  if (password !== "020123") {
    alert ("User unknown. Please contact admin!");
  }
}
                                </script>
    <script src="<?php echo base_url(); ?>assets/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="<?php echo base_url(); ?>assets/plugins/bootstrap/js/popper.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="<?php echo base_url(); ?>assets/js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="<?php echo base_url(); ?>assets/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="<?php echo base_url(); ?>assets/js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="<?php echo base_url(); ?>assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/plugins/sparkline/jquery.sparkline.min.js"></script>
    <!--Custom JavaScript -->
    <script src="<?php echo base_url(); ?>assets/js/custom.min.js"></script>
    <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ============================================================== -->
    <script src="<?php echo base_url(); ?>assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
</body>


</html>