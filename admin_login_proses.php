<html>

<head>
    <title>Login Status</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
</head>

<body>
    <?php
    include "connection.php";

    $username = $_POST['username'];
    $password = md5($_POST['password']);

    $query = "select * from admin where username='$username' and password='$password'";
    $result = mysqli_query($connect, $query);
    $check = mysqli_num_rows($result);

    if ($check > 0) {
        session_start();
        $_SESSION['username'] = $username;
        $_SESSION['status'] = 'admin_login';
        ?>
        <script>
            Swal.fire({
                icon: 'success',
                title: 'Login Success',
                showConfirmButton: false,
                timer: 2000
            })
        </script>
    <?php
        header("Refresh:2; url=admin_dashboard.php");
    } else {
        ?>
        <script>
            Swal.fire({
                icon: 'info',
                title: 'Username atau Password Salah',
                showConfirmButton: false,
                timer: 2000
            })
        </script>
    <?php
        header("Refresh:1; url=admin_login.php");
    }
    ?>
</body>

</html>