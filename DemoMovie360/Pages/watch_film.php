<!DOCTYPE html>
<html lang="vi">

<head>
    <title>Xem phim</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" type="text/css" href="../Styles/style_01.css">
</head>

<body>

    <div class="container p-2 bg-dark text-white-50 text-center mt-5 rounded-3 shadow">
        <h1>Mặt trời đen</h1>
        <p>Vén màn tội ác - The Veil 2021</p>
    </div>
    <div class="container mt-2 bg-dark rounded-3 py-2 shadow">
        <div class="container rounded mt-1 mb-2 p-2 t_1">
            <div class="spinner-border text-muted"></div>
            <span class="t_2 shadow">Đang xem tập 1</span>
        </div>
        <div class="container_1">
            <iframe class="responsive-iframe_1 rounded" src="../Films/theveil_trailer.mp4" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <!-- <iframe width="560" height="315" src="https://www.youtube.com/embed/h7i5FnrQONs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> -->
        </div>
        <div class="t_1 rounded mt-3 p-3 shadow">
            <h3>Danh sách tập:</h3>
            <?php 
                for($i=1; $i<=16; $i++){
                    echo "<button type='button' class='btn btn-dark b_1 shadow'>Tập $i</button>";
                }
            ?>
            <!-- <button type="button" class="btn btn-warning">Tập $i</button> -->
        </div>
        <div class="t_1 rounded mt-3 p-3 shadow mb-5">
            <h3><i class='far fa-comment-dots' style='font-size:24px'></i> Bình luận (5):</h3>
            <button type="button" class="btn btn-danger d-flex mx-auto mb-3">
            <i class='fas fa-user-check' style='font-size:20px'></i>&nbsp;Đăng nhập để bình luận</button>
            <?php 
                for($i=0; $i<5; $i++){
                    echo "<div class='p-2 m-2 cmt'>
                            <div class='row'>
                                <div class='col-sm-1'>
                                    <img src='../Images/theveil.jpg' alt='avatar' width='80' height='80' class='avt'>
                                </div>
                                <div class='col-sm-11'>
                                    <h5 class='color_name'>Nguyễn Văn A</h5>
                                    <p>Phim hay quá</p>
                                </div>
                            </div>
                        </div>";
                }
            ?>
            <!-- <div class="p-2 m-2 cmt">
                <div class="row">
                    <div class="col-sm-1">
                        <img src="../Images/theveil.jpg" alt="avatar" width="80" height="80" class="avt">
                    </div>
                    <div class="col-sm-11">
                        <h4 class="color_name">Nguyễn Văn A</h4>
                        <p>Phim hay quá</p>
                    </div>
                </div>
            </div> -->
        </div>
    </div><br><br>
    <div class="container">
            <h1 class="title_1 mt-5 mb-3">Có thể bạn cũng muốn xem</h1>
            <div class="row">
                <?php 
                    for($i=0; $i<4; $i++){
                        echo "<div class='col-sm-3'>
                                <div class='panel panel-primary'>
                                    <a href='./detail_film.php' class='a_1'>
                                        <div class='panel-body'><img src='../Images/theveil.jpg' class='img-responsive rounded' style='width:100%' alt='Image'></div>
                                        <div class='panel-footer'><h3 class='text-white title_1'>Mặt trời đen</h3></div>
                                    </a>
                                </div>
                            </div>";
                    }
                ?>
                <!-- <div class="col-sm-3">
                    <div class="panel panel-primary">
                        <a href="./detail_film.php">
                            <div class="panel-body"><img src="../Images/theveil.jpg" class="img-responsive rounded" style="width:100%" alt="Image"></div>
                            <div class="panel-footer"><h3 class="text-white title_1">Mặt trời đen</h3></div>
                        </a>
                    </div>
                </div> -->
                
                
            </div>
            <h3 class="title_1 mt-5 mb-3">Thiết kế bởi Nguyễn Văn Liêm</h3>
    </div><br>



</body>

</html>