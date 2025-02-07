<?php 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "perpustakaan";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

function getAllAnggota() {
    global $conn;
    $result = $conn->query("SELECT * FROM anggota");
    return $result->fetch_all(MYSQLI_ASSOC);
}

if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST['save'])) {
    $id = $_POST['id'];
    $name = $_POST['name'];
    $kelas = $_POST['kelas'];
    $address = $_POST['address'];
    $phone = $_POST['phone'];

    if (empty($id)) {
        $stmt = $conn->prepare("INSERT INTO anggota (name, kelas, address, phone) VALUES (?, ?, ?, ?)");
        $stmt->bind_param("ssss", $name, $kelas, $address, $phone);
    } else {
        $stmt = $conn->prepare("UPDATE anggota SET name = ?, kelas = ?, address = ?, phone = ? WHERE id = ?");
        $stmt->bind_param("ssssi", $name, $kelas, $address, $phone, $id);
    }

    $stmt->execute();
    $stmt->close();

    header("Location: anggota.html");
    exit();
}

if ($_SERVER["REQUEST_METHOD"] === "GET" && isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $stmt = $conn->prepare("DELETE FROM anggota WHERE id = ?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $stmt->close();

    header("Location: index.html");
    exit();
}
?>
