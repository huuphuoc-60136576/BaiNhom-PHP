<!DOCTYPE html>
<html lang="vi">

<head>
    <title>Chi tiết phim</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" type="text/css" href="../Styles/style_01.css">
</head>

<body>

    <div class="container p-2 bg-dark text-white-50 text-center mt-5 rounded">
        <h1>Mặt trời đen</h1>
        <p>Vén màn tội ác - The Veil 2021</p>
    </div>

    <div class="container mt-2 bg-dark rounded py-2">
        <div class="row">
            <div class="col-sm-4">
                <div class="card bg-dark">
                    <img class="card-img" src="../Images/theveil.jpg" alt="The Veil" width="430" height="600">
                    <div class="card-img-overlay d-flex align-items-end">
                        <div class="card-body justify-content-center d-flex">
                            <!-- <a href="#" class="btn btn-success">
                                <i class='far fa-bookmark' style='font-size:20px'></i> Thêm vào tủ phim
                            </a> -->
                            <button type="submit" name="themtuphim" class="btn btn-success">
                                <i class='far fa-bookmark' style='font-size:20px'></i> Thêm vào tủ phim
                            </button>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                            <!-- <a href="#" class="btn btn-danger">
                                <i class='far fa-play-circle' style='font-size:20px'></i> Xem phim
                            </a> -->
                            <button type="submit" name="xemphim" class="btn btn-danger">
                                <i class='far fa-play-circle' style='font-size:20px'></i> Xem phim
                            </button>
                            <!-- <input type="submit" value="Xem phim" class="btn btn-danger" /> -->
                        </div>
                    </div>
                </div>
                <!-- <img src="../Images/theveil.jpg" class="rounded" alt="The Veil" width="430" height="600"> -->
            </div>
            <div class="col-sm-8 py-1">
                <table class="table table-dark table-striped">
                    <tr>
                        <td>Thể loại:</td>
                        <td>
                            <h5>
                                <span class="badge bg-secondary">Phim Hàn Quốc</span>
                                <span class="badge bg-secondary">Phim hành động</span>
                            </h5>
                        </td>
                    </tr>
                    <tr>
                        <td>Trạng thái:</td>
                        <td>Đang chiếu</td>
                    </tr>
                    <tr>
                        <td>Điểm:</td>
                        <td>9.0 || 425 đánh giá</td>
                    </tr>
                    <tr>
                        <td>Phát hành:</td>
                        <td>2021</td>
                    </tr>
                    <tr>
                        <td>Thời lượng:</td>
                        <td>16 tập</td>
                    </tr>
                </table>
                <div class="text-white-50">
                    <h3>Nội dung:</h3>
                    <p>
                        Mặt Trời Đen - The Veil xoay quanh câu chuyện về một đặc vụ hàng đầu của Cơ quan Tình báo Quốc gia (NIS) - Han Ji Hyuk. Anh được các đồng nghiệp kính nể vì thành tích hoàn hảo và khả năng hoàn thành nhiệm vụ. Sau khoảng thời gian biến mất một cách bí hiểm, anh trở lại một năm sau đó để gây chấn động tổ chức một lần nữa. Bên cạnh Han Ji Hyuk, Seo Soo Yeon là đội trưởng đội 4 của Trung tâm thông tin tội phạm - người rất xuất sắc trong việc thực hiện nhiệm vụ và giải quyết các vụ án. Cô là người sống vô cùng tình cảm và luôn quan tâm đến mọi người, đặc biệt là đồng đội của mình.
                    </p>
                </div>
                <div class="text-white-50">
                    <h3>Danh sách tập:</h3>
                    <?php
                    for ($i = 1; $i <= 16; $i++) {
                        echo "<button type='button' class='btn btn-dark b_1 shadow'>Tập $i</button>";
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
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
            <h3 class="title_1 text-info mt-5 mb-3">Thiết kế bởi Nguyễn Văn Liêm</h3>
    </div><br>

</body>

</html>