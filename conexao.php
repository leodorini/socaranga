
<?php
	try{
	//000webhost
	//
	//Banco: dbconce
	//Admim: admin
	//Senha: [(Sw|kBk18FykgrM
	//

		//LOCAL
		$conn = new PDO('mysql:host=localhost;dbname=bdconce','root','');
		
		//WEBSITE
		//https://concessionaria-socaranga.000webhostapp.com/
		//$conn = new PDO('mysql:host=localhost;dbname=id18047533_dbconce','id18047533_admin','[(Sw|kBk18FykgrM');
		
		
		//echo 'Conexão realizada com sucesso!';
	}
	catch(PDOException $e){
		echo $e->getMessage();
	}
?>