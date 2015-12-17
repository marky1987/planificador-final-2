<?php
//require "conexion.php";
require "Class/Conexion.php";
require "Class/Planificador.php";

$titulo = "Confirmacion de tarea realizada";

$tarea = new Planificador();
$mensaje = $tarea->confirmarTarea();


?>

<?php
include 'plantillas/cabecera.php';
?>
<div class="container">

    <h1><?php echo $titulo; ?></h1>

        <h3 class="centrado">
        	<?php 
        		echo $mensaje;
        		//echo "Se ha confirmado la tarea como 'Realizada' "; 
        		header("refresh:2; url=index.php");
        	?>
        </h3>

</div>
<?php include 'plantillas/pie.php'; ?>