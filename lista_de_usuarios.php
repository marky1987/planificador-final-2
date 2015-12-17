<?php
//require "conexion.php";
require "Class/Conexion.php";
require "Class/Usuario.php";
require "Class/Planificador.php";
$titulo = "Listado de usuarios";

$usuarios = new Usuario();
$listado = $usuarios->listarUsuario();
$tarea = new Planificador();
$id_tarea = $tarea->detalleTarea();

include 'plantillas/cabecera.php';
?>

<div class="container">
	<h1><?php echo $titulo; ?></h1>
	<form action="compartir_usuario.php" method="post">
	<div class="row">
	<div class="col-xs-3">
		<select class="form-control" name="usr_id" id="usr_id">
			<option value="1">Usuario</option>
			<?php
			foreach($listado as $fila){    // ****** Inicio de muestreo ***********
			?>
		<option title="<?php echo $fila['usr_id'];  ?>" id="<?php echo $fila['usr_id'];  ?>" value="<?php echo $fila['usr_id']; ?>"><?php echo $fila['usr_email']; ?></option>
	    <?php
			}
			?>
		</select>
		</div>
		</div>

		<div class="compartir-usuario">
		    <input type="text" name="<?php echo $id_tarea['tra_id']; ?>">
			<input class="btn btn-info" type="submit" value="Compartir tarea">
		</div>
		</form>
		
	</div>
</div>
<?php include 'plantillas/pie.php'; ?>