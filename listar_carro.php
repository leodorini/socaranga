<!DOCTYPE html>

<html lang="pt-br">

	<?php
	 session_start();
		include "conexao.php";
		

		if(!isset($_GET["id_conce"])){
			
			$sql = "SELECT t1.*, t2.cor FROM tb_carro AS t1
			LEFT JOIN tb_cor AS t2 ON t1.id_cor = t2.id_cor
			ORDER BY id_carro";
		}
		else
		{
			$mapa_conce = $_GET["id_conce"];
			$sql = "SELECT t1.*, t2.cor FROM tb_carro AS t1
				LEFT JOIN tb_cor AS t2 ON t1.id_cor = t2.id_cor
				WHERE id_conce = $mapa_conce
				ORDER BY id_carro";
		}
		$carros = $conn -> prepare($sql);
		$carros -> execute();
		$conn = null;
	?>

	<head>
		<meta charset="UTF-8">
		<style>
			#foto_carro
			{
				width: 80px;
				height: 60px;
			}
		</style>

		<meta name="viewport" content="width=device-width, initial-scale=1">
    	<!--BOOTSTRAP CSS-->
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<!-- Font Awesome CSS -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
		
		<title>Catálogo - SóCaranga</title>
	</head>
	
	<body>
	<a  class = "nav-item" href="logout.php" class="nav-link">logout</a>

		<p align='center'><?php include "menu.php";?></p>
		
		<div class="container">
			<div class="row">
				<div class="col">
					<h2>Catálogo</h2>
				</div>
				<div class="col" align='right'>
					<a href="cadastrar_carro.php">
						<button type="button" class="btn btn-labeled btn-success">
                    	<span class="btn-label"><i class="fa fa-check"></i></span> Adicionar Veículo</button>
					</a>
				</div>
			</div>
			
			<table border='1' align='center' class='table table-bordered table-hover table-striped'>
				<th>ID</th>
				<th>Foto</th>
				<th>Nome</th>
				<th>Ano</th>
				<th>Valor</th>
				<th>Cor</th>
				<?php if( $_SESSION["usuario"][1]==1):
				echo "<th>OP</th>";
				endif;
				?>
				
			<?php
			foreach($carros AS $i){
				$id = $i['id_carro'];
				$nome = $i['nome'];
				$ano = $i['ano'];
				$valor = $i['valor'];
				$cor = $i['cor'];
				
				
				$excluir = "<a href='excluir_carro.php?id=$id&nome=$nome'><input type='button' value='Excluir'></a>";
				$editar = "<a href='editar_carro.php?id_editar=$id'><input type='button' value='Editar'></a>";
				
				echo"
				<tr>
					<td>$id</td>
					<td><img src='fotos/$id.jpg' alt='' id='foto_carro'></td>
					<td>$nome</td>
					<td>$ano</td>
					<td align='right'>R$ $valor</td>
					<td>$cor</td>";
					if( $_SESSION["usuario"][1]==1):
					echo"<td>$editar$excluir</td>";
				 endif; 
				echo "</tr>";
			}
			?>
			</table>
		</div>
	</body>
</html>

