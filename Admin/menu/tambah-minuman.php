<?php

session_start();

// Periksa apakah pengguna sudah login
if (!isset($_SESSION['username'])) {
  // Jika tidak ada sesi username, redirect ke halaman login atau halaman lain yang sesuai
  header("Location: ../index.php");
  exit();
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!----======== CSS ======== -->
    <link rel="stylesheet" href="../menu/style.css">
    <!-- <link rel="stylesheet" href="test.css"> -->

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="icon" href="../gambar/logo2.png" type="image/x-icon" />

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Mr+Dafoe&family=Poppins:wght@200&family=Roboto:wght@900&display=swap"
        rel="stylesheet">
    <!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

    <title>Admin Cherry Cofee</title>
</head>

<body>

    <nav>
        <!-- logo -->
        <div class="logo-name">
            <div class="logo-image">
                <img src="../gambar/logo.png" alt="">
            </div>

            <span class="logo_name">CherryCooffe</span>
        </div>

        <div class="menu-items">

            <!-- sidebar -->
            <ul class="nav-links">
                <li><a href="../index.html" style="padding-top: 65px; padding-bottom:25px;">
                        <div class="icon">
                            <i class="uil uil-estate"></i>
                        </div>
                        <div class="teks">
                            <span class="link-name" style="font-size: 20px; ">Dashboard</span>
                        </div>
                    </a>
                </li>

                <li><a href="Statistik.html">
                        <div class="icon">
                            <img src="../gambar/statistik.png" alt="">
                        </div>
                        <div class="teks">
                            <span class="link-name" style="font-size: 20px; padding-left:4px;">Statistik</span>
                        </div>
                    </a>
                </li>
                <li><a href="data Penjualan.html">
                        <div class="icon">
                            <img src="../gambar/list.png" alt="" style="padding-top:9px;">
                        </div>
                        <div class="teks">
                            <span class="link-name" style="font-size: 20px; display:flex; padding-left:4px">Data
                                Penjualan </span>

                        </div>
                    </a>
                </li>

                <div class="item">
                    <li class="sub-btn"><a>
                            <div class="icon1"><img src="../gambar/pemesanan.png" alt="" style="padding-top:8px;"></div>
                            <div class="teks"> <span class="link-name"
                                    style="font-size: 20px; padding-left:4px">Menu</span></div>

                            <i class="fas fa-angle-right dropdown"></i>

                        </a>
                    </li>
                    <div class="sub-menu">
                        <a href="../menu/Menu-makanan.php" class="sub-item">
                            <div class="cild-sub-item">
                                <div class="circle"></div>
                                <div class="circle2"></div>
                                Makanan
                            </div>

                        </a>
                        <a href="../menu/Menu-minuman.html" class="sub-item" style="margin-top: 10px;">
                            <div class="cild-sub-item">
                                <div class="circle"></div>
                                <div class="circle2"></div>
                                Minuman
                            </div>

                        </a>

                    </div>
                </div>



                <div class="item1">
                    <li class="sub-btn"><a>
                            <div class="icon1"><img src="../gambar/keranjang.png" alt="" style="padding-top:9px;"></div>
                            <div class="teks"> <span class="link-name"
                                    style="font-size: 20px; padding-left:4px">Transaksi</span></div>

                            <i class="fas fa-angle-right dropdown"></i>
                        </a>
                    </li>
                    <div class="sub-menu">
                        <a href="Transaksi-pesanan.html" class="sub-item">
                            <div class="cild-sub-item">
                                <div class="circle"></div>
                                <div class="circle2"></div>
                                Pesanan
                            </div>

                        </a>
                        <a href="Transaksi-dalamproses.html" class="sub-item" style="margin-top: 10px;">
                            <div class="cild-sub-item">
                                <div class="circle"></div>
                                <div class="circle2"></div>
                                Dalam Proses
                            </div>

                        </a>

                    </div>
                </div>
            </ul>


            <ul class="logout-mode">

                <li><a href="#">
                        <div class="icon">
                            <i class="uil uil-signout"></i>
                        </div>
                        <div class="teks">
                            <span class="link-name" style="font-size: 20px;">Logout</span>

                        </div>
                    </a>
                </li>


            </ul>

        </div>

    </nav>

    <section class="dashboard">

        <!-- header -->
        <div class="top">
            <i class="uil uil-bars sidebar-toggle"></i>

            <div class="search-box">
                <i class="uil uil-search"></i>
                <input type="text" placeholder="Search here...">
            </div>

            <img src="../gambar/profil.png" alt="">
        </div>

        <div class="dash-content">
            <div class="overview">
                <div class="title1">
                    <div class="bg-image-list">
                        <img src="../gambar/pemesanan-putih.png" alt="">
                    </div>
                    <span class="text">Menu / <small>Tambah Menu Minuman</small></span>
                </div>
            </div>

            <div class="menu-content">

                <div class="tambah1">
                    <div class="tambah2">
                        <div class="top-tambah">
                            <span>TAMBAH MENU MAKANAN</span>
                        </div>
                        <!-- admin.php atau halaman admin lainnya -->
                        <div class="bottom-tambah">
                            <form action="proses_tambah_minuman.php" method="post" enctype="multipart/form-data">
                                <div class="sub-tambah">
                                    <div class="aset">Nama Menu :</div>
                                    <input type="text" name="nama_menu" required>
                                </div>

                                <div class="sub-tambah">
                                    <div class="aset">Harga :</div>
                                    <input type="text" name="harga" required>
                                </div>

                                <div class="sub-tambah">
                                    <div class="aset">Status :</div>
                                    <select name="status" required>
                                        <option value="Tersedia">Tersedia</option>
                                        <option value="Tidak Tersedia">Tidak Tersedia</option>
                                    </select>
                                </div>

                                <div class="sub-tambah">
                                    <div class="aset2">Gambar :</div>
                                    <div class="image-upload-container">
                                        <div class="image-upload-preview" id="preview-container">
                                            <img id="image-preview" alt="Preview">
                                        </div>
                                        <input type="file" class="text" name="file-input" 
                                        id="file-input" accept="image/*" onchange="previewImage()" required />
                                    </div>
                                </div>

                                <div class="op-button">
                                    <a href="Menu-minuman.php" class="cancel-button">
                                        <button type="button">Cancel</button>
                                    </a>
                                    <button type="submit" id="update">Submit</button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </section>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <script>
        $(document).ready(function () {
            //jquery for toggle sub menus
            $('.sub-btn').click(function () {
                $(this).next('.sub-menu').slideToggle('');
                $(this).find('.dropdown').toggleClass('rotate');
            });
        });

        
            function previewImage() {
              var fileInput = document.getElementById("file-input");
              var imagePreview = document.getElementById("image-preview");
        
              var file = fileInput.files[0];
        
              if (file) {
                var reader = new FileReader();
        
                reader.onload = function (e) {
                  imagePreview.src = e.target.result;
                };
        
                reader.readAsDataURL(file);
              }
            }
          

    </script>

    <script src="script.js"></script>
</body>

</html>