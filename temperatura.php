<!doctype html>
<?php
  include 'conexao.php';
  $sql = 'SELECT * FROM tb_temperatura';
  $sensor = $conn -> prepare($sql);
  $sensor -> execute();
  $conn = null;
// conexao
?> 
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--BOOTSTRAP CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <title>Temperaturas - SóCaranga</title>
</head>
<body>
    <p align='center'><?php include "menu.php";?></p>
</html>


<!--parte do google chart-->
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['data_hora', 'temp', 'umi'],

          <?php
       foreach($sensor as $d){
          $data_hora = $d ['data_hora'];
          $temp= $d['temp'];
          $umi = $d['umi'];
          echo "['".$data_hora."', ".$temp.", ".$umi."],";
       }

?>  ]); //não apagar 

        var options = {
          title: 'Temperatura e Umidade do Ar',
          curveType: 'function',
          legend: { position: 'right' }

        };

        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

        chart.draw(data, options);
      }

      </script>
  </head>
  <body>
    <div id="curve_chart" style="width: 900px; height: 500px"></div>
  </body>
</html>
