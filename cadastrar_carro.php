<!DOCTYPE html>
<?php
 session_start();
	include "conexao.php";
	//Pegar Registros da Tabela MARCA
	$sql_marca = "SELECT * FROM tb_marca ORDER BY marca";
	$marcas = $conn -> prepare($sql_marca);
	$marcas -> execute();
	//$conn = null;

	//Pegar Registros da Tabela COR
	$sql_cor = "SELECT * FROM tb_cor ORDER BY cor";
	$cores = $conn -> prepare($sql_cor);
	$cores -> execute();
	//$conn = null;

	//Pegar Registros da Tabela CATEGORIA
	$sql_cat = "SELECT * FROM tb_categoria";
	$cats = $conn -> prepare($sql_cat);
	$cats -> execute();

	$conn = null;


	//GRAVANDO FORMULÁRIO NO BANCO DE DADOS AO CLICAR 'SALVAR'
	if(isset($_POST['salvar'])){
		$nome = $_POST['nome'];
		$ano = $_POST['ano']; 
		$cambio = $_POST['cambio'];
		$combustivel = $_POST['combustivel'];
		$valor = $_POST['valor'];
		$id_marca = $_POST['marca'];
		$id_cor = $_POST['cor'];
		$id_cat = $_POST['categoria'];
		$id_conce = $_POST['concessionaria'];
		
		$sql= "INSERT INTO tb_carro(nome,ano,cambio,combustivel,valor,id_marca,id_cor,id_cat,id_conce) 
		VALUES (?,?,?,?,?,?,?,?,?)";
		include "conexao.php";
		$carro = $conn -> prepare($sql);
		$carro -> execute(array($nome,$ano,$cambio,$combustivel,$valor,$id_marca,$id_cor,$id_cat,$id_conce));
		$novo_nome_foto =$conn->lastInsertId();
		$conn = null;


		// Salvar foto nos arquivos
		if(isset($_FILES['pic']))
		{
			$ext = strtolower(substr($_FILES['pic']['name'],-4)); // Pegar extensão da foto
			$dir = './fotos/'; // Pasta com as fotos
			$novo_nome_foto = $novo_nome_foto.$ext; // Nome novo da fota + extensão
			move_uploaded_file($_FILES['pic']['tmp_name'], $dir.$novo_nome_foto); // Upload do arquivo
		}	


		// Mensagem de sucesso
		echo "
			<script>
				alert('O veículo foi cadastrado com sucesso!');
				window.location.href='listar_carro.php';
			</script>
		";
	}

?>

<!--HTML-->
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <!--BOOTSTRAP CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<title>Cadastro - SóCaranga</title>
</head>
<body>
	<p align='center'><?php include "menu.php";?></p>

	<div class="container">
		<h2>Cadastro de Veículo</h2>
		
		<form action='' method='POST' class="form-group" enctype="multipart/form-data">
			Nome do veículo:
			<input type='text' name='nome'>
			<br>
			<br>
			Marca do veículo:
			<select name="marca">	
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
			<input type='number' name='ano'>
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
			<input type='number' name='valor'>
			<br>
			<br>
			Cor:		
			<select name="cor">	
				<?php
					foreach($cores as $c)
					{
						$id = $c['id_cor'];
						$desc = $c['cor'];
						echo "<option value='$id'>$desc</option>";
					}
				?>
			</select>
			<br>
			<br>
			Categoria:
			<select name="categoria">
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
			Concessionária:
			<select name="concessionaria">
				<option value='1'>1 - Curitiba</option>;
				<option value='2'>2 - Londrina</option>;
				<option value='3'>3 - Cascavel</option>;
			</select>
			<br>
			<br>
			Anexar Foto: 
			<input type="file" name="pic" accept="image/*"/>
			<br>
			<br>

			<input type='submit' name='salvar' value='Salvar'>
			<input type='button' name='voltar' value='Voltar' onclick='window.history.back();'>
		</form>
	</div>
</body>