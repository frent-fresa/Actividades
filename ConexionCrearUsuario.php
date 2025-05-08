<?php 
include("conexion.php");

// Recibir datos del formulario
$usuario = $_POST["usuario"];
$correo = $_POST["correo"];
$password = $_POST["password"];

// Hashear la contraseña
$passwordHash = password_hash($password, PASSWORD_BCRYPT);

// Verificar si el usuario ya existe
$consultaId = "SELECT * FROM registro WHERE Id_UsuarioN = '$usuario'";
$consultaResultado = mysqli_query($conexion, $consultaId);
$existe = mysqli_fetch_array($consultaResultado);

if (!$existe) {
    // Insertar el nuevo usuario
    $sql = "INSERT INTO registro (Id_UsuarioN, correo, ContrasenaN) VALUES ('$usuario', '$correo', '$passwordHash')";
    if (mysqli_query($conexion, $sql)) {
        echo "Tu cuenta ha sido creada.<br>";
        echo "<a href='iniciarsesion.html'>INICIAR SESIÓN</a>";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conexion);
    }
} else {
    echo "El usuario ya existe.<br>";
    echo "<a href='registro_login.html'>Inténtalo de nuevo</a>";
}

mysqli_close($conexion);
?>
