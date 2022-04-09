<!DOCTYPE html>

<?php
session_start(); 

    include 'conexao.php';
    $sql = 'SELECT * FROM tb_usuario';
    $usuarios = $conn -> prepare($sql);
    $usuarios -> execute();
    $conn = null;
?>


<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--BOOTSTRAP CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <title>Clientes - SóCaranga</title>
</head>
<body>
    <p align='center'><?php include "menu.php";?></p>

    

    <div class="container">
        <div class="row">
            <div class="col">
                <h2>Lista de Usuários</h2>
            </div>
            <div class="col" align='right'>
                <a href="cadastrar_cliente.php">
                    <button type="button" class="btn btn-labeled btn-success">
                    <span class="btn-label"><i class="fa fa-check"></i></span> Adicionar Cliente</button>
                </a>
            </div>
        </div>

        
        <table align='center' border=1 class="table table-striped table-hover table-bordered">
            <th>ID</th>
            <th>Usuário</th>
            <th>Nome</th>
            <!--<th>CPF</th>-->
            <th>Telefone</th>
            <th>E-Mail</th>
            <th>OP</th>
        
            <?php
            foreach($usuarios AS $u){
                $id_usuario = $u['id_usuario'];
                $nome_usuario = $u['nome_usuario'];
                //$senha = $u['senha'];
                //$confirm_senha = $u['confirm_senha'];
                $nome = $u['nome'];
                $cpf = $u['cpf'];
                $telefone = $u['telefone'];
                $email = $u['email'];

                $editar = "<a href='editar_cliente.php?id_editar=$id_usuario'><input type='button' value='Editar'></a>";
                $excluir = "<a href='excluir_cliente.php?id_excluir=$id_usuario&nome_excluir=$nome_usuario'><input type='button' value='Excluir'></a>";

                echo "
                    <tr>
                        <td>$id_usuario</td>
                        <td>$nome_usuario</td>
                        <td>$nome</td>
                        
                        <td>$telefone</td>
                        <td>$email</td>
                        <td>$editar$excluir</td>
                    </tr>
                ";
            }
            ?>
        </table>
    </div>
</body>
</html>