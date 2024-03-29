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
          <li class="active"><a href="admin_dashboard.php">Manajemen Buku</a></li>
          <li><a href="manajemen_peminjaman.php">Manajemen Peminjaman</a></li>
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

    <div id="section2">
      <center><a href="addBuku.php"><button style="font-size:20px;width:150px;height:50px;margin-top:20px;" class="btn btn-success">Tambah Buku</button></a></center>
      <!-- Start Catalogue Book Area -->
      <section id="testimornial-area" style="padding:50px">
        <div class="container">
          <div class="row text-center" style="margin-top:30px;">
            <?php
              include "connection.php";

              $query = "select * from buku";
              $result = mysqli_query($connect, $query);

              if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_array($result)) {
                  ?>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
                  <div class="testimonial-content">
                    <img src="<?php echo $row['nama_file'] ?>" width="150" style="margin-top:20px;">
                    <h2 style="padding:10px;"><?php echo $row['nama_buku'] ?></h2>
                    <h5>"<?php echo $row['penerbit'] ?>"</h5>
                    <mark style="background-color:black;color:white;"><?php echo $row['status_buku'] ?></mark><br><br>
                    <a href="editBuku.php?id_buku=<?php echo $row['id_buku']; ?>"><button class="btn btn-primary">Edit Buku</button></a>
                    <a href="detailBukuAdmin.php?id_buku=<?php echo $row['id_buku']; ?>"><button class="btn btn-warning">Detail Buku</button></a>
                  </div>
                </div>
            <?php
                }
              } else {
                echo "0 Result";
              }
              ?>
          </div>
        </div>
      </section>
      <!-- End Catalogue Book Area -->
    </div>
  <?php
  } else {
    header("Refresh:0; url=admin_login.php");
  }
  ?>
</body>

</html>