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

    
    <title>Home - SóCaranga</title>
</head>
<body>

    <p align='center'><?php include 'menu.php'; ?></p>
        <div id="carouselHome" class="carousel slide" data-bs-ride="carousel" align='center'>
            <div class="carousel-inner">
                <div class="carousel-item active">
                <img src="https://exame.com/wp-content/uploads/2020/06/concessionaria-veiculos-1.jpg" alt="pc1" id="img_slide">
                </div>
                <div class="carousel-item">
                <img src="https://revistacarro.com.br/wp-content/uploads/2020/06/concession%C3%A1ria-ford.jpg" alt="pc2" id="img_slide">
                </div>
                <div class="carousel-item">
                <img src="https://blog.tnh1.com.br/pajucaraauto/wp-content/uploads/2018/11/ITA_9223.jpg" alt="pc3" id="img_slide">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselHome" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselHome" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

</body>
</html>