<?php
session_start();
if (isset($_SESSION['success'])) {
    echo "<script>
        Swal.fire({
            icon: 'success',
            title: 'Berhasil!',
            text: '" . $_SESSION['success'] . "'
        });
    </script>";
    unset($_SESSION['success']);
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perpustakaan</title>
    <style>
        
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    display: flex;
    flex-direction: column;
    align-items: center;
    background-color: #dbdbc5;
    min-height: 100vh; 
}

header {
    width: 100%;
    position: relative;
    background-color: #f4e1e1;
    padding: 15px 0;
    text-align: center;
    flex-shrink: 0;
}

header h1 {
    font-size: 20px;
    margin: 0;
    word-wrap: break-word;
}

.user-icon {
    position: absolute;
    top: 50%;
    right: 15px;
    transform: translateY(-50%);
    width: 25px;
    height: 25px;
}

.user-icon img {
    width: 100%;
    height: auto;
    cursor: pointer;
    transition: transform 0.3s;
}

.user-icon img:hover {
    transform: scale(1.2);
}

.image-container {
    width: 90%;
    margin: 10px 0;
    flex-shrink: 0;
}

.gambar-perpus {
    width: 100%;
    height: auto;
    border: 2px solid #ccc;
    border-radius: 5px;
}

.menu-container {
    display: flex;
    justify-content: center;
    gap: 20px;
    margin: 20px 0;
    flex-wrap: wrap;
}

.menu-item {
    padding: 15px 20px;
    background-color: #ddd;
    text-decoration: none;
    color: black;
    border: 1px solid #bbb;
    text-align: center;
    border-radius: 5px;
    transition: background-color 0.3s;
    flex: 1; 
    max-width: 150px; 
}

.menu-item:hover {
    background-color: #c0c0c0;
}


.info-container {
    width: 90%;
    background-color: #e6e6e6;
    padding: 15px;
    border-radius: 5px;
    text-align: center;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
    flex-grow: 1;
    overflow-y: auto;
}

.divider {
    width: 90%;
    border: none;
    border-top: 4px solid #bbb;
    margin: 10px 0;
}


footer {
    display: flex;
    justify-content: center;
    gap: 20px;
    margin: 10px 0;
}

.icon img {
    width: 25px;
    height: 25px;
    transition: transform 0.3s;
}

.icon img:hover {
    transform: scale(1.2);
}

/* Media Queries */
@media (max-width: 768px) {
    .menu-container {
        gap: 10px;
        justify-content: space-around; 
    }

    .menu-item {
        flex: none;
        max-width: 120px; 
    }

    .info-container {
        font-size: 14px;
    }
}

@media (max-width: 480px) {
    .user-icon {
        width: 20px;
        height: 20px;
    }

    header h1 {
        font-size: 16px;
    }

    .icon img {
        width: 20px;
        height: 20px;
    }

    .menu-container {
        gap: 5px; 
    }

    .menu-item {
        padding: 10px;
        font-size: 12px;
    }
}

    </style>
    </head>
<body>
    <header>
        </div>
        <h1>Perpustakaan</h1>
        <a href="login.html" class="user-icon">
            <img src="assets/user.png" alt="Login">
        </a>
    </header>

    <div class="image-container">
        <img src="assets/perpus.jpeg" alt="Gambar Perpustakaan" class="gambar-perpus">
    </div>

    <div class="menu-container">
        <a href="anggota.html" class="menu-item">Anggota Perpustakaan</a>
        <a href="peminjaman.html" class="menu-item">Peminjaman Buku</a>
        <a href="pengembalian.html" class="menu-item">Pengembalian Buku</a>
    </div>

    <div class="info-container">
        <h2>Informasi Sistem Perpustakaan</h2><br>
        <p><b>Sistem Perpustakaan Digital</b> mempermudah pengelolaan perpustakaan dengan fitur pendaftaran anggota, peminjaman, dan pengembalian buku secara online. Anggota dapat memesan buku dengan mudah dan menerima pengingat otomatis untuk pengembalian. Aplikasi ini dirancang responsif, sehingga dapat diakses kapan saja dan di mana saja untuk mendukung kemudahan pengguna.</p>
    </div>
    <hr class="divider">
    <footer>
        <a href="https://instagram.com/sarahsfyra" target="_blank" class="icon">
            <img src="assets/ig.png" alt="Instagram">
        </a>
        <a href="https://wa.me/085888688457" target="_blank" class="icon">
            <img src="assets/wa.png" alt="WhatsApp">
        </a>
    </footer>
</body>
</html>

<script>
    const urlParams = new URLSearchParams(window.location.search);
    if (urlParams.get('login') === 'success') {
        alert('Login berhasil!');
    }

    
window.onload = function() {
    // Mengecek jika ada parameter 'status=deleted' di URL
    const urlParams = new URLSearchParams(window.location.search);
    if (urlParams.get('status') === 'deleted') {
        alert('Data berhasil dihapus!');
    }
}

src="https://cdn.jsdelivr.net/npm/sweetalert2@11"

</script>
