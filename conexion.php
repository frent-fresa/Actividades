<?php
$servidor = "localhost";
$usuario = "frent-fresa";
$contrasenha = "";
$BD = "actividades.sql";

$conexion = mysqli_connect($servidor, $usuario, $contrasenha, $BD);
if (!$conexion) {
    echo "Fallo la conexion <br>";
    die("Connection failed: " . mysqli_connect_error());
} else {
    echo "Conexion exitosa";
}
?>
