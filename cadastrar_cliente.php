<!DOCTYPE html>

<?php
    if(isset($_POST['salvar'])){
        $nome_usuario = $_POST['nome_usuario'];
        $senha = MD5($_POST['senha']);
        $confirm_senha = MD5($_POST['confirm_senha']);
        $nome = $_POST['nome'];
        $cpf = $_POST['cpf'];
        $telefone = $_POST['telefone'];
        $email = $_POST['email'];

        include 'conexao.php';
        $sql = 'INSERT INTO tb_usuario(nome_usuario,senha,confirm_senha,nome,cpf,telefone,email) 
            VALUES (?,?,?,?,?,?,?)';
        $cad = $conn -> prepare($sql);
        $cad -> execute(array($nome_usuario,$senha,$confirm_senha,$nome,$cpf,$telefone,$email));
        $conn = null;
        
        echo '
            <script>
                alert("O usuário foi cadastrado com sucesso");
                window.location.href="listar_cliente.php";
            </script>
        ';
    }

?>


<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--BOOTSTRAP CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Cadastrar Cliente - SóCaranga</title>
</head>
<body>
    <p align='center'><?php include 'menu.php'; ?></p>
    <div class="container">
        <h2>Cadastro de Cliente</h2>
        <br>
        <form action="" method="POST" align='center'>
            Nome do Usuário:
            <input type="text" name="nome_usuario">
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
            <input type="text" name="nome">
            <br>
            <br>
            CPF:
            <input type="text" name="cpf">
            <br>
            <br>
            Telefone:
            <input type="text" placeholder="(XX)0000-0000" name="telefone">
            <br>
            <br>
            E-Mail:
            <input type="email" placeholder="email@exemplo.com" name="email">
            <br>
            <br>
            <input type="submit" value="Salvar" name="salvar">
            <input type="button" value="Voltar" onClick="window.history.back();">
        
        </form>
    </div>
</body>
</html>