<!DOCTYPE html>

<?php
		include 'conexao.php';
		//Query tabela completa da ID
		$id_get = $_GET['id_editar'];
		$sql = "SELECT t1.*, tcor.cor, tmarca.marca, tcat.categoria FROM tb_carro AS t1
			LEFT JOIN tb_cor AS tcor ON t1.id_cor = tcor.id_cor
			LEFT JOIN tb_marca AS tmarca ON t1.id_marca = tmarca.id_marca
			LEFT JOIN tb_categoria AS tcat ON t1.id_cat = tcat.id_cat
			WHERE id_carro='$id_get'";
		$cont = $conn -> prepare($sql);
		$cont -> execute();
		//$conn = NULL;		

		//Pegar Registros da Tabela MARCA
		$sql_marca = "SELECT * FROM tb_marca";
		$marcas = $conn -> prepare($sql_marca);
		$marcas -> execute();
		//$conn = null;
	
		//Pegar Registros da Tabela COR
		$sql_cor = "SELECT * FROM tb_cor";
		$cores = $conn -> prepare($sql_cor);
		$cores -> execute();
		//$conn = null;
	
		//Pegar Registros da Tabela CATEGORIA
		$sql_cat = "SELECT * FROM tb_categoria";
		$cats = $conn -> prepare($sql_cat);
		$cats -> execute();
		$conn = null;
	

		//Pegar variáveis no PHP
		foreach($cont AS $i){
            $nome = $i['nome'];
            $ano = $i['ano']; 
            $cambio = $i['cambio'];
            $combustivel = $i['combustivel'];
            $valor = $i['valor'];
            $id_marca = $i['id_marca'];
            $id_cor = $i['id_cor'];
            $id_cat = $i['id_cat'];


			$sel_id_cor = $i['id_cor'];
			$sel_cor = $i['cor'];

			$sel_id_marca = $i['id_marca'];
			$sel_marca = $i['marca'];

			$sel_id_cat = $i['id_cat'];
			$sel_cat = $i['categoria'];

        }
		

		//Salvar formulário dentro do banco quando apertar botão 'Alterar'
		if(ISSET($_POST['alterar'])){
            $nome = $_POST['nome'];
            $ano = $_POST['ano']; 
            $cambio = $_POST['cambio'];
            $combustivel = $_POST['combustivel'];
            $valor = $_POST['valor'];
            $id_marca = $_POST['marca'];
            $id_cor = $_POST['cor'];
            $id_cat = $_POST['categoria'];
			
			$sql = "
				UPDATE tb_carro
                SET
				    nome            = ?,
				    ano             = ?,
				    cambio          = ?,
				    combustivel     = ?,
				    valor           = ?,
				    id_marca        = ?,
				    id_cor          = ?,
				    id_cat          = ?
				WHERE id_carro = ?
			";
			include 'conexao.php';
			$cli = $conn -> prepare($sql);
			$cli -> execute(array($nome,$ano,$cambio,$combustivel,$valor,$id_marca,$id_cor,$id_cat,$id_get));
			$conn = NULL;
			echo"
			<script>
				alert('Contato alterado com sucesso!');
				window.location.href='listar_carro.php';
			</script>
			";
		}
		
	?>

<!--HTML-->
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    	<!--BOOTSTRAP CSS-->
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Editar - SóCaranga</title>
</head>



<body>
<p align='center'><?php include "menu.php";?></p>
	<h2>Editar</h2>
	<br>
	<p align='center'><b><?php echo "Editando Veículo: [$id_get]$nome" ?></b></p>
	<br>
	<form action='' method='POST' align='center'>
		Nome do veículo:
		<input type='text' name='nome' value= "<?php echo $nome; ?>">
		<br>
		<br>
		Marca do veículo:
		<select name="marca">
			<option value="<?php echo $sel_id_marca; ?>"><?php echo $sel_marca;?></option>
			<option value="<?php echo $sel_id_marca; ?>">-----------------</option>
		<?php
			foreach($marcas as $m){
				$id   = $m['id_marca'];
				$desc = $m['marca'];
				echo "<option value='$id'>$desc</option>";
			}
		?>
		</select>
		<br>
		<br>
		Ano:
		<input type='number' name='ano' value= "<?php echo $ano; ?>">
		<br>
		<br>
		Tipo de Câmbio:
		<select name="cambio">
			<option value="1">Automático</option>
			<option value="2">Manual</option>
		</select>
		<br>
		<br>
		Combustível:
		<select name="combustivel">
			<option value="2">Flex</option>
			<option value="1">Gasolina</option>
			<option value="3">Diesel</option>
		</select>
		<br>
		<br> 
		Valor:
		<input type='number' name='valor' value= "<?php echo $valor; ?>">
		<br>
		<br>
		Cor:		
		<select name="cor">	
			<option value= <?php echo "$sel_id_cor"; ?>><?php echo "$sel_cor"; ?></option>
			<option value="<?php echo $sel_id_cor; ?>">-----------------</option>
				<?php
					foreach($cores as $c)
					{
						$id = $c['id_cor'];
						$desc = $c['cor'];
						echo "<option value='$id'>$desc</option>";
					}
				?>
		</select>


		</select>
		<br>
		<br>
		Categoria:
		<select name="categoria">
			<option value= <?php echo "$sel_id_cat"; ?>><?php echo "$sel_cat"; ?></option>
			<option value="<?php echo $sel_id_cat; ?>">-----------------</option>
			<?php
				foreach($cats as $a){
					$id = $a['id_cat'];
					$desc = $a['categoria'];
					echo "<option value='$id'>$desc</option>";
				}
			?>
		</select>
		<br>
		<br>

		<input type='submit' name='alterar' value='Alterar'>
		<input type='button' name='voltar' value='Voltar' onclick='window.history.back();'>
	</form>
	    
    
</body>
</html>