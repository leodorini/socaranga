<?php
    require("conexao.php");
 session_start();
 echo  $_POST["usuario"];
 echo $_POST["password"];
    if(isset($_POST["usuario"]) && isset($_POST["password"]) && $conn != null){
        $query = $conn->prepare("SELECT * FROM tb_usuario WHERE nome = ? AND senha = ?");
        $query->execute(array($_POST["usuario"], md5($_POST["password"])));
        $user = $query->fetchAll(PDO::FETCH_ASSOC)[0];
       
       $cont= $query->rowCount();
       echo $cont;
        if($cont == 1){
           

           
            $_SESSION["usuario"] = array($user["nome"], $user["perfil"]);
echo "logado ". $_SESSION["usuario"][0];

            echo "<script>window.location = 'initialPage.php'</script>";
        }else{
            echo "erro". $_POST["usuario"];
            echo "<script>window.location = 'index.html'</script>";
        }
    }else{
        echo "usuario e senha invalido";
       
        echo "<script>window.location = 'index.html'</script>";
    }
?>