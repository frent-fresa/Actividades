<?php
include("conexion.php");

$sql = "SELECT * FROM registro";
$resultado = mysqli_query($conexion, $sql);

echo "<h2>Usuarios Registrados</h2>";
echo "<table border='1'>
<tr>
    <th>Usuario</th>
    <th>Correo</th>
    <th>Contraseña (hash)</th>
</tr>";

while ($fila = mysqli_fetch_assoc($resultado)) {
    echo "<tr>
            <td>{$fila['Id_UsuarioN']}</td>
            <td>{$fila['CorreoN']}</td>
            <td>{$fila['ContrasenaN']}</td>
          </tr>";
}

echo "</table>";

mysqli_close($conexion);
?>
