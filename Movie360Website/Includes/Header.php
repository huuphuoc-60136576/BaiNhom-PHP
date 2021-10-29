<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
     <meta http-equiv="content-type" content="text/html; charset=utf-8" />
     <style>
           * {
               margin: 0;
               padding: 0;
          }
          #home:hover{
               filter: drop-shadow(0 0 10px blue);
               font-style: italic;
               font-weight: bold;
          }
     </style>
</head>
<body>
     <?php
     //Kết nối database
     require("connect.php");
     session_start();
     if (isset($_POST['dx'])) {
          unset($_SESSION["nd"]);
     }
     ?> 
     <div class="container-fluid" style="max-width: 1280px;">
          <nav class="navbar navbar-dark area p-2 rounded" style="background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(56,15,91,1) 50%, rgba(0,0,0,1) 100%); border: 3px solid #380f5b; font-size:20px;">
               <a class="badge mb-2" id="home" href="home.php" style='text-decoration: none; color: blueviolet;'><span style="font-size: 30px;"><i class='far fa-play-circle mt-2' style='font-size:30px'></i>Movie 360</span></a>
               <form class="form-inline d-flex  flex-grow-1 px-2 p-0" action="Search.php" method="post">
                    <input class="form-control flex-grow-1 w-25 p-0" type="search" name="search_info" placeholder=" Nhập thông tin tìm kiếm" aria-label="Search">
                    <button class="badge btn btn-outline-success p-2" style="margin-left: 10px;" name="search_btn" type="submit">Tìm kiếm</button>
               </form>
               <div>
                    <a href="LookUp.php" class=" badge btn btn-outline-primary p-2">Thể loại</a>
                    <!-- <a href="#" class="btn btn-outline-primary">Lịch sử</a>
                    <a href="#" class="btn btn-outline-primary">Hộp phim</a> -->
                    <!-- Button trigger modal -->
                    <?php if (isset($_SESSION['nd'])) {
                         $nd = $_SESSION['nd'];
                         echo "<div class='dropdown mx-1' style='display:inline-block' >
                         <button class='btn btn-secondary bg-dark dropdown-toggle' type='button' id='dropdownMenuButton1' data-bs-toggle='dropdown' aria-expanded='false'>
                         <i class='bi bi-person-circle'></i>
                         </button>
                         <ul class='dropdown-menu bg-dark' aria-labelledby='dropdownMenuButton1' >
                              <li ><center style='color:white'>$nd</center></li>
                              <li><center><hr class='m-0 w-75'style='color:white'></center></li>
                              <li><a href='#' class='dropdown-item' style='color:white'>Lịch sử</a></li>
                              <li><a href='#' class='dropdown-item' style='color:white'>Hộp phim</a></li>
                              <li><a class='dropdown-item' href='#' ><form action='' method='post'><input type='submit' name='dx' value='Đăng xuất' style='border:none; background:none; color:white;'></form></a></li>
                         </ul>
                    </div>";
                    } else echo "<a href='DangNhap.php' class='badge btn btn-outline-danger p-2'>Đăng nhập</a>";
                    ?>
               </div>
          </nav>
     </div>
     <div id="content">
          <!-- Start of the page-specific content. -->
          <!-- Script 9.1 - header.html -->