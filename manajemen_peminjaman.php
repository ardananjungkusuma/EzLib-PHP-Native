<!DOCTYPE html>
<html lang="en">

<head>
    <title>Admin Dashboard</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style1.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
</head>

<body>
    <?php
    include "connection.php";

    session_start();
    if ($_SESSION['status'] == 'admin_login') {
        ?>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="admin_dashboard.php">Admin Dashboard EzLib</a>
                </div>
                <ul class="nav navbar-nav" style="margin-left:60px;">
                    <li><a href="admin_dashboard.php">Manajemen Buku</a></li>
                    <li class="active"><a href="manajemen_peminjaman.php">Manajemen Peminjaman</a></li>
                    <li><a href="manajemen_user.php">Manajemen User</a></li>
                </ul>
                <div class="dropdown" style="float:right">
                    <h5 style="color:white;float:right;margin-top:10px; border-radius: 20px;">Welcome Admin <?php echo $_SESSION['username'] ?> <img src="img/avatar.png" width="30px" height="30px"></h5>
                    <div class="dropdown-content">
                        <a href="sessionLogoutAdmin.php">Log Out</a>
                    </div>
                </div>
            </div>
        </nav>
        <center>
            <h3 style="font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif">Tabel Peminjaman</h3>
        </center>
        <?php
            include "connection.php";

            $query = "select * from peminjaman";
            $result = mysqli_query($connect, $query);

            ?>
        <br>
        <center>
            <table class="table table-bordered" style="width:auto;margin-left:30px;margin-right:30px;">
                <thead>
                    <tr>
                        <th>Nama Buku</th>
                        <th>Nama Peminjam</th>
                        <th>Tanggal Booking</th>
                        <th>Tanggal Pinjam</th>
                        <th>Tanggal Kembali</th>
                        <th>Denda</th>
                        <th>Status Peminjam</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        while ($row = mysqli_fetch_array($result)) {
                            $namaBuku = $row['id_buku'];
                            $idUser = $row['id_user'];
                            $queryBuku = "select * from buku where id_buku = '$namaBuku'";
                            $queryUser = "select * from user where id_user = '$idUser'";
                            $resultNamaBuku = mysqli_query($connect, $queryBuku);
                            $resultNamaUser = mysqli_query($connect, $queryUser);
                            while ($rowBuku = mysqli_fetch_array($resultNamaBuku)) {
                                while ($rowUser = mysqli_fetch_array($resultNamaUser)) {
                                    ?>
                                <tr>
                                    <td><?php echo $rowBuku['nama_buku'] ?></td>
                                    <td><?php echo $rowUser['nama_user'] ?></td>
                                    <td><?php echo $row['tanggal_booking'] ?></td>
                                    <td><?php echo $row['tanggal_pinjam'] ?></td>
                                    <td><?php echo $row['tanggal_kembali'] ?></td>
                                    <td><?php echo $row['denda'] ?></td>
                                    <td><?php echo $row['status'] ?></td>
                                    <td><a href="editPeminjaman.php?id_peminjaman=<?php echo $row['id_peminjaman']; ?>"><button style="width:80px;" class="btn btn-danger">Edit</button></a></td>
                                </tr>

                    <?php
                                }
                            }
                        }
                        ?>
                </tbody>
            </table>
        </center>
    <?php
    } else {
        header("Refresh:0; url=admin_login.php");
    }
    ?>
</body>

</html>