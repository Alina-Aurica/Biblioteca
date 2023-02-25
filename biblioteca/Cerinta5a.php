<html>
<style>
	body {
		background-image:url("books3.jpg");
		background-repeat:no-repeat;
		background-attachment:fixed;
		background-size:cover;
	}
	h1 {
		color:white;
		text-align:center;
		font-size:30px;
	}
	table, th, td {
		border: 2px solid white;
	}
	tr {
		color: white;
		text-align:center;
	}
	.BACK {
            font-size:15px;
			background-color:transparent;
			color: white;
			transition-duration:1s;
			text-align:center;
			border-color: transparent;
			border-radius:50px 50px 50px 50px;
			height:50px;
			width:75px;
    }
	.BACK:hover {
		background-color:#FF5722;
		color:white;
    }
	.MAIN {
            font-size:15px;
			background-color:transparent;
			color: white;
			transition-duration:1s;
			text-align:center;
			border-color: transparent;
			border-radius:50px 50px 50px 50px;
			height:50px;
			width:75px;
    }
	.MAIN:hover {
		background-color:#FF5722;
		color:white;
    }
	.NEXT {
            font-size:15px;
			background-color:transparent;
			color: white;
			transition-duration:1s;
			text-align:center;
			border-color: transparent;
			border-radius:50px 50px 50px 50px;
			height:50px;
			width:75px;
    }
	.NEXT:hover {
		background-color:#FF5722;
		color:white;
    }
</style>
	
    <head>
        <title>Cerinta 5.a)</title>
    </head>
    <body>
        <h1>5.a) Să se găsească detaliile cărților care au genul cărții cu titlul ’India’.</h1>
        <?php
			$titlu=$_POST['titlu'];
			$titlu= trim($titlu);
			if (!$titlu)
			{
			  echo 'Nu ati introdus criteriul de cautare. Va rog sa incercati din nou.';
			  exit;
			}
			if (!get_magic_quotes_gpc())
			{
			  $titlu = addslashes($titlu);
			}
            // se precizează că se foloseşte PEAR DB
            require_once('PEAR.php');
			$host = 'localhost';
            $user = 'alina';
			$pass = 'anaaremere';
            $db_name = 'biblioteca';
            // se stabileşte şirul pentru conexiune universală sau DSN
			$dsn= new mysqli($host, $user, $pass, $db_name);
            // conectare la BD
            if ($dsn->connect_error)
			{
				die('Eroare la conectare:'. $dsn->connect_error);
			}
            // se emite interogarea
            $query = "SELECT * FROM carte c1 WHERE c1.gen IN (SELECT c2.gen FROM carte c2 WHERE c2.titlu LIKE '%".$titlu."%') AND c1.titlu NOT LIKE '%".$titlu."%' ORDER BY gen";
            $result = mysqli_query($dsn, $query);
            // verifică dacă rezultatul este în regulă
            if (!$result)
            {
				die('Interogare gresita :'.mysqli_error($dsn));
            }
            // se obţine numărul tuplelor returnate
            $num_results = mysqli_num_rows($result);
            // se afişează fiecare tuplă returnată
			echo '<table style = "width:100%;">
			<tr>
			 <th>ID_CARTE</th>
			 <th>TITLU</th>
			 <th>NR_PAGINI</th>
			 <th>NR_EXEMPLARE</th>
			 <th>GEN</th>
			</tr>';
			for ($i=0; $i <$num_results; $i++)
			{
				$row = mysqli_fetch_assoc($result);
				echo '<tr><td>'.stripslashes($row['id_carte']).'</td>';
				echo '<td>'.htmlspecialchars(stripslashes($row['titlu'])).'</td>';
				echo '<td>'.stripslashes($row['nr_pagini']).'</td>';
				echo '<td>'.stripslashes($row['nr_exemplare']).'</td>';
				echo '<td>'.stripslashes($row['gen']).'</td>';
			}
			echo '</table>';
            // deconectarea de la BD
            mysqli_close($dsn);
            ?>
    </body>
<p align = "center">
<button class="BACK"
	onclick="history.back()">BACK
    </button>

<button class="MAIN" 
    onclick="window.location.href = 'http://127.0.0.1/biblioteca/index.html';">MAIN
    </button>
	
<button class="NEXT" 	
	onclick="window.location.href = 'http://127.0.0.1/biblioteca/Cerinta5b.php';">NEXT
	</button>
</p>
</html>