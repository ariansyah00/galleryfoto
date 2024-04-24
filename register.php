<?php
include 'koneksi.php';
require 'proses_register.php';

if (isset($_POST["register"])){
	
	if (registrasi ($_POST) > 0 ) {
			echo "<script>
			alern ('User Baru Berhasil Ditambahkan!');
			</script>";
	} else {
		echo mysqli_error($koneksi);
	}
}
?>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Galeri Foto</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
   </head>
   <!-- body -->
   <body class="main-layout">
      <!-- loader  -->
      <!-- loader  -->
      <!-- end loader -->
      <!-- header -->
      <header>
         <!-- header inner -->
         <div class="header bg-secondary">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                     <div class="full">
                      <a href="index.php"><img src="images/logoar.jpg" alt="#" /></a>
                     </div>
                  </div>
                  <div class="col-xl-7 col-lg-7 col-md-9 col-sm-9">
                     <nav class="navigation navbar navbar-expand-md navbar-dark ">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarsExample04">
						<?php
		session_start();
		if(!isset($_SESSION['UserID'])){
		?>
                           <ul class="navbar-nav mr-auto">
						   <li class="nav-item ">
                                 <a class="nav-link" href="login.php">Login</a>
                              </li>
							  <li class="nav-item active ">
                                 <a class="nav-link" href="register.php">Register</a>
                              </li>
							  <?php
		}else{
		?>
                              <li class="nav-item ">
                                 <a class="nav-link" href="beranda.php">Dashboard</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="index.php">Galeri</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="album.php">Album</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="foto.php">Foto</a>
                              </li>
                              <li class="nav-item active">
                                 <a class="nav-link" href="logout.php">Logout</a>
                              </li>
                           </ul>
						   <?php
		}
		?>
                        </div>
                     </nav>
                  </div>
                  
               </div>
            </div>
         </div>
      </header>
      <!-- end header inner -->
      <!-- end header -->
        <div class="back_re">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  
               </div>
            </div>
         </div>
      </div>
      <!--  contact -->
      <div class="">
	  <br>
	  <br>
	  <br>
	  <h2 align="center"> Silahkan Registrasi </h2>
	  <br>
         <div class="container">
            <div class="row">
               <div class="col-md-6 offset-md-3">
                  <form id="" class="main_form" method="post" action="">
                     <div class="row">
                        <div class="col-md-12 ">
                           <input class="contactus" placeholder="Username" type="type" name="Username"> 
                        </div>
                        <div class="col-md-12">
                           <input class="contactus" placeholder="Password" type="password" name="Password"> 
                        </div>
						 <div class="col-md-12 ">
                           <input class="contactus" placeholder="Email" type="email" name="Email"> 
                        </div>
						 <div class="col-md-12 ">
                           <input class="contactus" placeholder="Nama Lengkap" type="type" name="NamaLengkap"> 
                        </div>
						 <div class="col-md-12 ">
                           <input class="contactus" placeholder="Alamat" type="type" name="Alamat"> 
                        </div>
                        
                        <div class="col-md-12">
                        <p>Sudah punya akun? Login <a style="color:#00C;" href="login.php">DISINI</a></p>
                        </div>

                        <div class="col-md-12">
                           <button type="submit" class="send_btn" name="register">Register</button>
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
         <div class="container-fluid">
            <div class="row">
               <div class="col-md-12">
                  <div class="map_main">
                     
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end contact -->
      <!--  footer -->
      <footer>
      <div class="">
        <div class="copyright">
          <div class="container">
            <div class="row">
              <div class="col-md-10 offset-md-1">
                <p>© 2024 Gallery ariansyah. Design by <a href="https://html.design/"> Free Html Templates</a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
      <!-- end footer -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
   </body>
</html>

