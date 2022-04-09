<?php
    session_start();

    if(isset($_POST['sim'])){
        session_destroy();  
    
    echo "<script>window.location = 'index.html'</script>";
    }
  
?>
<strong> <p align='center'>Tem certeza  que deseja deslogar? <p></strong>
<form action='' method='POST' align='center'>
		<input type='submit' value='Sim' name='sim'>
		<input type='button' value='não' onclick='window.history.back();'>
</form>


	