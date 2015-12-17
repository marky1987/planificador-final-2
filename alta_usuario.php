<?php
	$titulo = "Panel de Alta de un nuevo Usuario";

require 'conexion.php';
require 'Class/Conexion.php';
require 'Class/Usuario.php';

include "plantillas/cabecera.php";
$usr_email = $_POST['usr_email'];

$sql = "SELECT usr_email FROM usuarios
		WHERE usr_email='".$usr_email."'";
$resultado = mysqli_query($link, $sql);
$cantidad = mysqli_num_rows($resultado); // ----> Cuenta los registros

?>

<div class="container">
	<div>
		<?php  
			if($cantidad != 0){
				echo "¡ERROR! el e-mail que esta ingresado ya existe, ingrese otro e-mail";
				echo $cantidad;
				header("refresh:3; url=form_alta_usuario.php");
			}
			else{
				$usuario = new Usuario();
				$mensaje = $usuario->altaUsuario();	
				echo $mensaje;
		?>
			<a href="form_login.php">
				<input type="submit" class="btn btn-primary" value="Iniciar sesion">
			</a>
		<?php 
			}
		?>
	</div>
</div>

	<div id="pie">
		<?php  include "plantillas/pie.php"  ?>
	</div>
	
</body>
</html>