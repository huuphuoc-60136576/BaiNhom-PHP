<!DOCTYPE html>
<?php
    require_once("connect.php");
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết phim</title>
</head>
<body>
    
    <?php
        $maPhim = 'MP0001';

        $sql = "SELECT * FROM phim WHERE MaPhim = '$maPhim'";
        $result = mysqli_query($conn, $sql);
        $phim = mysqli_fetch_assoc($result);

        $maPhim = $phim['MaPhim'];
        $tenPhim = $phim['TenPhim'];
        $moTa = $phim['MoTa'];
        $trangThai = $phim['TrangThai'];
        $diem = $phim['Diem'];
        $phatHanh = $phim['PhatHanh'];
        $thoiLuong = $phim['ThoiLuong'];
    ?>

    <table>
        <tr>
            <td>Mã phim:</td>
            <td><?php echo $maPhim; ?></td>
        </tr>
        <tr>
            <td>Tên phim:</td>
            <td><?php echo $tenPhim; ?></td>
        </tr>
        <tr>
            <td>Mô tả: </td>
            <td><?php echo $moTa; ?></td>
        </tr>
        <tr>
            <td>Trạng thái: </td>
            <td><?php echo $trangThai; ?></td>
        </tr>
    </table>

    <form action="" method="post">
        <input type="hidden" name="maPhim" value="<?php echo $maPhim; ?>">
        <input type="submit" name="xoa" value="Xóa">
    </form>

    <form action="suaphim.php" method="post">
        <input type="hidden" name="maPhim" value="<?php echo $maPhim; ?>">
        <input type="submit" value="Sửa">
    </form>

    <form action="../Phuoc-tapphim/themtapphim.php?maPhim=MP0001" method="get">
        
        <input type="submit" value="Thêm tập phim">
    </form>

    <a href="../Phuoc-tapphim/themtapphim.php?maPhim=MP0001">Thêm tập phim</a>

    <?php
        if (isset($_POST['xoa'])) {
            $sql = "DELETE FROM phim WHERE MaPhim = '$maPhim'";

            if (mysqli_query($conn, $sql)) {
                echo "Record deleted successfully";
            } else {
                echo "Error deleting record: " . mysqli_error($conn);
            }
        }
    ?>
</body>
</html>