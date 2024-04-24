<?php
    include 'koneksi.php';
    session_start();

    if(!isset($_SESSION['UserID'])){
        // Redirect to login page if user is not logged in
        header("Location: login.php");
        exit();
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Galeri Foto</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Your custom CSS -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <!-- Header -->
    <header>
        <!-- Your header content here -->
    </header>

    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <!-- Left Column -->
            <div class="col-md-6">
                <!-- Display Photo -->
                <div class="card">
                    <div class="card-body">
                        <?php
                            // Fetch photo data
                            $FotoID = $_GET['FotoID'];
                            $select = mysqli_query($koneksi, "SELECT * FROM foto WHERE FotoID='$FotoID'") or die(mysqli_error($koneksi));
                            $data = mysqli_fetch_assoc($select);
                        ?>
                        <h2><?php echo $data['JudulFoto']; ?></h2>
                        <p><?php echo $data['DeskripsiFoto']; ?></p>
                        <img src="images/<?php echo $data['LokasiFile']; ?>" width="100%" alt="Photo">
                    </div>
                </div>
            </div>

            <!-- Right Column -->
            <div class="col-md-6">
                <!-- Comment Form -->
                <div class="card">
                    <div class="card-header">
                        <h2 class="card-title">Komentar Foto</h2>
                    </div>
                    <div class="card-body">
                        <form action="tambah_komentar.php" method="POST">
                            <!-- Include FotoID in the form -->
                            <input type="hidden" name="FotoID" value="<?php echo $FotoID; ?>">
                            <div class="form-group">
                                <label for="IsiKomentar">Komentar</label>
                                <input type="text" name="IsiKomentar" class="form-control" id="IsiKomentar" placeholder="Tambahkan komentar Anda">
                            </div>
                            <button type="submit" class="btn btn-primary">Tambah Komentar</button>
                        </form>
                    </div>
                </div>

                <!-- Display Comments -->
                <div class="card mt-3">
                    <div class="card-header">
                        <h2 class="card-title">Daftar Komentar</h2>
                    </div>
                    <div class="card-body">
                        <?php
                            // Fetch comments
                            $query = "SELECT * FROM komentarfoto JOIN user ON komentarfoto.UserID = user.UserID WHERE FotoID='$FotoID'";
                            $result = mysqli_query($koneksi, $query);

                            while ($row = mysqli_fetch_assoc($result)) {
                                echo "<div class='comment'>";
                                echo "<p><strong>" . $row['NamaLengkap'] . "</strong>: " . $row['IsiKomentar'] . "</p>";
                                echo "</div>";
                            }

                            // Free result set
                            mysqli_free_result($result);
                            // Close connection
                            mysqli_close($koneksi);
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <!-- Your footer content here -->
    </footer>

    <!-- Bootstrap JS and any other scripts -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>
