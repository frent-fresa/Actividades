<?php
// Load environment variables
$servidor = getenv('localhost');
$usuario = getenv('root');
$contrasenha = getenv('');
$BD = getenv('actividades');

// Establish database connection
$conexion = mysqli_connect($servidor, $usuario, $contrasenha, $BD);

// Check connection
if (!$conexion) {
    error_log("Database connection failed: " . mysqli_connect_error());
    die("An error occurred while connecting to the database. Please try again later.");
}

// Connection successful
// Uncomment for debugging: echo "Conexion exitosa";

// Close connection when done
// mysqli_close($conexion);
?>
