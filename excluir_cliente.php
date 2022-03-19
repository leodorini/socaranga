<!DOCTYPE html>
<?php
    $id = $_GET['id_excluir'];
    $nome_usuario = $_GET['nome_excluir'];

    if(isset($_POST['sim'])){
        include 'conexao.php';
        $sql = "DELETE FROM tb_usuario WHERE id_usuario = '$id'";
        $delete = $conn -> prepare($sql);
        $delete -> execute();
        $conn = null;

        echo '
            <script>
                alert("O registro foi excluído com sucesso!");
                window.location.href="listar_cliente.php";
            </script>
        ';
    }
?>


<html lang="br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    	<!--BOOTSTRAP CSS-->
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Excluir Usuário - SóCaranga</title>
</head>
<body>
<div class="container">
    <h2>Excluir</h2>
    <p align='center'>Deseja mesmo excluir o usuário <b><?php echo "[$id]$nome_usuario"; ?></b> ?</p>
    <form action='' method='post' align='center'>
        <input type='submit' value='Sim' name='sim'>
        <input type='button' value='Voltar' onClick='window.history.back();'>
    </form>
</div>
</body>
</html>