<!DOCTYPE html>
<html lang="pt-br">
<head>
    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--BOOTSTRAP CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!--JS Bundle-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

    
    <title>Mapa - SóCaranga</title>
</head>
<body>

    <p align='center'><?php include 'menu.php'; ?></p>

    <center><img src="mapa.png" alt="mapa_parana" usemap="#mapa_conce"></center>
    <map name="mapa_conce">
        <area shape="circle" coords="951,419,30" href="listar_carro.php?id_conce=1" alt="">
        <area shape="circle" coords="658,170,30" href="listar_carro.php?id_conce=2" alt="">
        <area shape="circle" coords="361,359,30" href="listar_carro.php?id_conce=3" alt="">
    </map>

</body>
</html>