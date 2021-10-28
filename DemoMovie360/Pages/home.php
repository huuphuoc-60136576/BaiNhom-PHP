<!DOCTYPE html>
<html lang="en">

<head>
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Trang chủ</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.0/font/bootstrap-icons.css">
     <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
     <link rel="stylesheet" type="text/css" href="../Styles/style_01.css">
     <style>
          * {

               margin: 0;
               padding: 0;
          }

          .area {
               text-align: center;
               border: 1px white solid;
               margin-bottom: 20px;
          }

          a {
               text-decoration: none;
          }

          a:hover,
          img:hover {
               filter: drop-shadow(0 0 10px blue);
               font-style: italic;
               font-weight: bold;

          }

          .dropdown-item {
               color: white;
          }

          .dropdown-item:hover {
               color: black;
          }
     </style>

</head>
<?php
include("../Includes/Header.php");
require("connect.php");
// session_start();
// if (isset($_POST['dx'])) {
//      unset($_SESSION["nd"]);
// }
?>

<body style="background: url('../Images/bg_01.jpg') black no-repeat top center;">

     <div class="container p-3">

          <div class="area">
               <h1>Đề Xuất</h1>
          </div>
          <div class="area p-2">
               <h1>Mới cập nhật</h1>
               <div class="row no-gutters row-cols-2 row-cols-md-4">
                    <?php
                    if (!isset($_GET['page'])) {
                         $_GET['page'] = 1;
                    }
                    $rowsPerPage = 12;
                    $offset = ($_GET['page'] - 1) * $rowsPerPage;
                    $strSQL = 'SELECT * FROM  phim';

                    //tổng số mẩu tin cần hiển thị
                    $numRows = mysqli_num_rows(mysqli_query($dbc, $strSQL));
                    //tổng số trang
                    $maxPage = ceil($numRows / $rowsPerPage);
                    $strSQL1 = "SELECT * FROM  phim LIMIT $offset, $rowsPerPage";
                    $result = mysqli_query($dbc, $strSQL1);
                    if (mysqli_num_rows($result) == 0) {
                         echo "Chưa có dữ liệu";
                    } else {
                         while ($row = mysqli_fetch_array($result)) {
                              echo "<div class='col mb-4 p-2'><a href='detail_film.php?maPhim=" . $row["MaPhim"] . "'>
                              <div class='card bg-transparent' style='border: 1px black solid;'>
                              <img src='../Films/" . $row["Poster"] . "' style='width:306px;height:480px;border-radius:10px;'>
                              <div class='card-body p-0'>
                                   <p class='card-text'>" . $row['TenPhim'] . "</p>
                              </div>
                         </div></a>
                         </div>";
                         }
                    }
                    ?>
               </div>
               <div>
                    <?php
                    //tạo link tương ứng tới các trang
                    echo "<center>";

                    if ($_GET['page'] >= 2) {
                         echo "<a class='btn btn-outline-primary' href=" . $_SERVER['PHP_SELF'] . "?page="
                              . 1 . "><<</a>";
                         echo "<a class='btn btn-outline-primary' href=" . $_SERVER['PHP_SELF'] . "?page="
                              . ($_GET['page'] - 1) . "><</a> ";
                    } else {
                         echo "<a class='btn btn-outline-primary disabled' href=" . $_SERVER['PHP_SELF'] . "?page="
                              . 1 . "><<</a>";
                         echo "<a class='btn btn-outline-primary disabled' href=" . $_SERVER['PHP_SELF'] . "?page="
                              . ($_GET['page']) . "><</a> ";
                    }

                    for ($i = 1; $i <= $maxPage; $i++) {
                         if ($i == $_GET['page']) {
                              echo "<a class='btn btn-outline-danger disabled font-weight-bold' href=" . $_SERVER['PHP_SELF'] . "?page="
                                   . $i . ">" . $i . "</a> ";
                         } else
                              echo "<a class='btn btn-outline-primary' href=" . $_SERVER['PHP_SELF'] . "?page="
                                   . $i . ">" . $i . "</a> ";
                    }

                    if ($_GET['page'] < $maxPage) {
                         echo "<a class='btn btn-outline-primary' href=" . $_SERVER['PHP_SELF'] . "?page="
                              . ($_GET['page'] + 1) . ">></a>";
                         echo "<a class='btn btn-outline-primary' href=" . $_SERVER['PHP_SELF'] . "?page="
                              . ($maxPage) . ">>></a>";
                    } else {
                         echo "<a class='btn btn-outline-primary disabled' href=" . $_SERVER['PHP_SELF'] . "?page="
                              . ($_GET['page']) . ">></a>";
                         echo "<a class='btn btn-outline-primary disabled' href=" . $_SERVER['PHP_SELF'] . "?page="
                              . ($maxPage) . ">>></a>";
                    }

                    echo "</center>";
                    // echo "<p align='center'>Tong so trang la: " . $maxPage . "</p>";
                    ?>
               </div>
          </div>
     </div>
     <?php
     include("../Includes/footer.html");
     mysqli_close($dbc);
     ?>
</body>

</html>