<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
     <meta http-equiv="content-type" content="text/html; charset=utf-8" />

</head>

<body>
     <?php
     session_start();
     if (isset($_POST['dx'])) {
          unset($_SESSION["nd"]);
     }
     ?>
     <div class="container">
          <nav class="navbar navbar-dark bg-dark area p-3 rounded">
               <a href="home.php" style='text-decoration: none; color: blueviolet;'><span style="font-size: 30px; font-weight: bolder; "><i class='far fa-play-circle mt-2' style='font-size:36px'></i>Movie 360</span></a>
               <form class="form-inline d-flex  flex-grow-1 px-2 my-auto">
                    <input class="form-control flex-grow-1 w-25" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" style="margin-left: 10px;" type="submit">Search</button>
               </form>
               <div>
                    <a href="#" class="btn btn-outline-primary">Thể loại</a>
                    <!-- <a href="#" class="btn btn-outline-primary">Lịch sử</a>
                    <a href="#" class="btn btn-outline-primary">Hộp phim</a> -->
                    <!-- Button trigger modal -->
                    <?php if (isset($_SESSION['nd'])) {
                         $nd = $_SESSION['nd'];
                         echo "<div class='dropdown mx-1' style='display:inline-block' >
                         <button class='btn btn-secondary bg-dark dropdown-toggle' type='button' id='dropdownMenuButton1' data-bs-toggle='dropdown' aria-expanded='false'>
                         <i class='bi bi-person-circle'></i> $nd
                         </button>
                         <ul class='dropdown-menu bg-dark' aria-labelledby='dropdownMenuButton1' >
                              <li><a href='#' class='dropdown-item' style='color:white'>Lịch sử</a></li>
                              <li><a href='#' class='dropdown-item' style='color:white'>Hộp phim</a></li>
                              <li><a class='dropdown-item' href='#' ><form action='' method='post'><input type='submit' name='dx' value='Đăng xuất' style='border:none; background:none; color:white;'></form></a></li>
                         </ul>
                    </div>";
                    } else echo "<a href='DangNhap.php' class='btn btn-outline-danger'>Đăng nhập</a>";
                    ?>
               </div>
          </nav>
     </div>
     <div id="content">
          <!-- Start of the page-specific content. -->
          <!-- Script 9.1 - header.html -->