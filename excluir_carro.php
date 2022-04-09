<!DOCTYPE html>
<?php
 session_start(); 

	$id = $_GET['id'];
	$nome = $_GET['nome'];
	
	if(isset($_POST['sim'])){
		$sql = "DELETE FROM tb_carro WHERE id_carro=?";
		include 'conexao.php';
		$carro = $conn -> prepare($sql);
		$carro -> execute(array($id));
		$conn = null;
		
		echo"
			<script>
				alert('O registro foi removido com sucesso!');
				window.location.href='listar_carro.php';
			</script>
		";
	}
?>


<head lang='pt-br'>
	<meta charset='UTF-8'>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    	<!--BOOTSTRAP CSS-->
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<title>Excluir <?php echo $nome;?></title>
</head>

<body>
<div class="container">
	<h2>Excluir</h2>
	
	<p align='center'>Tem certeza que deseja excluir o veículo <b><?php echo "[$id]$nome";?></b>?</p>
	<form action='' method='POST' align='center'>
		<input type='submit' value='Sim' name='sim'>
		<input type='button' value='Voltar' onclick='window.history.back();'>
	</form>
</div>
</body>