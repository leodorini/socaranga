<!DOCTYPE html>

<?php
 session_start();
    $id_get = $_GET['id_editar'];
    include 'conexao.php';
    $sql = "SELECT * FROM tb_usuario WHERE id_usuario = '$id_get'";
    $clientes = $conn -> prepare($sql);
    $clientes -> execute();
    $conn = null;

    //Pegar variáveis para completar o Forms
    foreach($clientes AS $i){
        $sel_nome_usuario = $i['nome_usuario'];
        $sel_senha = $i['senha'];
        $sel_confirm_senha = $i['confirm_senha'];
        $sel_nome = $i['nome'];
        $sel_cpf = $i['cpf'];
        $sel_telefone = $i['telefone'];
        $sel_email = $i['email'];
    }


    //Salvar formulário no banco de dados
    if(isset($_POST['salvar'])){

        $nome_usuario = $_POST['nome_usuario'];
        $senha = MD5($_POST['senha']);
        $confirm_senha = MD5($_POST['confirm_senha']);
        $nome = $_POST['nome'];
        $cpf = $_POST['cpf'];
        $telefone = $_POST['telefone'];
        $email = $_POST['email'];


        include "conexao.php";
        $sql_edit = "UPDATE tb_usuario SET
            nome_usuario = ?,
            senha = ?,
            confirm_senha = ?,
            nome = ?,
            cpf = ?,
            telefone = ?,
            email = ?
            WHERE id_usuario = ?";
        $edit = $conn -> prepare($sql_edit);
        $edit -> execute(array($nome_usuario,$senha,$confirm_senha,$nome,$cpf,$telefone,$email,$id_get));
        $conn = null;

        echo "
            <script>
                alert('O usuário foi alterado com sucesso!');
                window.location.href='listar_cliente.php';
            </script>
        ";
    }

?>




<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--BOOTSTRAP CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Editar Cliente - SóCaranga</title>
</head>
<body>
    <p align='center'><?php include 'menu.php'; ?></p>

    <div class="container">
        <h2>Editar Cliente</h2>
        <p><?php  echo ''; ?></p>
        <br>
        <p align='center'><b><?php echo "Editando Usuário: [$id_get]$sel_nome_usuario" ?></b></p>
        <br>
        <form action="" method="POST" align='center'>
            Nome do Usuário:
            <input type="text" name="nome_usuario" value= "<?php echo $sel_nome_usuario; ?>">
            <br>
            <br>
            Senha:
            <input type="password" name="senha">
            <br>
            <br>
            Confirmar Senha:
            <input type="password" name="confirm_senha">
            <br>
            <br>
            Nome Completo:
            <input type="text" name="nome" value= "<?php echo $sel_nome; ?>">
            <br>
            <br>
            CPF:
            <input type="text" name="cpf" value= "<?php echo $sel_cpf; ?>">
            <br>
            <br>
            Telefone:
            <input type="text" name="telefone" value= "<?php echo $sel_telefone; ?>">
            <br>
            <br>
            E-Mail:
            <input type="text" name="email" value= "<?php echo $sel_email; ?>">
            <br>
            <br>
            <input type="submit" value="Salvar" name="salvar">
            <input type="button" value="Voltar" onClick="window.history.back();">
        
        </form>
    </div>
</body>
</html>